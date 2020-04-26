package main

import (
	"context"
	"flag"
	"fmt"
	"io"
	"os"
	"os/signal"
	"syscall"
	"time"

	"github.com/sirupsen/logrus"
	"google.golang.org/grpc"

	pbUsers "github.com/johanbrandhorst/bazel-mono/gen/go/myorg/users/v1"
)

var port = flag.Int("port", 10000, "The server port")

func main() {
	flag.Parse()

	log := logrus.New()
	log.Formatter = &logrus.TextFormatter{
		TimestampFormat: time.StampMilli,
		FullTimestamp:   true,
	}

	ctx, cancel := signalCtx()
	defer cancel()

	sAddr := fmt.Sprintf("dns:///localhost:%d", *port)
	cc, err := grpc.DialContext(
		ctx,
		sAddr,
		grpc.WithBlock(),
		grpc.WithInsecure(),
	)
	if err != nil {
		log.WithError(err).Panic("Failed to dial server")
	}
	defer cc.Close()

	users := pbUsers.NewUserServiceClient(cc)

	log.Print("Adding a user")

	user, err := users.AddUser(ctx, &pbUsers.AddUserRequest{
		Role: pbUsers.Role_ADMIN,
	})

	log.Info("Added: ", user)

	log.Info("Listing users")

	srv, err := users.ListUsers(ctx, new(pbUsers.ListUsersRequest))

	for {
		user, err := srv.Recv()
		if err == io.EOF {
			break
		}
		if err != nil {
			log.WithError(err).Panic("Failed to get user")
		}

		log.Println(user)
	}

	log.Infoln("Deleting a user")

	user, err = users.DeleteUser(ctx, &pbUsers.DeleteUserRequest{
		Id: user.GetId(),
	})

	log.Infoln("Deleted: ", user)

	log.Info("Finished")
}

func signalCtx() (context.Context, context.CancelFunc) {
	ctx, cancel := context.WithCancel(context.Background())
	go func() {
		sCh := make(chan os.Signal, 1)
		signal.Notify(sCh, os.Interrupt, syscall.SIGTERM)
		<-sCh
		cancel()
	}()

	return ctx, cancel
}
