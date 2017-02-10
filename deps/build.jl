using Compat

if is_windows()
    using WinRPM
    WinRPM.install("libfreetype6", yes=true)
end

const freetype = Libdl.find_library(
    ["libfreetype", "libfreetype-6", "libfreetype.6", "freetype"],
    [
        "/usr/lib/i386-linux-gnu", "/usr/lib/x86_64-linux-gnu",
        Pkg.dir("WinRPM", "deps", "usr", "$(Sys.ARCH)-w64-mingw32", "sys-root", "mingw", "bin"),
        "/Developer/SDKs/MacOSX10.7.sdk/usr/X11/include/freetype2", "/usr/X11/lib/",
        "/opt/local/lib/", "/usr/local/lib/", "/usr/X11R6/lib/"
    ]
)


if isempty(freetype)
    error("FreeType library could not be found. Please file an issue here: https://github.com/jhasse/FreeType.jl/issues/new")
end

# Save lib and version into seperate file to statically include the library with precompile
f = open("deps.jl", "w")
write(f, """
const freetype = \"$(escape_string(freetype))\"
""")
close(f)
