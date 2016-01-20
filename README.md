# FreeType.jl

[![Build Status](https://travis-ci.org/JuliaGraphics/FreeType.jl.svg?branch=master)](https://travis-ci.org/jhasse/FreeType.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/isg0r0pngi59xcap/branch/master?svg=true)](https://ci.appveyor.com/project/SimonDanisch/freetype-jl-bl4qr/branch/master)

[FreeType](http://www.freetype.org/) bindings for [Julia](http://julialang.org/).

## Example

```julia
using FreeType

library = Array(FT_Library, 1)
error = FT_Init_FreeType(library)
assert(error == 0)
```
