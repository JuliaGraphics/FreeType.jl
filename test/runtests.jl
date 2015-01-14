using FreeType
using Base.Test

library = Array(FT_Library, 1)
error = FT_Init_FreeType(library)
@test error == 0
