load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# This will pass:
http_archive(
    name = "io_bazel_rules_go",
    integrity = "sha256-2T7wLx5yyC2Ls9UWlRmzYWezPPaMJSUl47nT1d0UPec=",
        patch_args = ["-p1"],
    patches = [
        "//:rulesgo-4036.patch",  # https://github.com/bazelbuild/rules_go/pull/4036
    ],
    urls = [
        "https://github.com/bazelbuild/rules_go/releases/download/v0.49.0/rules_go-v0.49.0.zip",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.23.1")

http_archive(
    name = "bazel_gazelle",
    integrity = "sha256-LHVFzJFKQR5cFcPVWgpe00+/9i3vDh8Ktu0UvaIiw8w=",
    urls = [
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.39.0/bazel-gazelle-v0.39.0.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

gazelle_dependencies()

load("//:repos.bzl", "repos")

# gazelle:repository_macro repos.bzl%repos
repos()
