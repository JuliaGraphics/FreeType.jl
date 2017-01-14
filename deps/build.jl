using Compat

using BinDeps
@BinDeps.setup

libfreetype = library_dependency("libfreetype", aliases=["libfreetype-6", "libfreetype.6", "freetype"])

if is_windows()
    using WinRPM
    provides(WinRPM.RPM,"libfreetype6", libfreetype, os = :Windows)
end

if is_apple()
    if Pkg.installed("Homebrew") === nothing
        error("Homebrew package not installed, please run Pkg.add(\"Homebrew\")")
    end
    using Homebrew
    provides(Homebrew.HB, "freetype", libfreetype, os = :Darwin)
end

provides(AptGet, "libfreetype6", libfreetype)
provides(Yum, "freetype", libfreetype)
provides(Zypper, "freetype", libfreetype)

@BinDeps.install Dict(:libfreetype => :freetype)
