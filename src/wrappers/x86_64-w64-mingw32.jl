# Autogenerated wrapper script for Xerces_jll for x86_64-w64-mingw32
export libxerces

JLLWrappers.@generate_wrapper_header("Xerces")
JLLWrappers.@declare_library_product(libxerces, "libxerces-c.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libxerces,
        "bin\\libxerces-c.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
