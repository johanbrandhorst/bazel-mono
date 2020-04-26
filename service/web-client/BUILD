package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_go//go:def.bzl", "go_embed_data", "go_library")

genrule(
    name = "compiled",
    srcs = ["index.js"],
    outs = ["index.min.js"],
    cmd = "cat $(location :index.js) > $(location :index.min.js)",
)

# ./node_modules/@bazel/ibazel/bin/linux_amd64/ibazel build //service/node-client:embedded_js
# bazelisk build //service/node-client:embedded_js
go_embed_data(
    name = "embedded_js",
    package = "node_client",
    var = "Js",
    src = "index.min.js",
)

go_library(
    name = "go_default_library",
    srcs = [
        "doc.go",
        "embedded_js",  #  keep
    ],
    importpath = "github.com/johanbrandhorst/bazel-mono/service/web-client",
)
