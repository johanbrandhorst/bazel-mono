package users

import (
	"database/sql"

	"github.com/Masterminds/squirrel"
	migrate "github.com/golang-migrate/migrate/v4"
	"github.com/golang-migrate/migrate/v4/database/postgres"
	bindata "github.com/golang-migrate/migrate/v4/source/go_bindata"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/johanbrandhorst/bazel-mono/cmd/go-server/users/migrations"
	pbUsers "github.com/johanbrandhorst/bazel-mono/proto/myorg/users/v1"
)

// version defines the current migration version. This ensures the app
// is always compatible with the version of the database.
const version = 1

// Migrate migrates the Postgres schema to the current version.
func validateSchema(db *sql.DB) error {
	sourceInstance, err := bindata.WithInstance(bindata.Resource(migrations.AssetNames(), migrations.Asset))
	if err != nil {
		return err
	}
	targetInstance, err := postgres.WithInstance(db, new(postgres.Config))
	if err != nil {
		return err
	}
	m, err := migrate.NewWithInstance("go-bindata", sourceInstance, "postgres", targetInstance)
	if err != nil {
		return err
	}
	err = m.Migrate(version) // current version
	if err != nil && err != migrate.ErrNoChange {
		return err
	}
	return sourceInstance.Close()
}

func scanUser(row squirrel.RowScanner) (*pbUsers.User, error) {
	var user pbUsers.User
	user.CreateTime = new(timestamppb.Timestamp)
	err := row.Scan(
		&user.Id,
		(*roleWrapper)(&user.Role),
		(*timeWrapper)(user.CreateTime),
	)
	if err != nil {
		if err == sql.ErrNoRows {
			return nil, status.Error(codes.NotFound, "no such user")
		}

		return nil, err
	}

	return &user, nil
}
