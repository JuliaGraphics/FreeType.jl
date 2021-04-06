using Clang.Generators
using FreeType.FreeType2_jll

cd(@__DIR__)

include_dir = joinpath(FreeType2_jll.artifact_dir, "include", "freetype2") |> normpath
freetype_h = joinpath(include_dir, "freetype", "freetype.h") |> normpath
@assert isfile(freetype_h)

options = load_options(joinpath(@__DIR__, "generator.toml"))

args = ["-I$include_dir", "-DFT_FREETYPE_H"]

ctx = create_context([freetype_h], args, options)

build!(ctx)
