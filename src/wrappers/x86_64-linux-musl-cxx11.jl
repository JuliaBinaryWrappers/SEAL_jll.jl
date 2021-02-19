# Autogenerated wrapper script for SEAL_jll for x86_64-linux-musl-cxx11
export libsealc

JLLWrappers.@generate_wrapper_header("SEAL")
JLLWrappers.@declare_library_product(libsealc, "libsealc.so.3.6")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libsealc,
        "lib/libsealc.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
