


def _gen_hello_impl(ctx):
    args = ctx.actions.args()
    args.add(ctx.outputs.out.path)
    ctx.actions.run(
        mnemonic = "GenerateHelloWorld",
        executable = ctx.executable.hello_gen,
        arguments = [args],
        outputs = [ctx.outputs.out],
    )
    return DefaultInfo(files = depset([ctx.outputs.out]))


gen_hello = rule(
    implementation = _gen_hello_impl,
    attrs = {
        "out": attr.output(),
        "hello_gen": attr.label(
            default = Label("//:hello_generator"),
            cfg = "exec",
            executable = True,
            allow_files = True,
        ),
    }
)
