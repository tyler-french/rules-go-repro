This is a reproduction of a build failure introduced between rules go 0.49 and 0.50.1.

Run `bazel build //...` and it will pass.

Then, comment the `WORKSPACE` code to use `0.50.1` instead and it will fail.
