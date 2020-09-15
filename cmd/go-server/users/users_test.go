package users_test

import (
	"context"
	"database/sql"
	"net"
	"net/url"
	"runtime"
	"testing"
	"time"

	"github.com/google/go-cmp/cmp"
	"github.com/ory/dockertest/v3"
	"github.com/ory/dockertest/v3/docker"
	"github.com/sirupsen/logrus"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/testing/protocmp"
	"google.golang.org/protobuf/types/known/durationpb"

	"github.com/johanbrandhorst/bazel-mono/cmd/go-server/users"
	userspb "github.com/johanbrandhorst/bazel-mono/proto/myorg/users/v1"
)

func startDatabase(tb testing.TB, log *logrus.Logger) *url.URL {
	tb.Helper()

	pgURL := &url.URL{
		Scheme: "postgres",
		User:   url.UserPassword("myuser", "mypass"),
		Path:   "mydatabase",
	}
	q := pgURL.Query()
	q.Add("sslmode", "disable")
	pgURL.RawQuery = q.Encode()

	pool, err := dockertest.NewPool("")
	if err != nil {
		tb.Fatalf("Could not connect to docker: %v", err)
	}

	pw, _ := pgURL.User.Password()
	env := []string{
		"POSTGRES_USER=" + pgURL.User.Username(),
		"POSTGRES_PASSWORD=" + pw,
		"POSTGRES_DB=" + pgURL.Path,
	}

	resource, err := pool.Run("postgres", "13-alpine", env)
	if err != nil {
		tb.Fatalf("Could not start postgres container: %v", err)
	}
	tb.Cleanup(func() {
		err = pool.Purge(resource)
		if err != nil {
			tb.Fatalf("Could not purge container: %v", err)
		}
	})

	pgURL.Host = resource.Container.NetworkSettings.IPAddress

	// Docker layer network is different on Mac
	if runtime.GOOS == "darwin" {
		pgURL.Host = net.JoinHostPort(resource.GetBoundIP("5432/tcp"), resource.GetPort("5432/tcp"))
	}

	logWaiter, err := pool.Client.AttachToContainerNonBlocking(docker.AttachToContainerOptions{
		Container:    resource.Container.ID,
		OutputStream: log.Writer(),
		ErrorStream:  log.Writer(),
		Stderr:       true,
		Stdout:       true,
		Stream:       true,
	})
	if err != nil {
		tb.Fatalf("Could not connect to postgres container log output: %v", err)
	}

	tb.Cleanup(func() {
		err = logWaiter.Close()
		if err != nil {
			tb.Fatalf("Could not close container log: %v", err)
		}
		err = logWaiter.Wait()
		if err != nil {
			tb.Fatalf("Could not wait for container log to close: %v", err)
		}
	})

	pool.MaxWait = 10 * time.Second
	err = pool.Retry(func() (err error) {
		db, err := sql.Open("pgx", pgURL.String())
		if err != nil {
			return err
		}
		defer func() {
			cerr := db.Close()
			if err == nil {
				err = cerr
			}
		}()

		return db.Ping()
	})
	if err != nil {
		tb.Fatalf("Could not connect to postgres container: %v", err)
	}

	return pgURL
}

func TestAddDeleteUser(t *testing.T) {
	t.Parallel()

	log := logrus.New()
	d, err := users.NewDirectory(log, startDatabase(t, log))
	if err != nil {
		t.Fatalf("Failed to create a new directory: %s", err)
	}
	t.Cleanup(func() {
		err = d.Close()
		if err != nil {
			t.Errorf("Failed to close directory: %s", err)
		}
	})

	ctx, cancel := context.WithCancel(context.Background())
	t.Cleanup(cancel)

	t.Run("When deleting an added user", func(t *testing.T) {
		t.Parallel()

		role := userspb.Role_ROLE_ADMIN
		resp, err := d.AddUser(ctx, &userspb.AddUserRequest{
			Role: role,
		})
		if err != nil {
			t.Fatalf("Failed to add a user: %s", err)
		}

		user1 := resp.GetUser()

		if user1.GetRole() != role {
			t.Errorf("Got role %q, wanted role %q", user1.GetRole(), role)
		}
		if user1.GetCreateTime() == nil {
			t.Fatal("CreateTime was not set")
		}

		s := time.Since(user1.CreateTime.AsTime())
		if s > time.Second {
			t.Errorf("CreateTime was longer than 1 second ago: %s", s)
		}

		if user1.GetId() == "" {
			t.Error("Id was not set")
		}

		deleteResp, err := d.DeleteUser(ctx, &userspb.DeleteUserRequest{
			Id: user1.GetId(),
		})
		if err != nil {
			t.Fatalf("Failed to delete user: %s", err)
		}

		if diff := cmp.Diff(user1, deleteResp.GetUser(), protocmp.Transform()); diff != "" {
			t.Fatalf("Deleted user differed from created user:\n%s", diff)
		}
	})

	t.Run("When using a non-uuid in DeleteUser", func(t *testing.T) {
		t.Parallel()

		_, err = d.DeleteUser(ctx, &userspb.DeleteUserRequest{
			Id: "not_a_UUID",
		})
		if status.Code(err) != codes.InvalidArgument {
			t.Fatalf("Did not get correct error when using non-UUID ID in DeleteUser")
		}
	})
}

func TestListUsers(t *testing.T) {
	t.Parallel()

	log := logrus.New()
	d, err := users.NewDirectory(log, startDatabase(t, log))
	if err != nil {
		t.Fatalf("Failed to create a new directory: %s", err)
	}
	t.Cleanup(func() {
		err = d.Close()
		if err != nil {
			t.Errorf("Failed to close directory: %s", err)
		}
	})

	ctx, cancel := context.WithCancel(context.Background())
	t.Cleanup(cancel)

	resp, err := d.AddUser(ctx, &userspb.AddUserRequest{
		Role: userspb.Role_ROLE_GUEST,
	})
	if err != nil {
		t.Fatalf("Failed to add a user: %s", err)
	}
	user1 := resp.GetUser()

	// Sleep so we have slightly different create times
	time.Sleep(500 * time.Millisecond)

	resp, err = d.AddUser(ctx, &userspb.AddUserRequest{
		Role: userspb.Role_ROLE_MEMBER,
	})
	if err != nil {
		t.Fatalf("Failed to add a user: %s", err)
	}
	user2 := resp.GetUser()

	// Sleep so we have slightly different create times
	time.Sleep(500 * time.Millisecond)

	resp, err = d.AddUser(ctx, &userspb.AddUserRequest{
		Role: userspb.Role_ROLE_ADMIN,
	})
	if err != nil {
		t.Fatalf("Failed to add a user: %s", err)
	}
	user3 := resp.GetUser()

	t.Run("Returning all users", func(t *testing.T) {
		t.Parallel()

		srv := &listUsersSrvFake{
			ctx: ctx,
		}

		err := d.ListUsers(new(userspb.ListUsersRequest), srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}

		if len(srv.resps) != 3 {
			t.Fatal("Did not receive 3 users as expected")
		}
		if diff := cmp.Diff(srv.resps[0].GetUser(), user1, protocmp.Transform()); diff != "" {
			t.Errorf("First user didn't match user1: %s", diff)
		}
		if diff := cmp.Diff(srv.resps[1].GetUser(), user2, protocmp.Transform()); diff != "" {
			t.Errorf("Second user didn't match user2: %s", diff)
		}
		if diff := cmp.Diff(srv.resps[2].GetUser(), user3, protocmp.Transform()); diff != "" {
			t.Errorf("Third user didn't match user3: %s", diff)
		}
	})

	t.Run("Filtering by age", func(t *testing.T) {
		t.Parallel()

		srv := &listUsersSrvFake{
			ctx: ctx,
		}

		olderThan := time.Since(user2.GetCreateTime().AsTime())

		err := d.ListUsers(&userspb.ListUsersRequest{
			OlderThan: durationpb.New(olderThan),
		}, srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}

		if len(srv.resps) != 2 {
			t.Fatal("Did not receive 2 users as expected")
		}
		if diff := cmp.Diff(srv.resps[0].GetUser(), user1, protocmp.Transform()); diff != "" {
			t.Errorf("First user didn't match user1: %s", diff)
		}
		if diff := cmp.Diff(srv.resps[1].GetUser(), user2, protocmp.Transform()); diff != "" {
			t.Errorf("Second user didn't match user2: %s", diff)
		}
	})

	t.Run("Filtering by create time", func(t *testing.T) {
		t.Parallel()

		srv := &listUsersSrvFake{
			ctx: ctx,
		}

		err := d.ListUsers(&userspb.ListUsersRequest{
			CreatedSince: user1.GetCreateTime(),
		}, srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}

		if len(srv.resps) != 2 {
			t.Fatal("Did not receive 2 users as expected")
		}
		if diff := cmp.Diff(srv.resps[0].GetUser(), user2, protocmp.Transform()); diff != "" {
			t.Errorf("First user didn't match user2: %s", diff)
		}
		if diff := cmp.Diff(srv.resps[1].GetUser(), user3, protocmp.Transform()); diff != "" {
			t.Errorf("Second user didn't match user3: %s", diff)
		}
	})

	t.Run("Filtering by age and create time", func(t *testing.T) {
		t.Parallel()

		srv := &listUsersSrvFake{
			ctx: ctx,
		}

		olderThan := time.Since(user2.GetCreateTime().AsTime())

		err := d.ListUsers(&userspb.ListUsersRequest{
			CreatedSince: user1.GetCreateTime(),
			OlderThan:    durationpb.New(olderThan),
		}, srv)
		if err != nil {
			t.Fatalf("Failed to list users: %s", err)
		}
		if len(srv.resps) != 1 {
			t.Fatal("Did not receive 2 users as expected")
		}
		if diff := cmp.Diff(srv.resps[0].GetUser(), user2, protocmp.Transform()); diff != "" {
			t.Errorf("First user didn't match user2: %s", diff)
		}
	})
}

type listUsersSrvFake struct {
	grpc.ServerStream
	ctx   context.Context
	resps []*userspb.ListUsersResponse
}

func (l *listUsersSrvFake) Send(resp *userspb.ListUsersResponse) error {
	l.resps = append(l.resps, resp)
	return nil
}

// Context returns the context for this stream.
func (l *listUsersSrvFake) Context() context.Context {
	return l.ctx
}
