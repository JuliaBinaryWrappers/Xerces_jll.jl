# Autogenerated wrapper script for Xerces_jll for aarch64-linux-musl
export libxerces

JLLWrappers.@generate_wrapper_header("Xerces")
JLLWrappers.@declare_library_product(libxerces, "libxerces-c-3.2.so")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libxerces,
        "lib/libxerces-c.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
