# Autogenerated wrapper script for SEAL_jll for x86_64-linux-musl-cxx11
export libseal, libsealc

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libseal`
const libseal_splitpath = ["lib", "libseal.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libseal_path = ""

# libseal-specific global declaration
# This will be filled out by __init__()
libseal_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libseal = "libseal.so.3.5"


# Relative path to `libsealc`
const libsealc_splitpath = ["lib", "libsealc.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsealc_path = ""

# libsealc-specific global declaration
# This will be filled out by __init__()
libsealc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsealc = "libsealc.so.3.5"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SEAL")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libseal_path = normpath(joinpath(artifact_dir, libseal_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libseal_handle = dlopen(libseal_path)
    push!(LIBPATH_list, dirname(libseal_path))

    global libsealc_path = normpath(joinpath(artifact_dir, libsealc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsealc_handle = dlopen(libsealc_path)
    push!(LIBPATH_list, dirname(libsealc_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

