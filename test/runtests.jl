using FreeType
using Test
using Pkg
library = Ref{FT_Library}()
error = FT_Init_FreeType(library)
@test error == 0

# since there is no meaningful tests, we simply run FreeTypeAbstraction's tests for now
Pkg.pkg"test FreeTypeAbstraction"
