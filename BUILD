load("@bazel_gazelle//:def.bzl", "gazelle", "DEFAULT_LANGUAGES", "gazelle_binary")
load("@com_github_bazelbuild_buildtools//buildifier:def.bzl", "buildifier")

gazelle_binary(
    name = "gazelle_binary",
    languages = DEFAULT_LANGUAGES + ["//bazel/go/gazelle/go_link:go_default_library"],
    visibility = ["//visibility:public"],
)

# gazelle:build_file_name BUILD,BUILD.bazel
# gazelle:prefix github.com/johanbrandhorst/bazel-mono
gazelle(
    name = "gazelle",
    gazelle = "//:gazelle_binary",
)

buildifier(
    name = "buildifier",
)

buildifier(
    name = "buildifier_check",
    mode = "check",
)
