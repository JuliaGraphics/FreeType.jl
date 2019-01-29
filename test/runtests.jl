using FreeType, FreeTypeAbstraction
using Test
using Pkg
library = Ref{FT_Library}()
error = FT_Init_FreeType(library)
@test error == 0

# since there are no meaningful tests, we simply run FreeTypeAbstraction's tests for now
include(joinpath(dirname(pathof(FreeTypeAbstraction)), "..", "test", "runtests.jl"))
