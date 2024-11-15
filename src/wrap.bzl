load("@rules_pkg//:pkg.bzl", "pkg_tar")

def _toolchain_transition_impl(settings, attr):
    return {"//command_line_option:platforms": "@io_bazel_rules_go//go/toolchain:darwin_arm64"}

_toolchain_transition = transition(
    implementation = _toolchain_transition_impl,
    inputs = [],
    outputs = ["//command_line_option:platforms"],
)

def _binary_rule_impl(ctx):
    return [DefaultInfo(files = depset(ctx.files.srcs))]

_binary_rule = rule(
    implementation = _binary_rule_impl,
    cfg = _toolchain_transition,
    attrs = {
        "srcs": attr.label_list(
            allow_files = True,
            allow_empty = False,
            mandatory = True,
            doc = "List of binary targets to build.",
        ),
        "_allowlist_function_transition": attr.label(
            default = "@bazel_tools//tools/allowlists/function_transition_allowlist",
        ),
    },
)

def bottle(name,srcs):
    bin_name = "{}-arm64".format(name)
    _binary_rule(
        name = bin_name,
        srcs = srcs,
    )
