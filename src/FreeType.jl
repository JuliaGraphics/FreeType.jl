module FreeType

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("FreeType was not build properly. Please run Pkg.build(\"FreeType\")")
end
include(depsjl_path)

# Module initialization function
function __init__()
    # Always check your dependencies from `deps.jl`
    check_deps()
end

include("CEnum.jl")
using .CEnum

include(joinpath(@__DIR__, "..", "gen", "api", "ft_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "api", "ft_api.jl"))

export FT_Init_FreeType
export FT_Done_FreeType
export FT_New_Face
export FT_New_Memory_Face
export FT_Open_Face
export FT_Attach_File
export FT_Attach_Stream
export FT_Reference_Face
export FT_Done_Face
export FT_Select_Size
export FT_Request_Size
export FT_Set_Char_Size
export FT_Set_Pixel_Sizes
export FT_Load_Glyph
export FT_Load_Char
export FT_Set_Transform
export FT_Render_Glyph
export FT_Get_Kerning
export FT_Get_Track_Kerning
export FT_Get_Glyph_Name
export FT_Get_Postscript_Name
export FT_Select_Charmap
export FT_Set_Charmap
export FT_Get_Charmap_Index
export FT_Get_Char_Index
export FT_Get_First_Char
export FT_Get_Next_Char
export FT_Get_Name_Index
export FT_Get_SubGlyph_Info
export FT_Get_FSType_Flags
export FT_Face_GetCharVariantIndex
export FT_Face_GetCharVariantIsDefault
export FT_Face_GetVariantSelectors
export FT_Face_GetVariantsOfChar
export FT_Face_GetCharsOfVariant
export FT_MulDiv
export FT_DivFix
export FT_RoundFix
export FT_CeilFix
export FT_FloorFix
export FT_Vector_Transform
export FT_Library_Version
export FT_Face_CheckTrueTypePatents
export FT_Face_SetUnpatentedHinting

export FT_Int16
export FT_UInt16
export FT_Int32
export FT_UInt32
export FT_Fast
export FT_UFast
export FT_Memory
export FT_Alloc_Func
export FT_Free_Func
export FT_Realloc_Func
export FT_Stream
export FT_Stream_IoFunc
export FT_Stream_CloseFunc
export FT_Pos
export FT_Pixel_Mode
export FT_Outline_MoveToFunc
export FT_Outline_LineToFunc
export FT_Outline_ConicToFunc
export FT_Outline_CubicToFunc
export FT_Glyph_Format
export FT_Raster
export FT_SpanFunc
export FT_Raster_BitTest_Func
export FT_Raster_BitSet_Func
export FT_Raster_NewFunc
export FT_Raster_DoneFunc
export FT_Raster_ResetFunc
export FT_Raster_SetModeFunc
export FT_Raster_RenderFunc
export FT_Bool
export FT_FWord
export FT_UFWord
export FT_Char
export FT_Byte
export FT_Bytes
export FT_Tag
export FT_String
export FT_Short
export FT_UShort
export FT_Int
export FT_UInt
export FT_Long
export FT_ULong
export FT_F2Dot14
export FT_F26Dot6
export FT_Fixed
export FT_Error
export FT_Pointer
export FT_Offset
export FT_PtrDist
export FT_Generic_Finalizer
export FT_ListNode
export FT_List
export FT_Library
export FT_Module
export FT_Driver
export FT_Renderer
export FT_Face
export FT_Size
export FT_GlyphSlot
export FT_CharMap
export FT_Encoding
export FT_Face_Internal
export FT_Size_Internal
export FT_SubGlyph
export FT_Slot_Internal
export FT_Size_Request_Type
export FT_Size_Request
export FT_Render_Mode
export FT_Kerning_Mode

export FT_LOAD_DEFAULT
export FT_LOAD_TARGET_NORMAL
export FT_LOAD_NO_SCALE
export FT_LOAD_NO_HINTING
export FT_LOAD_RENDER
export FT_LOAD_NO_BITMAP
export FT_LOAD_VERTICAL_LAYOUT
export FT_LOAD_FORCE_AUTOHINT
export FT_LOAD_CROP_BITMAP
export FT_LOAD_PEDANTIC
export FT_LOAD_ADVANCE_ONLY
export FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH
export FT_LOAD_NO_RECURSE
export FT_LOAD_IGNORE_TRANSFORM
export FT_LOAD_MONOCHROME
export FT_LOAD_LINEAR_DESIGN
export FT_LOAD_SBITS_ONLY
export FT_LOAD_NO_AUTOHINT
export FT_LOAD_TARGET_LIGHT
export FT_LOAD_TARGET_MONO
export FT_LOAD_TARGET_LCD
export FT_LOAD_TARGET_LCD_V
export FT_LOAD_COLOR

export FT_FACE_FLAG_SCALABLE
export FT_FACE_FLAG_FIXED_SIZES
export FT_FACE_FLAG_FIXED_WIDTH
export FT_FACE_FLAG_SFNT
export FT_FACE_FLAG_HORIZONTAL
export FT_FACE_FLAG_VERTICAL
export FT_FACE_FLAG_KERNING
export FT_FACE_FLAG_FAST_GLYPHS
export FT_FACE_FLAG_MULTIPLE_MASTERS
export FT_FACE_FLAG_GLYPH_NAMES
export FT_FACE_FLAG_EXTERNAL_STREAM
export FT_FACE_FLAG_HINTER
export FT_FACE_FLAG_CID_KEYED
export FT_FACE_FLAG_TRICKY
export FT_FACE_FLAG_COLOR

export FT_RENDER_MODE_NORMAL
export FT_RENDER_MODE_LIGHT
export FT_RENDER_MODE_MONO
export FT_RENDER_MODE_LCD
export FT_RENDER_MODE_LCD_V
export FT_RENDER_MODE_MAX

export FT_PIXEL_MODE_NONE
export FT_PIXEL_MODE_MONO
export FT_PIXEL_MODE_GRAY
export FT_PIXEL_MODE_GRAY2
export FT_PIXEL_MODE_GRAY4
export FT_PIXEL_MODE_LCD
export FT_PIXEL_MODE_LCD_V
export FT_PIXEL_MODE_BGRA
export FT_PIXEL_MODE_MAX

end
