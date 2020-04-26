// Code generated by MockGen. DO NOT EDIT.
// Source: github.com/johanbrandhorst/bazel-mono/gen/go/myorg/users/v1 (interfaces: UserService_ListUsersServer)

// Package users_test is a generated GoMock package.
package users_test

import (
	context "context"
	reflect "reflect"

	gomock "github.com/golang/mock/gomock"
	metadata "google.golang.org/grpc/metadata"

	users "github.com/johanbrandhorst/bazel-mono/gen/go/myorg/users/v1"
)

// MockUserService_ListUsersServer is a mock of UserService_ListUsersServer interface
type MockUserService_ListUsersServer struct {
	ctrl     *gomock.Controller
	recorder *MockUserService_ListUsersServerMockRecorder
}

// MockUserService_ListUsersServerMockRecorder is the mock recorder for MockUserService_ListUsersServer
type MockUserService_ListUsersServerMockRecorder struct {
	mock *MockUserService_ListUsersServer
}

// NewMockUserService_ListUsersServer creates a new mock instance
func NewMockUserService_ListUsersServer(ctrl *gomock.Controller) *MockUserService_ListUsersServer {
	mock := &MockUserService_ListUsersServer{ctrl: ctrl}
	mock.recorder = &MockUserService_ListUsersServerMockRecorder{mock}
	return mock
}

// EXPECT returns an object that allows the caller to indicate expected use
func (m *MockUserService_ListUsersServer) EXPECT() *MockUserService_ListUsersServerMockRecorder {
	return m.recorder
}

// Context mocks base method
func (m *MockUserService_ListUsersServer) Context() context.Context {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Context")
	ret0, _ := ret[0].(context.Context)
	return ret0
}

// Context indicates an expected call of Context
func (mr *MockUserService_ListUsersServerMockRecorder) Context() *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Context", reflect.TypeOf((*MockUserService_ListUsersServer)(nil).Context))
}

// RecvMsg mocks base method
func (m *MockUserService_ListUsersServer) RecvMsg(arg0 interface{}) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "RecvMsg", arg0)
	ret0, _ := ret[0].(error)
	return ret0
}

// RecvMsg indicates an expected call of RecvMsg
func (mr *MockUserService_ListUsersServerMockRecorder) RecvMsg(arg0 interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "RecvMsg", reflect.TypeOf((*MockUserService_ListUsersServer)(nil).RecvMsg), arg0)
}

// Send mocks base method
func (m *MockUserService_ListUsersServer) Send(arg0 *users.User) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "Send", arg0)
	ret0, _ := ret[0].(error)
	return ret0
}

// Send indicates an expected call of Send
func (mr *MockUserService_ListUsersServerMockRecorder) Send(arg0 interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "Send", reflect.TypeOf((*MockUserService_ListUsersServer)(nil).Send), arg0)
}

// SendHeader mocks base method
func (m *MockUserService_ListUsersServer) SendHeader(arg0 metadata.MD) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "SendHeader", arg0)
	ret0, _ := ret[0].(error)
	return ret0
}

// SendHeader indicates an expected call of SendHeader
func (mr *MockUserService_ListUsersServerMockRecorder) SendHeader(arg0 interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "SendHeader", reflect.TypeOf((*MockUserService_ListUsersServer)(nil).SendHeader), arg0)
}

// SendMsg mocks base method
func (m *MockUserService_ListUsersServer) SendMsg(arg0 interface{}) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "SendMsg", arg0)
	ret0, _ := ret[0].(error)
	return ret0
}

// SendMsg indicates an expected call of SendMsg
func (mr *MockUserService_ListUsersServerMockRecorder) SendMsg(arg0 interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "SendMsg", reflect.TypeOf((*MockUserService_ListUsersServer)(nil).SendMsg), arg0)
}

// SetHeader mocks base method
func (m *MockUserService_ListUsersServer) SetHeader(arg0 metadata.MD) error {
	m.ctrl.T.Helper()
	ret := m.ctrl.Call(m, "SetHeader", arg0)
	ret0, _ := ret[0].(error)
	return ret0
}

// SetHeader indicates an expected call of SetHeader
func (mr *MockUserService_ListUsersServerMockRecorder) SetHeader(arg0 interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "SetHeader", reflect.TypeOf((*MockUserService_ListUsersServer)(nil).SetHeader), arg0)
}

// SetTrailer mocks base method
func (m *MockUserService_ListUsersServer) SetTrailer(arg0 metadata.MD) {
	m.ctrl.T.Helper()
	m.ctrl.Call(m, "SetTrailer", arg0)
}

// SetTrailer indicates an expected call of SetTrailer
func (mr *MockUserService_ListUsersServerMockRecorder) SetTrailer(arg0 interface{}) *gomock.Call {
	mr.mock.ctrl.T.Helper()
	return mr.mock.ctrl.RecordCallWithMethodType(mr.mock, "SetTrailer", reflect.TypeOf((*MockUserService_ListUsersServer)(nil).SetTrailer), arg0)
}
