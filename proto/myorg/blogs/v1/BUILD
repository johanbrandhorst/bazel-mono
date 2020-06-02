load("@rules_proto//proto:defs.bzl", "proto_library")
load("@io_bazel_rules_go//go:def.bzl", "go_library")
load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")

proto_library(
    name = "blogs_proto",
    srcs = ["blogs.proto"],
    import_prefix = "github.com/johanbrandhorst/bazel-mono/proto",
    strip_import_prefix = "/proto",
    visibility = ["//visibility:public"],
    deps = ["//myorg/users/v1:v1_proto"],
)

go_proto_library(
    name = "blogs_go_proto",
    importpath = "github.com/johanbrandhorst/bazel-mono/proto/myorg/blogs/v1",
    proto = ":blogs_proto",
    visibility = ["//visibility:public"],
    deps = ["//myorg/users/v1:go_default_library"],
)

go_library(
    name = "go_default_library",
    embed = [":blogs_go_proto"],
    importpath = "github.com/johanbrandhorst/bazel-mono/proto/myorg/blogs/v1",
    visibility = ["//visibility:public"],
)
