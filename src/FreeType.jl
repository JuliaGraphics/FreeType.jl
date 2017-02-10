__precompile__(true)
module FreeType

isfile(joinpath(dirname(@__FILE__), "..", "deps", "deps.jl")) || error("FreeType was not build properly. Please run Pkg.build(\"FreeType\")")
include(joinpath("..", "deps", "deps.jl"))

function __init__()
    dl_ptr = Libdl.dlopen_e(freetype)
	dl_ptr == C_NULL && error("FreeType library could not be loaded correctly. Please check library path ($freetype), or run Pkg.build(\"FreeType\")")
	Libdl.dlclose(dl_ptr)
end

typealias FT_Int16 Int16
typealias FT_UInt16 UInt16
typealias FT_Int32 Cint
typealias FT_UInt32 UInt32
typealias FT_Fast Cint
typealias FT_UFast UInt32
abstract FT_MemoryRec_
typealias FT_Memory Ptr{FT_MemoryRec_}
typealias FT_Alloc_Func Ptr{Void}
typealias FT_Free_Func Ptr{Void}
typealias FT_Realloc_Func Ptr{Void}
type FT_StreamDesc
    _FT_StreamDesc::Ptr{Void}
end
typealias FT_Stream_IoFunc Ptr{Void}
typealias FT_Stream_CloseFunc Ptr{Void}
type FT_StreamRec
    base::Ptr{Cuchar}
    size::Culong
    pos::Culong
    descriptor::FT_StreamDesc
    pathname::FT_StreamDesc
    read::FT_Stream_IoFunc
    close::FT_Stream_CloseFunc
    memory::FT_Memory
    cursor::Ptr{Cuchar}
    limit::Ptr{Cuchar}
end
typealias FT_Stream Ptr{FT_StreamRec}
typealias FT_Pos Clong
immutable FT_Vector
    x::FT_Pos
    y::FT_Pos
end
immutable FT_BBox
    xMin::FT_Pos
    yMin::FT_Pos
    xMax::FT_Pos
    yMax::FT_Pos
end

const FT_LOAD_DEFAULT = Int32(0)
const FT_LOAD_TARGET_NORMAL = Int32(0)
const FT_LOAD_NO_SCALE = Int32(1 << 0)
const FT_LOAD_NO_HINTING = Int32(1 << 1)
const FT_LOAD_RENDER = Int32(1 << 2)
const FT_LOAD_NO_BITMAP = Int32(1 << 3)
const FT_LOAD_VERTICAL_LAYOUT = Int32(1 << 4)
const FT_LOAD_FORCE_AUTOHINT = Int32(1 << 5)
const FT_LOAD_CROP_BITMAP = Int32(1 << 6)
const FT_LOAD_PEDANTIC = Int32(1 << 7)
const FT_LOAD_ADVANCE_ONLY = Int32(1 << 8)
const FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH = Int32(1 << 9)
const FT_LOAD_NO_RECURSE = Int32(1 << 10)
const FT_LOAD_IGNORE_TRANSFORM = Int32(1 << 11)
const FT_LOAD_MONOCHROME = Int32(1 << 12)
const FT_LOAD_LINEAR_DESIGN = Int32(1 << 13)
const FT_LOAD_SBITS_ONLY = Int32(1 << 14)
const FT_LOAD_NO_AUTOHINT = Int32(1 << 15)
const FT_LOAD_TARGET_LIGHT = Int32(1 << 16)
const FT_LOAD_TARGET_MONO = Int32(1 << 17)
const FT_LOAD_TARGET_LCD = Int32(196608)
const FT_LOAD_TARGET_LCD_V = Int32(1 << 18)
const FT_LOAD_COLOR = Int32(1 << 20)

const FT_FACE_FLAG_SCALABLE         = Int32(1 <<  0)
const FT_FACE_FLAG_FIXED_SIZES      = Int32(1 <<  1)
const FT_FACE_FLAG_FIXED_WIDTH      = Int32(1 <<  2)
const FT_FACE_FLAG_SFNT             = Int32(1 <<  3)
const FT_FACE_FLAG_HORIZONTAL       = Int32(1 <<  4)
const FT_FACE_FLAG_VERTICAL         = Int32(1 <<  5)
const FT_FACE_FLAG_KERNING          = Int32(1 <<  6)
const FT_FACE_FLAG_FAST_GLYPHS      = Int32(1 <<  7)
const FT_FACE_FLAG_MULTIPLE_MASTERS = Int32(1 <<  8)
const FT_FACE_FLAG_GLYPH_NAMES      = Int32(1 <<  9)
const FT_FACE_FLAG_EXTERNAL_STREAM  = Int32(1 << 10)
const FT_FACE_FLAG_HINTER           = Int32(1 << 11)
const FT_FACE_FLAG_CID_KEYED        = Int32(1 << 12)
const FT_FACE_FLAG_TRICKY           = Int32(1 << 13)
const FT_FACE_FLAG_COLOR            = Int32(1 << 14)

# begin enum FT_Pixel_Mode
typealias FT_Pixel_Mode UInt32
const FT_PIXEL_MODE_NONE = UInt32(0)
const FT_PIXEL_MODE_MONO = UInt32(1)
const FT_PIXEL_MODE_GRAY = UInt32(2)
const FT_PIXEL_MODE_GRAY2 = UInt32(3)
const FT_PIXEL_MODE_GRAY4 = UInt32(4)
const FT_PIXEL_MODE_LCD = UInt32(5)
const FT_PIXEL_MODE_LCD_V = UInt32(6)
const FT_PIXEL_MODE_BGRA = UInt32(7)
const FT_PIXEL_MODE_MAX = UInt32(8)
# end enum FT_Pixel_Mode
immutable FT_Bitmap
    rows::Cint
    width::Cint
    pitch::Cint
    buffer::Ptr{Cuchar}
    num_grays::Int16
    pixel_mode::UInt8
    palette_mode::UInt8
    palette::Ptr{Void}
end
immutable FT_Outline
    n_contours::Int16
    n_points::Int16
    points::Ptr{FT_Vector}
    tags::Ptr{UInt8}
    contours::Ptr{Int16}
    flags::Cint
end
typealias FT_Outline_MoveToFunc Ptr{Void}
typealias FT_Outline_LineToFunc Ptr{Void}
typealias FT_Outline_ConicToFunc Ptr{Void}
typealias FT_Outline_CubicToFunc Ptr{Void}
type FT_Outline_Funcs
    move_to::FT_Outline_MoveToFunc
    line_to::FT_Outline_LineToFunc
    conic_to::FT_Outline_ConicToFunc
    cubic_to::FT_Outline_CubicToFunc
    shift::Cint
    delta::FT_Pos
end
# begin enum FT_Glyph_Format
typealias FT_Glyph_Format UInt32
const FT_GLYPH_FORMAT_NONE = UInt32(0)
const FT_GLYPH_FORMAT_COMPOSITE = UInt32(1668246896)
const FT_GLYPH_FORMAT_BITMAP = UInt32(1651078259)
const FT_GLYPH_FORMAT_OUTLINE = UInt32(1869968492)
const FT_GLYPH_FORMAT_PLOTTER = UInt32(1886154612)
# end enum FT_Glyph_Format
abstract FT_RasterRec_
typealias FT_Raster Ptr{FT_RasterRec_}
type FT_Span
    x::Int16
    len::UInt16
    coverage::Cuchar
end
typealias FT_SpanFunc Ptr{Void}
typealias FT_Raster_BitTest_Func Ptr{Void}
typealias FT_Raster_BitSet_Func Ptr{Void}
type FT_Raster_Params
    target::Ptr{FT_Bitmap}
    source::Ptr{Void}
    flags::Cint
    gray_spans::FT_SpanFunc
    black_spans::FT_SpanFunc
    bit_test::FT_Raster_BitTest_Func
    bit_set::FT_Raster_BitSet_Func
    user::Ptr{Void}
    clip_box::FT_BBox
end
typealias FT_Raster_NewFunc Ptr{Void}
typealias FT_Raster_DoneFunc Ptr{Void}
typealias FT_Raster_ResetFunc Ptr{Void}
typealias FT_Raster_SetModeFunc Ptr{Void}
typealias FT_Raster_RenderFunc Ptr{Void}
type FT_Raster_Funcs
    glyph_format::FT_Glyph_Format
    raster_new::FT_Raster_NewFunc
    raster_reset::FT_Raster_ResetFunc
    raster_set_mode::FT_Raster_SetModeFunc
    raster_render::FT_Raster_RenderFunc
    raster_done::FT_Raster_DoneFunc
end
typealias FT_Bool Cuchar
typealias FT_FWord Int16
typealias FT_UFWord UInt16
typealias FT_Char UInt8
typealias FT_Byte Cuchar
typealias FT_Bytes Ptr{FT_Byte}
typealias FT_Tag FT_UInt32
typealias FT_String UInt8
typealias FT_Short Int16
typealias FT_UShort UInt16
typealias FT_Int Cint
typealias FT_UInt UInt32
typealias FT_Long Clong
typealias FT_ULong Culong
typealias FT_F2Dot14 Int16
typealias FT_F26Dot6 Clong
typealias FT_Fixed Clong
typealias FT_Error Cint
typealias FT_Pointer Ptr{Void}
typealias FT_Offset Csize_t
typealias FT_PtrDist Cptrdiff_t
type FT_UnitVector
    x::FT_F2Dot14
    y::FT_F2Dot14
end
type FT_Matrix
    xx::FT_Fixed
    xy::FT_Fixed
    yx::FT_Fixed
    yy::FT_Fixed
end
type FT_Data
    pointer::Ptr{FT_Byte}
    length::FT_Int
end
typealias FT_Generic_Finalizer Ptr{Void}
immutable FT_Generic
    data::Ptr{Void}
    finalizer::FT_Generic_Finalizer
end
abstract FT_ListNodeRec_
typealias FT_ListNode Ptr{FT_ListNodeRec_}
type FT_ListNodeRec <: FT_ListNodeRec_
    prev::FT_ListNode
    next::FT_ListNode
    data::Ptr{Void}
end
immutable FT_ListRec
    head::FT_ListNode
    tail::FT_ListNode
end
typealias FT_List Ptr{FT_ListRec}
# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 UInt32
const FT_Mod_Err_Base = UInt32(0)
const FT_Mod_Err_Autofit = UInt32(0)
const FT_Mod_Err_BDF = UInt32(0)
const FT_Mod_Err_Bzip2 = UInt32(0)
const FT_Mod_Err_Cache = UInt32(0)
const FT_Mod_Err_CFF = UInt32(0)
const FT_Mod_Err_CID = UInt32(0)
const FT_Mod_Err_Gzip = UInt32(0)
const FT_Mod_Err_LZW = UInt32(0)
const FT_Mod_Err_OTvalid = UInt32(0)
const FT_Mod_Err_PCF = UInt32(0)
const FT_Mod_Err_PFR = UInt32(0)
const FT_Mod_Err_PSaux = UInt32(0)
const FT_Mod_Err_PShinter = UInt32(0)
const FT_Mod_Err_PSnames = UInt32(0)
const FT_Mod_Err_Raster = UInt32(0)
const FT_Mod_Err_SFNT = UInt32(0)
const FT_Mod_Err_Smooth = UInt32(0)
const FT_Mod_Err_TrueType = UInt32(0)
const FT_Mod_Err_Type1 = UInt32(0)
const FT_Mod_Err_Type42 = UInt32(0)
const FT_Mod_Err_Winfonts = UInt32(0)
const FT_Mod_Err_GXvalid = UInt32(0)
const FT_Mod_Err_Max = UInt32(1)
# end enum ANONYMOUS_1
immutable FT_Glyph_Metrics
    width::FT_Pos
    height::FT_Pos
    horiBearingX::FT_Pos
    horiBearingY::FT_Pos
    horiAdvance::FT_Pos
    vertBearingX::FT_Pos
    vertBearingY::FT_Pos
    vertAdvance::FT_Pos
end
type FT_Bitmap_Size
    height::FT_Short
    width::FT_Short
    size::FT_Pos
    x_ppem::FT_Pos
    y_ppem::FT_Pos
end
abstract FT_LibraryRec_
typealias FT_Library Ptr{FT_LibraryRec_}
abstract FT_ModuleRec_
typealias FT_Module Ptr{FT_ModuleRec_}
abstract FT_DriverRec_
typealias FT_Driver Ptr{FT_DriverRec_}
abstract FT_RendererRec_
typealias FT_Renderer Ptr{FT_RendererRec_}
abstract FT_SizeRec_
typealias FT_Size Ptr{FT_SizeRec_}
abstract FT_CharMapRec_
typealias FT_CharMap Ptr{FT_CharMapRec_}
# begin enum FT_Encoding
typealias FT_Encoding UInt32
const FT_ENCODING_NONE = UInt32(0)
const FT_ENCODING_MS_SYMBOL = UInt32(1937337698)
const FT_ENCODING_UNICODE = UInt32(1970170211)
const FT_ENCODING_SJIS = UInt32(1936353651)
const FT_ENCODING_GB2312 = UInt32(1734484000)
const FT_ENCODING_BIG5 = UInt32(1651074869)
const FT_ENCODING_WANSUNG = UInt32(2002873971)
const FT_ENCODING_JOHAB = UInt32(1785686113)
const FT_ENCODING_MS_SJIS = UInt32(1936353651)
const FT_ENCODING_MS_GB2312 = UInt32(1734484000)
const FT_ENCODING_MS_BIG5 = UInt32(1651074869)
const FT_ENCODING_MS_WANSUNG = UInt32(2002873971)
const FT_ENCODING_MS_JOHAB = UInt32(1785686113)
const FT_ENCODING_ADOBE_STANDARD = UInt32(1094995778)
const FT_ENCODING_ADOBE_EXPERT = UInt32(1094992453)
const FT_ENCODING_ADOBE_CUSTOM = UInt32(1094992451)
const FT_ENCODING_ADOBE_LATIN_1 = UInt32(1818326065)
const FT_ENCODING_OLD_LATIN_2 = UInt32(1818326066)
const FT_ENCODING_APPLE_ROMAN = UInt32(1634889070)
# end enum FT_Encoding
abstract FT_Face_InternalRec_
typealias FT_Face_Internal Ptr{FT_Face_InternalRec_}
abstract FT_Size_InternalRec_
typealias FT_Size_Internal Ptr{FT_Size_InternalRec_}
immutable FT_Size_Metrics
    x_ppem::FT_UShort
    y_ppem::FT_UShort
    x_scale::FT_Fixed
    y_scale::FT_Fixed
    ascender::FT_Pos
    descender::FT_Pos
    height::FT_Pos
    max_advance::FT_Pos
end
abstract FT_SubGlyphRec_
typealias FT_SubGlyph Ptr{FT_SubGlyphRec_}
abstract FT_Slot_InternalRec_
typealias FT_Slot_Internal Ptr{FT_Slot_InternalRec_}
type FT_GlyphSlotRec
    library::FT_Library
    face::Ptr{Void}
    next::Ptr{FT_GlyphSlotRec}
    reserved::FT_UInt
    generic::FT_Generic
    metrics::FT_Glyph_Metrics
    linearHoriAdvance::FT_Fixed
    linearVertAdvance::FT_Fixed
    advance::FT_Vector
    format::FT_Glyph_Format
    bitmap::FT_Bitmap
    bitmap_left::FT_Int
    bitmap_top::FT_Int
    outline::FT_Outline
    num_subglyphs::FT_UInt
    subglyphs::FT_SubGlyph
    control_data::Ptr{Void}
    control_len::Clong
    lsb_delta::FT_Pos
    rsb_delta::FT_Pos
    other::Ptr{Void}
    internal::FT_Slot_Internal
end
typealias FT_GlyphSlot Ptr{FT_GlyphSlotRec}
type FT_FaceRec
    num_faces::FT_Long
    face_index::FT_Long
    face_flags::FT_Long
    style_flags::FT_Long
    num_glyphs::FT_Long
    family_name::Ptr{FT_String}
    style_name::Ptr{FT_String}
    num_fixed_sizes::FT_Int
    available_sizes::Ptr{FT_Bitmap_Size}
    num_charmaps::FT_Int
    charmaps::Ptr{FT_CharMap}
    generic::FT_Generic
    bbox::FT_BBox
    units_per_EM::FT_UShort
    ascender::FT_Short
    descender::FT_Short
    height::FT_Short
    max_advance_width::FT_Short
    max_advance_height::FT_Short
    underline_position::FT_Short
    underline_thickness::FT_Short
    glyph::FT_GlyphSlot
    size::FT_Size
    charmap::FT_CharMap
    driver::FT_Driver
    memory::FT_Memory
    stream::FT_Stream
    sizes_list::FT_ListRec
    autohint::FT_Generic
    extensions::Ptr{Void}
    internal::FT_Face_Internal
end
typealias FT_Face Ptr{FT_FaceRec}
type FT_CharMapRec <: FT_CharMapRec_
    face::FT_Face
    encoding::FT_Encoding
    platform_id::FT_UShort
    encoding_id::FT_UShort
end
type FT_SizeRec <: FT_SizeRec_
    face::FT_Face
    generic::FT_Generic
    metrics::FT_Size_Metrics
    internal::FT_Size_Internal
end
type FT_Parameter
    tag::FT_ULong
    data::FT_Pointer
end
type FT_Open_Args
    flags::FT_UInt
    memory_base::Ptr{FT_Byte}
    memory_size::FT_Long
    pathname::Ptr{FT_String}
    stream::FT_Stream
    driver::FT_Module
    num_params::FT_Int
    params::Ptr{FT_Parameter}
end
# begin enum FT_Size_Request_Type
typealias FT_Size_Request_Type UInt32
const FT_SIZE_REQUEST_TYPE_NOMINAL = UInt32(0)
const FT_SIZE_REQUEST_TYPE_REAL_DIM = UInt32(1)
const FT_SIZE_REQUEST_TYPE_BBOX = UInt32(2)
const FT_SIZE_REQUEST_TYPE_CELL = UInt32(3)
const FT_SIZE_REQUEST_TYPE_SCALES = UInt32(4)
const FT_SIZE_REQUEST_TYPE_MAX = UInt32(5)
# end enum FT_Size_Request_Type
type FT_Size_RequestRec
    _type::FT_Size_Request_Type
    width::FT_Long
    height::FT_Long
    horiResolution::FT_UInt
    vertResolution::FT_UInt
end
typealias FT_Size_Request Ptr{FT_Size_RequestRec}
# begin enum FT_Render_Mode
typealias FT_Render_Mode UInt32
const FT_RENDER_MODE_NORMAL = UInt32(0)
const FT_RENDER_MODE_LIGHT = UInt32(1)
const FT_RENDER_MODE_MONO = UInt32(2)
const FT_RENDER_MODE_LCD = UInt32(3)
const FT_RENDER_MODE_LCD_V = UInt32(4)
const FT_RENDER_MODE_MAX = UInt32(5)
# end enum FT_Render_Mode
# begin enum FT_Kerning_Mode
typealias FT_Kerning_Mode UInt32
const FT_KERNING_DEFAULT = UInt32(0)
const FT_KERNING_UNFITTED = UInt32(1)
const FT_KERNING_UNSCALED = UInt32(2)
# end enum FT_Kerning_Mode
function FT_Init_FreeType(alibrary)
    ccall((:FT_Init_FreeType,freetype),FT_Error,(Ptr{FT_Library},),alibrary)
end
function FT_Done_FreeType(library::FT_Library)
    ccall((:FT_Done_FreeType,freetype),FT_Error,(FT_Library,),library)
end
function FT_New_Face(library::FT_Library,filepathname::AbstractString,face_index::Integer, aface)
    ccall((:FT_New_Face,freetype),FT_Error,(FT_Library,Ptr{UInt8},FT_Long,Ptr{FT_Face}),library,filepathname,face_index,aface)
end
function FT_New_Memory_Face(library::FT_Library,file_base::Ptr{FT_Byte},file_size::FT_Long,face_index::FT_Long,aface::Ptr{FT_Face})
    ccall((:FT_New_Memory_Face,freetype),FT_Error,(FT_Library,Ptr{FT_Byte},FT_Long,FT_Long,Ptr{FT_Face}),library,file_base,file_size,face_index,aface)
end
function FT_Open_Face(library::FT_Library,args::Ptr{FT_Open_Args},face_index::FT_Long,aface::Ptr{FT_Face})
    ccall((:FT_Open_Face,freetype),FT_Error,(FT_Library,Ptr{FT_Open_Args},FT_Long,Ptr{FT_Face}),library,args,face_index,aface)
end
function FT_Attach_File(face::FT_Face,filepathname::AbstractString)
    ccall((:FT_Attach_File,freetype),FT_Error,(FT_Face,Ptr{UInt8}),face,filepathname)
end
function FT_Attach_Stream(face::FT_Face,parameters::Ptr{FT_Open_Args})
    ccall((:FT_Attach_Stream,freetype),FT_Error,(FT_Face,Ptr{FT_Open_Args}),face,parameters)
end
function FT_Reference_Face(face::FT_Face)
    ccall((:FT_Reference_Face,freetype),FT_Error,(FT_Face,),face)
end
function FT_Done_Face(face::FT_Face)
    ccall((:FT_Done_Face,freetype),FT_Error,(FT_Face,),face)
end
function FT_Select_Size(face::FT_Face,strike_index::FT_Int)
    ccall((:FT_Select_Size,freetype),FT_Error,(FT_Face,FT_Int),face,strike_index)
end
function FT_Request_Size(face::FT_Face,req::FT_Size_Request)
    ccall((:FT_Request_Size,freetype),FT_Error,(FT_Face,FT_Size_Request),face,req)
end
function FT_Set_Char_Size(face::FT_Face, char_width, char_height, horz_resolution, vert_resolution)
    ccall((:FT_Set_Char_Size,freetype),FT_Error,(FT_Face,FT_F26Dot6,FT_F26Dot6,FT_UInt,FT_UInt),face,char_width,char_height,horz_resolution,vert_resolution)
end
function FT_Set_Pixel_Sizes(face::FT_Face,pixel_width::FT_UInt,pixel_height::FT_UInt)
    ccall((:FT_Set_Pixel_Sizes,freetype),FT_Error,(FT_Face,FT_UInt,FT_UInt),face,pixel_width,pixel_height)
end
function FT_Load_Glyph(face::FT_Face,glyph_index::FT_UInt,load_flags::FT_Int32)
    ccall((:FT_Load_Glyph,freetype),FT_Error,(FT_Face,FT_UInt,FT_Int32),face,glyph_index,load_flags)
end
function FT_Load_Char(face::FT_Face,char_code::Char,load_flags::FT_Int32)
    ccall((:FT_Load_Char,freetype),FT_Error,(FT_Face,FT_ULong,FT_Int32),face,char_code,load_flags)
end
function FT_Set_Transform(face::FT_Face,matrix::Ptr{FT_Matrix},delta::Ptr{FT_Vector})
    ccall((:FT_Set_Transform,freetype),Void,(FT_Face,Ptr{FT_Matrix},Ptr{FT_Vector}),face,matrix,delta)
end
function FT_Render_Glyph(slot::FT_GlyphSlot,render_mode::FT_Render_Mode)
    ccall((:FT_Render_Glyph,freetype),FT_Error,(FT_GlyphSlot,FT_Render_Mode),slot,render_mode)
end
function FT_Get_Kerning(face::FT_Face,left_glyph::FT_UInt,right_glyph::FT_UInt,kern_mode::FT_UInt, akerning)
    ccall((:FT_Get_Kerning,freetype),FT_Error,(FT_Face,FT_UInt,FT_UInt,FT_UInt,Ptr{FT_Vector}),face,left_glyph,right_glyph,kern_mode,akerning)
end
function FT_Get_Track_Kerning(face::FT_Face,point_size::FT_Fixed,degree::FT_Int,akerning::Ptr{FT_Fixed})
    ccall((:FT_Get_Track_Kerning,freetype),FT_Error,(FT_Face,FT_Fixed,FT_Int,Ptr{FT_Fixed}),face,point_size,degree,akerning)
end
function FT_Get_Glyph_Name(face::FT_Face,glyph_index::FT_UInt,buffer::FT_Pointer,buffer_max::FT_UInt)
    ccall((:FT_Get_Glyph_Name,freetype),FT_Error,(FT_Face,FT_UInt,FT_Pointer,FT_UInt),face,glyph_index,buffer,buffer_max)
end
function FT_Get_Postscript_Name(face::FT_Face)
    ccall((:FT_Get_Postscript_Name,freetype),Ptr{UInt8},(FT_Face,),face)
end
function FT_Select_Charmap(face::FT_Face,encoding::FT_Encoding)
    ccall((:FT_Select_Charmap,freetype),FT_Error,(FT_Face,FT_Encoding),face,encoding)
end
function FT_Set_Charmap(face::FT_Face,charmap::FT_CharMap)
    ccall((:FT_Set_Charmap,freetype),FT_Error,(FT_Face,FT_CharMap),face,charmap)
end
function FT_Get_Charmap_Index(charmap::FT_CharMap)
    ccall((:FT_Get_Charmap_Index,freetype),FT_Int,(FT_CharMap,),charmap)
end
function FT_Get_Char_Index(face::FT_Face,charcode::Char)
    ccall((:FT_Get_Char_Index,freetype),FT_UInt,(FT_Face,FT_ULong),face,charcode)
end
function FT_Get_First_Char(face::FT_Face,agindex::Ptr{FT_UInt})
    ccall((:FT_Get_First_Char,freetype),FT_ULong,(FT_Face,Ptr{FT_UInt}),face,agindex)
end
function FT_Get_Next_Char(face::FT_Face,char_code::FT_ULong,agindex::Ptr{FT_UInt})
    ccall((:FT_Get_Next_Char,freetype),FT_ULong,(FT_Face,FT_ULong,Ptr{FT_UInt}),face,char_code,agindex)
end
function FT_Get_Name_Index(face::FT_Face,glyph_name::Ptr{FT_String})
    ccall((:FT_Get_Name_Index,freetype),FT_UInt,(FT_Face,Ptr{FT_String}),face,glyph_name)
end
function FT_Get_SubGlyph_Info(glyph::FT_GlyphSlot,sub_index::FT_UInt,p_index::Ptr{FT_Int},p_flags::Ptr{FT_UInt},p_arg1::Ptr{FT_Int},p_arg2::Ptr{FT_Int},p_transform::Ptr{FT_Matrix})
    ccall((:FT_Get_SubGlyph_Info,freetype),FT_Error,(FT_GlyphSlot,FT_UInt,Ptr{FT_Int},Ptr{FT_UInt},Ptr{FT_Int},Ptr{FT_Int},Ptr{FT_Matrix}),glyph,sub_index,p_index,p_flags,p_arg1,p_arg2,p_transform)
end
function FT_Get_FSType_Flags(face::FT_Face)
    ccall((:FT_Get_FSType_Flags,freetype),FT_UShort,(FT_Face,),face)
end
function FT_Face_GetCharVariantIndex(face::FT_Face,charcode::FT_ULong,variantSelector::FT_ULong)
    ccall((:FT_Face_GetCharVariantIndex,freetype),FT_UInt,(FT_Face,FT_ULong,FT_ULong),face,charcode,variantSelector)
end
function FT_Face_GetCharVariantIsDefault(face::FT_Face,charcode::FT_ULong,variantSelector::FT_ULong)
    ccall((:FT_Face_GetCharVariantIsDefault,freetype),FT_Int,(FT_Face,FT_ULong,FT_ULong),face,charcode,variantSelector)
end
function FT_Face_GetVariantSelectors(face::FT_Face)
    ccall((:FT_Face_GetVariantSelectors,freetype),Ptr{FT_UInt32},(FT_Face,),face)
end
function FT_Face_GetVariantsOfChar(face::FT_Face,charcode::FT_ULong)
    ccall((:FT_Face_GetVariantsOfChar,freetype),Ptr{FT_UInt32},(FT_Face,FT_ULong),face,charcode)
end
function FT_Face_GetCharsOfVariant(face::FT_Face,variantSelector::FT_ULong)
    ccall((:FT_Face_GetCharsOfVariant,freetype),Ptr{FT_UInt32},(FT_Face,FT_ULong),face,variantSelector)
end
function FT_MulDiv(a::FT_Long,b::FT_Long,c::FT_Long)
    ccall((:FT_MulDiv,freetype),FT_Long,(FT_Long,FT_Long,FT_Long),a,b,c)
end
function FT_DivFix(a::FT_Long,b::FT_Long)
    ccall((:FT_DivFix,freetype),FT_Long,(FT_Long,FT_Long),a,b)
end
function FT_RoundFix(a::FT_Fixed)
    ccall((:FT_RoundFix,freetype),FT_Fixed,(FT_Fixed,),a)
end
function FT_CeilFix(a::FT_Fixed)
    ccall((:FT_CeilFix,freetype),FT_Fixed,(FT_Fixed,),a)
end
function FT_FloorFix(a::FT_Fixed)
    ccall((:FT_FloorFix,freetype),FT_Fixed,(FT_Fixed,),a)
end
function FT_Vector_Transform(vec::Ptr{FT_Vector},matrix::Ptr{FT_Matrix})
    ccall((:FT_Vector_Transform,freetype),Void,(Ptr{FT_Vector},Ptr{FT_Matrix}),vec,matrix)
end
function FT_Library_Version(library::FT_Library,amajor::Ptr{FT_Int},aminor::Ptr{FT_Int},apatch::Ptr{FT_Int})
    ccall((:FT_Library_Version,freetype),Void,(FT_Library,Ptr{FT_Int},Ptr{FT_Int},Ptr{FT_Int}),library,amajor,aminor,apatch)
end
function FT_Face_CheckTrueTypePatents(face::FT_Face)
    ccall((:FT_Face_CheckTrueTypePatents,freetype),FT_Bool,(FT_Face,),face)
end
function FT_Face_SetUnpatentedHinting(face::FT_Face,value::FT_Bool)
    ccall((:FT_Face_SetUnpatentedHinting,freetype),FT_Bool,(FT_Face,FT_Bool),face,value)
end

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
