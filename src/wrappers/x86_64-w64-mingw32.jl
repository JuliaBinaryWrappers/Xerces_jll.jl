# Autogenerated wrapper script for Xerces_jll for x86_64-w64-mingw32
export libxerces

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libxerces`
const libxerces_splitpath = ["bin", "libxerces-c.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxerces_path = ""

# libxerces-specific global declaration
# This will be filled out by __init__()
libxerces_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxerces = "libxerces-c.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Xerces")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libxerces_path = normpath(joinpath(artifact_dir, libxerces_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxerces_handle = dlopen(libxerces_path)
    push!(LIBPATH_list, dirname(libxerces_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()

