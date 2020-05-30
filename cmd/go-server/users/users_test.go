package users_test

import (
	"context"
	"database/sql"
	"net/url"
	"os"
	"os/signal"
	"syscall"
	"testing"
	"time"

	"github.com/golang/mock/gomock"
	"github.com/golang/protobuf/ptypes"
	"github.com/sirupsen/logrus"
	"github.com/uw-labs/podrick"
	_ "github.com/uw-labs/podrick/runtimes/docker" // register docker runtime
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	logrusadapter "logur.dev/adapter/logrus"

	"github.com/johanbrandhorst/bazel-mono/cmd/go-server/users"
	pbUsers "github.com/johanbrandhorst/bazel-mono/proto/myorg/users/v1"
)

var (
	log *logrus.Logger

	pgURL *url.URL
)

func TestMain(m *testing.M) {
	code := 0
	defer func() {
		os.Exit(code)
	}()
	ctx, cancel := signalCtx()
	defer cancel()

	log = logrus.New()
	log.Formatter = &logrus.TextFormatter{
		TimestampFormat: time.StampMilli,
		FullTimestamp:   true,
		ForceColors:     true,
	}

	ctr, err := podrick.StartContainer(ctx, "postgres", "12-alpine", "5432",
		podrick.WithEnv([]string{
			"POSTGRES_HOST_AUTH_METHOD=trust", // https://github.com/docker-library/postgres/issues/681
		}),
		podrick.WithLivenessCheck(func(address string) error {
			dbURL, err := url.Parse("postgresql://postgres@" + address + "/postgres?sslmode=disable")
			if err != nil {
				return err
			}
			db, err := sql.Open("pgx", dbURL.String())
			if err != nil {
				return err
			}
			defer db.Close()
			return db.Ping()
		}),
		podrick.WithLogger(logrusadapter.New(log)),
	)
	if err != nil {
		log.Println("Failed to start database container", err)
		return
	}
	defer func() {
		err = ctr.Close(context.Background())
		if err != nil {
			log.Println("Failed to stop database container", err)
			return
		}
	}()

	pgURL, err = url.Parse("postgresql://postgres@" + ctr.Address() + "/postgres?sslmode=disable")
	if err != nil {
		log.Println("Failed to parse container address", err)
		return
	}

	code = m.Run()
}

func TestAddDeleteUser(t *testing.T) {
	d, err := users.NewDirectory(log, pgURL)
	if err != nil {
		t.Fatalf("Failed to create a new directory: %s", err)
	}
	defer func() {
		err = d.Close()
		if err != nil {
			t.Errorf("Failed to close directory: %s", err)
		}
	}()

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	t.Run("When deleting an added user", func(t *testing.T) {
		role := pbUsers.Role_ROLE_ADMIN
		addResp, err := d.AddUser(ctx, &pbUsers.AddUserRequest{
			Role: role,
		})
		if err != nil {
			t.Fatalf("Failed to add a user: %s", err)
		}
		user1 := addResp.GetUser()

		if user1.GetRole() != role {
			t.Errorf("Got role %q, wanted role %q", user1.GetRole(), role)
		}
		if user1.GetCreateTime() == nil {
			t.Fatal("CreateTime was not set")
		}

		tm, err := ptypes.Timestamp(user1.GetCreateTime())
		if err != nil {
			t.Fatalf("CreateTime could not be parsed: %s", err)
		}

		s := time.Since(tm)
		if s > time.Second {
			t.Errorf("CreateTime was longer than 1 second ago: %s", s)
		}

		if user1.GetId() == "" {
			t.Error("Id was not set")
		}

		delResp, err := d.DeleteUser(ctx, &pbUsers.DeleteUserRequest{
			Id: user1.GetId(),
		})
		if err != nil {
			t.Fatalf("Failed to delete user: %s", err)
		}

		user2 := delResp.GetUser()

		if user1.GetRole() != user2.GetRole() ||
			user1.GetId() != user2.GetId() ||
			user1.GetCreateTime().GetNanos() != user2.GetCreateTime().GetNanos() ||
			user1.GetCreateTime().GetSeconds() != user2.GetCreateTime().GetSeconds() {
			t.Fatalf("Deleted user differed from created user:\n%#v\n%#v", user1, user2)
		}
	})

	t.Run("When using a non-uuid in DeleteUser", func(t *testing.T) {
		_, err = d.DeleteUser(ctx, &pbUsers.DeleteUserRequest{
			Id: "not_a_UUID",
		})
		if status.Code(err) != codes.InvalidArgument {
			t.Fatalf("Did not get correct error when using non-UUID ID in DeleteUser")
		}
	})
}

func TestListUsers(t *testing.T) {
	d, err := users.NewDirectory(log, pgURL)
	if err != nil {
		t.Fatalf("Failed to create a new directory: %s", err)
	}
	defer func() {
		err = d.Close()
		if err != nil {
			t.Errorf("Failed to close directory: %s", err)
		}
	}()

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	addResp, err := d.AddUser(ctx, &pbUsers.AddUserRequest{
		Role: pbUsers.Role_ROLE_GUEST,
	})
	if err != nil {
		t.Fatalf("Failed to add a user: %s", err)
	}

	user1 := addResp.GetUser()

	// Sleep so we have slightly different create times
	time.Sleep(500 * time.Millisecond)

	addResp, err = d.AddUser(ctx, &pbUsers.AddUserRequest{
		Role: pbUsers.Role_ROLE_MEMBER,
	})
	if err != nil {
		t.Fatalf("Failed to add a user: %s", err)
	}

	user2 := addResp.GetUser()

	// Sleep so we have slightly different create times
	time.Sleep(500 * time.Millisecond)

	addResp, err = d.AddUser(ctx, &pbUsers.AddUserRequest{
		Role: pbUsers.Role_ROLE_ADMIN,
	})
	if err != nil {
		t.Fatalf("Failed to add a user: %s", err)
	}

	user3 := addResp.GetUser()

	t.Run("Returning all users", func(t *testing.T) {
		ctrl := gomock.NewController(t)
		srv := NewMockUserService_ListUsersServer(ctrl)
		srv.EXPECT().Context().Return(ctx)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user1,
		}).Return(nil)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user2,
		}).Return(nil)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user3,
		}).Return(nil)

		err = d.ListUsers(&pbUsers.ListUsersRequest{}, srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}
		ctrl.Finish()
	})

	t.Run("Filtering by age", func(t *testing.T) {
		ctrl := gomock.NewController(t)
		srv := NewMockUserService_ListUsersServer(ctrl)
		srv.EXPECT().Context().Return(ctx)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user1,
		}).Return(nil)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user2,
		}).Return(nil)

		tm, err := ptypes.Timestamp(user2.GetCreateTime())
		if err != nil {
			t.Fatalf("Failed to parse timestamp: %s", err)
		}
		olderThan := time.Since(tm)

		err = d.ListUsers(&pbUsers.ListUsersRequest{
			OlderThan: ptypes.DurationProto(olderThan),
		}, srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}
		ctrl.Finish()
	})

	t.Run("Filtering by create time", func(t *testing.T) {
		ctrl := gomock.NewController(t)
		srv := NewMockUserService_ListUsersServer(ctrl)
		srv.EXPECT().Context().Return(ctx)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user2,
		}).Return(nil)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user3,
		}).Return(nil)

		err = d.ListUsers(&pbUsers.ListUsersRequest{
			CreatedSince: user1.GetCreateTime(),
		}, srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}
		ctrl.Finish()
	})

	t.Run("Filtering by age and create time", func(t *testing.T) {
		ctrl := gomock.NewController(t)
		srv := NewMockUserService_ListUsersServer(ctrl)
		srv.EXPECT().Context().Return(ctx)
		srv.EXPECT().Send(&pbUsers.ListUsersResponse{
			User: user2,
		}).Return(nil)

		tm, err := ptypes.Timestamp(user2.GetCreateTime())
		if err != nil {
			t.Fatalf("Failed to parse timestamp: %s", err)
		}
		olderThan := time.Since(tm)

		err = d.ListUsers(&pbUsers.ListUsersRequest{
			CreatedSince: user1.GetCreateTime(),
			OlderThan:    ptypes.DurationProto(olderThan),
		}, srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}
		ctrl.Finish()
	})
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
