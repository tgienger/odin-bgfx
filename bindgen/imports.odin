foreign import lib {
    "system:libbgfx.so",
    "system:libbx.so",
    "system:libbimg.so",
    "system:libbimg_decode.so",
    "system:libbimg_encode.so",
}

when ODIN_OS == .Windows {
    @(extra_linker_flags="/NODEFAULTLIB:libcmt")
    foreign import lib {
        "libbgfx.lib",
        "libbx.lib",
        "libbimg.lib",
    }
}
