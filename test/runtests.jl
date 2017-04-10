using FreeType
using Base.Test

library = Ref{FT_Library}()
error = FT_Init_FreeType(library)
@test error == 0
