# bazel-mono
Playing around with using Bazel for CI

## Prerequisites

- [Bazelisk](https://github.com/bazelbuild/bazelisk) (install as `bazel`)
- Docker

## Setup

- Run the tests to run all tests and populate the local bazel cache
   ```
   $ bazel test //...
   ```
- Run the symlink script to symlink generated files and fix `gopls` errors
   ```
   $ ./symlinks.sh
   ```
- Symlinks are ignored by git but should be automatically updated if bazel regenerates the source files.
- Run the go proto link bazel script to copy generated protofiles
   ```
   $ bazel query 'kind("proto_link", //...)'  | xargs bazel run
   ```

## Status

Final output should be a docker container pushed to the repo registry.

Working:
 - Go gRPC server
    ```
    $ docker run --rm -d --name postgres -p 5432:5432 -e POSTGRES_HOST_AUTH_METHOD=trust postgres
    $ bazel run //cmd/go-server:go-server.binary -- --postgres-url postgresql://postgres@localhost:5432/postgres?sslmode=disable
    $ bazel run //cmd/go-server:publish
    ```
 - Go gRPC client
    ```
    $ bazel run //cmd/go-client:go-client.binary
    $ bazel run //cmd/go-client:publish
    ```
