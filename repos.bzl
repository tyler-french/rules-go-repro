load("@bazel_gazelle//:deps.bzl", "go_repository")

def repos():
    go_repository(
        name = "com_github_google_go_cmp",
        importpath = "github.com/google/go-cmp",
        sum = "h1:ofyhxvXcZhMsU5ulbFiLKl/XBFqE1GSq7atu8tAmTRI=",
        version = "v0.6.0",
    )
    go_repository(
        name = "com_github_google_nftables",
        build_extra_args = ["-go_naming_convention_external=go_default_library"],
        build_file_generation = "on",
        build_file_proto_mode = "disable",
        importpath = "github.com/google/nftables",
        sum = "h1:PbJwaBmbVLzpeldoeUKGkE2RjstrjPKMl6oLrfEJ6/8=",
        version = "v0.2.0",
    )
    go_repository(
        name = "com_github_josharian_native",
        importpath = "github.com/josharian/native",
        sum = "h1:uuaP0hAbW7Y4l0ZRQ6C9zfb7Mg1mbFKry/xzDAfmtLA=",
        version = "v1.1.0",
    )
    go_repository(
        name = "com_github_mdlayher_netlink",
        importpath = "github.com/mdlayher/netlink",
        sum = "h1:/UtM3ofJap7Vl4QWCPDGXY8d3GIY2UGSDbK+QWmY8/g=",
        version = "v1.7.2",
    )
    go_repository(
        name = "com_github_mdlayher_socket",
        importpath = "github.com/mdlayher/socket",
        sum = "h1:ilICZmJcQz70vrWVes1MFera4jGiWNocSkykwwoy3XI=",
        version = "v0.5.0",
    )
    go_repository(
        name = "com_github_vishvananda_netns",
        importpath = "github.com/vishvananda/netns",
        sum = "h1:R83G5ikgLMxrBvLh22JhdfI8K6YXEPHx5P03Uu3DRs4=",
        version = "v0.0.0-20180720170159-13995c7128cc",
    )
    go_repository(
        name = "org_golang_x_crypto",
        importpath = "golang.org/x/crypto",
        sum = "h1:X31++rzVUdKhX5sWmSOFZxx8UW/ldWx55cbf08iNAMA=",
        version = "v0.21.0",
    )
    go_repository(
        name = "org_golang_x_net",
        importpath = "golang.org/x/net",
        sum = "h1:9sGLhx7iRIHEiX0oAJ3MRZMUCElJgy7Br1nO+AMN3Tc=",
        version = "v0.22.0",
    )
    go_repository(
        name = "org_golang_x_sync",
        importpath = "golang.org/x/sync",
        sum = "h1:5BMeUDZ7vkXGfEr1x9B4bRcTH4lpkTkpdh0T/J+qjbQ=",
        version = "v0.6.0",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:wBqf8DvsY9Y/2P8gAfPDEYNuS30J4lPHJxXSb/nJZ+s=",
        version = "v0.27.0",
    )
    go_repository(
        name = "org_golang_x_term",
        importpath = "golang.org/x/term",
        sum = "h1:FcHjZXDMxI8mM3nwhX9HlKop4C0YQvCVCdwYl2wOtE8=",
        version = "v0.18.0",
    )
    go_repository(
        name = "org_golang_x_text",
        importpath = "golang.org/x/text",
        sum = "h1:ScX5w1eTa3QqT8oi6+ziP7dTV1S2+ALU0bI+0zXKWiQ=",
        version = "v0.14.0",
    )
