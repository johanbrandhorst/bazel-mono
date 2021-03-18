package users

import (
	"database/sql/driver"
	"fmt"

	"github.com/jackc/pgtype"
	"google.golang.org/protobuf/types/known/durationpb"
	"google.golang.org/protobuf/types/known/timestamppb"

	pbUsers "github.com/johanbrandhorst/bazel-mono/proto/myorg/users/v1"
)

type roleWrapper pbUsers.Role

// Value implements database/sql/driver.Valuer for pbUsers.Role
func (rw roleWrapper) Value() (driver.Value, error) {
	switch pbUsers.Role(rw) {
	case pbUsers.Role_ROLE_GUEST:
		return "guest", nil
	case pbUsers.Role_ROLE_MEMBER:
		return "member", nil
	case pbUsers.Role_ROLE_ADMIN:
		return "admin", nil
	default:
		return nil, fmt.Errorf("invalid Role: %q", rw)
	}
}

// Scan implements database/sql/driver.Scanner for pbUsers.Role
func (rw *roleWrapper) Scan(in interface{}) error {
	switch in.(string) {
	case "guest":
		*rw = roleWrapper(pbUsers.Role_ROLE_GUEST)
		return nil
	case "member":
		*rw = roleWrapper(pbUsers.Role_ROLE_MEMBER)
		return nil
	case "admin":
		*rw = roleWrapper(pbUsers.Role_ROLE_ADMIN)
		return nil
	default:
		return fmt.Errorf("invalid Role: %q", in.(string))
	}
}

type timeWrapper timestamppb.Timestamp

// Value implements database/sql/driver.Valuer for timestamppb.Timestamp
func (tw *timeWrapper) Value() (driver.Value, error) {
	return (*timestamppb.Timestamp)(tw).AsTime(), nil
}

// Scan implements database/sql/driver.Scanner for timestamppb.Timestamp
func (tw *timeWrapper) Scan(in interface{}) error {
	var t pgtype.Timestamptz
	err := t.Scan(in)
	if err != nil {
		return err
	}

	*tw = timeWrapper(timestamppb.Timestamp{
		Seconds: t.Time.Unix(),
		Nanos:   int32(t.Time.Nanosecond()),
	})

	return nil
}

type durationWrapper durationpb.Duration

// Value implements database/sql/driver.Valuer for durationpb.Duration
func (dw *durationWrapper) Value() (driver.Value, error) {
	d := (*durationpb.Duration)(dw).AsDuration()
	i := pgtype.Interval{
		Microseconds: int64(d) / 1000,
		Status:       pgtype.Present,
	}

	return i.Value()
}
