load("@rules_cc//cc:defs.bzl", "cc_binary")
load("//:gen_hello.bzl", "gen_hello")

cc_binary(
    name = "hello_generator",
    srcs = ["hello_generator.cc"],
    visibility = ["//visibility:public"],
)



gen_hello(
    name = "generated_hello",
    out = "generated_hello.cc",
)
