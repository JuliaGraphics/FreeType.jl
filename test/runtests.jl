using FreeType
using Base.Test

library = Ref{FT_Library}()
error = FT_Init_FreeType(library)
@test error == 0

macro ok(block)
    @test eval(block) == 0
end

refface = Ref{FT_Face}()

# Butler – Typeface by Fabian De Smet
# https://fabiandesmet.com/portfolio/butler-font/

@ok FT_New_Face(library[], "Butler_Regular.otf", 0, refface)

glyph_index = FT_Get_Char_Index(refface[], 'A')
@ok FT_Set_Char_Size(refface[], 0, 16*64, 3, 3)
@ok FT_Load_Glyph(refface[], glyph_index, FT_LOAD_NO_SCALE | FT_LOAD_NO_BITMAP)

face = unsafe_load(refface[])
glyph = unsafe_load(face.glyph)

import FreeType: FT_Vector

function pos(p::Ptr{FT_Vector})
    vec = unsafe_load(p)
    (vec.x, vec.y)
end

paths = []

move_f = cfunction(Cint,(Ptr{FT_Vector},Ptr{Void})) do to,user
    push!(paths, (:move, pos.([to])...))
    Cint(0)
end

line_f = cfunction(Cint,(Ptr{FT_Vector},Ptr{Void})) do to,user
    push!(paths, (:line, pos.([to])...))
    Cint(0)
end

conic_f = cfunction(Cint,(Ptr{FT_Vector},Ptr{FT_Vector},Ptr{Void})) do one,to,user
    push!(paths, (:conic, pos.([one, to])...))
    Cint(0)
end

cubic_f = cfunction(Cint,(Ptr{FT_Vector},Ptr{FT_Vector},Ptr{FT_Vector},Ptr{Void})) do one,two,to,user
    push!(paths, (:cubic, pos.([one, two, to])...))
    Cint(0)
end

outline_funcs = FreeType.FT_Outline_Funcs(move_f, line_f, conic_f, cubic_f, 0, 0)
FT_Outline_Decompose(glyph.outline, outline_funcs, C_NULL)

@test paths == [(:move, (175, 226)), (:line, (296, 558)), (:line, (427, 226)), (:line, (175, 226)),
    (:move, (673, 13)), (:cubic, (645, 15), (624, 14), (591, 94)),
    (:cubic, (591, 94), (467, 410), (345, 704)), (:line, (334, 704)), (:line, (167, 249)),
    (:cubic, (80, 18), (55, 14), (17, 13)), (:line, (17, 0)), (:line, (240, 0)), (:line, (240, 13)),
    (:cubic, (101, 9), (145, 133), (172, 213)), (:line, (431, 213)), (:line, (466, 126)),
    (:cubic, (489, 70), (499, 13), (445, 13)), (:line, (445, 0)), (:line, (673, 0)),
    (:line, (673, 13))]

@ok FT_Done_FreeType(library[])
