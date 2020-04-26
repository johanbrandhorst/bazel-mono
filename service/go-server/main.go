package main

import (
	"context"
	"errors"
	"flag"
	"fmt"
	"net"
	"net/http"
	"net/url"
	"time"

	"github.com/fullstorydev/grpcui/standalone"
	"github.com/sirupsen/logrus"
	"github.com/soheilhy/cmux"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"

	pbUsers "github.com/johanbrandhorst/bazel-mono/gen/go/myorg/users/v1"
	"github.com/johanbrandhorst/bazel-mono/service/go-server/users"
)

type pgURL url.URL

func (p *pgURL) Set(in string) error {
	u, err := url.Parse(in)
	if err != nil {
		return err
	}

	switch u.Scheme {
	case "psql", "postgresql", "postgres":
	default:
		return errors.New("unexpected scheme in URL")
	}

	*p = pgURL(*u)
	return nil
}

func (p pgURL) String() string {
	return (*url.URL)(&p).String()
}

var (
	port = flag.Int("port", 10000, "The server port")
	u    pgURL
)

func main() {
	flag.Var(&u, "postgres-url", "URL formatted address of the postgres server to connect to")
	flag.Parse()

	log := logrus.New()
	log.Formatter = &logrus.TextFormatter{
		TimestampFormat: time.StampMilli,
		FullTimestamp:   true,
	}

	if u.String() == "" {
		log.Fatal("Flag postgres-url is required")
	}

	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		log.WithError(err).Fatal("Failed to listen")
	}

	mux := cmux.New(lis)
	grpcL := mux.MatchWithWriters(cmux.HTTP2MatchHeaderFieldSendSettings("content-type", "application/grpc"))
	httpL := mux.Match(cmux.Any())

	go func() {
		sErr := mux.Serve()
		if sErr != nil {
			log.WithError(err).Fatal("Failed to serve cmux")
		}
	}()

	s := grpc.NewServer()
	reflection.Register(s)

	dir, err := users.NewDirectory(log, (*url.URL)(&u))
	if err != nil {
		log.WithError(err).Fatal("Failed to create user directory")
	}
	pbUsers.RegisterUserServiceServer(s, dir)

	// Serve gRPC Server
	go func() {
		log.Info("Serving gRPC on ", grpcL.Addr().String())
		sErr := s.Serve(grpcL)
		if sErr != nil {
			log.WithError(err).Fatal("Failed to serve gRPC")
		}
	}()

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	sAddr := fmt.Sprintf("dns:///localhost:%d", *port)
	cc, err := grpc.DialContext(
		ctx,
		sAddr,
		grpc.WithBlock(),
		grpc.WithInsecure(),
	)
	if err != nil {
		log.WithError(err).Fatal("Failed to dial local server")
	}
	defer cc.Close()

	handler, err := standalone.HandlerViaReflection(ctx, cc, sAddr)
	if err != nil {
		log.WithError(err).Fatal("Failed to create grpc UI handler")
	}

	httpS := &http.Server{
		Handler: handler,
	}

	// Serve HTTP Server
	log.Info("Serving Web UI on http://localhost:", *port)
	err = httpS.Serve(httpL)
	if err != http.ErrServerClosed {
		log.WithError(err).Fatal("Failed to serve Web UI")
	}
}
