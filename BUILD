load("@bazel_gazelle//:def.bzl", "gazelle")
load("@com_github_bazelbuild_buildtools//buildifier:def.bzl", "buildifier")

# gazelle:build_file_name BUILD,BUILD.bazel
# gazelle:prefix github.com/johanbrandhorst/bazel-mono
gazelle(
    name = "gazelle",
)

buildifier(
    name = "buildifier",
)

buildifier(
    name = "buildifier_check",
    mode = "check",
)
