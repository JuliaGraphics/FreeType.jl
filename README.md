# FreeType.jl

[![Build Status](https://travis-ci.org/jhasse/FreeType.jl.svg?branch=master)](https://travis-ci.org/jhasse/FreeType.jl)

[FreeType](http://www.freetype.org/) bindings for [Julia](http://julialang.org/).

## Example

```julia
using FreeType

library = Array(FT_Library, 1)
error = FT_Init_FreeType(pointer(library))
assert(error == 0)
```
