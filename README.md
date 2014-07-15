# Freetype.jl

[![Build Status](https://travis-ci.org/jhasse/Freetype.jl.svg?branch=master)](https://travis-ci.org/jhasse/Freetype.jl)

[Freetype](http://www.freetype.org/) bindings for [Julia](http://julialang.org/).

## Example

```julia
using Freetype

library = Array(FT_Library, 1)
error = FT_Init_FreeType(pointer(library))
assert(error == 0)
```
