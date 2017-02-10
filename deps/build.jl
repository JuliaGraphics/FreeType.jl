using BinDeps
@BinDeps.setup
freetype = library_dependency("freetype", aliases = ["libfreetype", "libfreetype6", "libfreetype-6", "libfreetype.6", "freetype"])

@static if is_apple()
    using Homebrew
    provides(Homebrew.HB, "freetype", freetype, os = :Darwin )
end
@static if is_windows()
    using WinRPM
    provides(WinRPM.RPM, "freetype", freetype, os = :Windows)
end
@static if is_linux()
    provides(AptGet, "freetype", freetype, os = :Linux)
end

@BinDeps.install Dict("freetype" => "freetype")
