#!/usr/bin/env python3


import grpc

from ...gen.myorg.users.v1.users_pb2_grpc import UserServiceStub
from ...gen.myorg.users.v1.users_pb2 import *

def main():
    with grpc.insecure_channel('localhost:10000') as channel:
        stub = users_pb2_grpc.UserServiceStub(channel)
        req = users_pb2.ListUsersRequest()
        for user in stub.ListUsers(req):
            print(user)



if __name__ == "__main__":
    main()
