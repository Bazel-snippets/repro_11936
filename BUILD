load("@rules_cc//cc:defs.bzl", "cc_binary")
load("@third-workspace//:gen_hello.bzl", "gen_hello")

cc_binary(
    name = "hello-world",
    srcs = ["hello-world.cc"],
    deps = [
        "@secondary_workspace//:hello-greet",
        "@test.dots//lib",
    ],
)


gen_hello(
    name = "generated_hello",
    out = "generated_hello.cc",
)

cc_binary(
    name = "another_hello",
    srcs = [":generated_hello"],
)
