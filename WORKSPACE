load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# THIS WILL PASS
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

# THIS WILL FAIL
# http_archive(
#     name = "io_bazel_rules_go",
#     integrity = "sha256-9KkxRRjKas+hbMSrQ7C4zh5OpkuBw42KN3KIPxUzRrg=",
#     urls = [
#         "https://github.com/bazelbuild/rules_go/releases/download/v0.50.1/rules_go-v0.50.1.zip",
#     ],
# )

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies", "go_register_nogo")

go_rules_dependencies()

go_register_toolchains(version = "1.23.1")

go_register_nogo(
    nogo = "@//:default_nogo",
)

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

rules_pkg_version = "0.8.1"

http_archive(
    name = "rules_pkg",
    sha256 = "8c20f74bca25d2d442b327ae26768c02cf3c99e93fad0381f32be9aab1967675",
    urls = [
        "https://github.com/bazelbuild/rules_pkg/releases/download/{0}/rules_pkg-{0}.tar.gz".format(rules_pkg_version),
    ],
)
