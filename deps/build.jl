using Compat


using BinDeps
@BinDeps.setup

libfreetype = library_dependency("libfreetype", aliases=["libfreetype-6", "libfreetype.6", "freetype"])

if is_windows()
    using WinRPM
    provides(WinRPM.RPM,"libfreetype6", libfreetype, os = :Windows)
end

if is_apple()
    using Homebrew
    provides(Homebrew.HB, "freetype", libfreetype, os = :Darwin)
end

provides(AptGet, "libfreetype6", libfreetype)
provides(Yum, "freetype", libfreetype)
provides(Zypper, "freetype2", libfreetype)
provides(Pacman, "freetype2", libfreetype)

@BinDeps.install Dict(:libfreetype => :freetype)
