module FreeType

const freetype = find_library(["libfreetype", "libfreetype-6"],
                              ["/usr/lib/i386-linux-gnu", "/usr/lib/x86_64-linux-gnu",
                               Pkg.dir("WinRPM", "deps", "usr", "$(Sys.ARCH)-w64-mingw32",
                                       "sys-root", "mingw", "bin")])

if VERSION < v"0.4.0-"
    typealias AbstractString String
end

typealias FT_Int16 Int16
typealias FT_UInt16 Uint16
typealias FT_Int32 Cint
typealias FT_UInt32 Uint32
typealias FT_Fast Cint
typealias FT_UFast Uint32
type FT_MemoryRec_
end
typealias FT_Memory Ptr{FT_MemoryRec_}
typealias FT_Alloc_Func Ptr{Void}
typealias FT_Free_Func Ptr{Void}
typealias FT_Realloc_Func Ptr{Void}
type FT_StreamRec_
end
typealias FT_Stream Ptr{FT_StreamRec_}
type FT_StreamDesc_
    _FT_StreamDesc_::Ptr{Void}
end
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
typealias FT_Pos Clong
immutable FT_Vector
    x::FT_Pos
    y::FT_Pos
end
type FT_BBox_
    xMin::FT_Pos
    yMin::FT_Pos
    xMax::FT_Pos
    yMax::FT_Pos
end
immutable FT_BBox
    xMin::FT_Pos
    yMin::FT_Pos
    xMax::FT_Pos
    yMax::FT_Pos
end

const FT_LOAD_DEFAULT = int32(0)
const FT_LOAD_TARGET_NORMAL = int32(0)
const FT_LOAD_NO_SCALE = int32(1 << 0)
const FT_LOAD_NO_HINTING = int32(1 << 1)
const FT_LOAD_RENDER = int32(1 << 2)
const FT_LOAD_NO_BITMAP = int32(1 << 3)
const FT_LOAD_VERTICAL_LAYOUT = int32(1 << 4)
const FT_LOAD_FORCE_AUTOHINT = int32(1 << 5)
const FT_LOAD_CROP_BITMAP = int32(1 << 6)
const FT_LOAD_PEDANTIC = int32(1 << 7)
const FT_LOAD_ADVANCE_ONLY = int32(1 << 8)
const FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH = int32(1 << 9)
const FT_LOAD_NO_RECURSE = int32(1 << 10)
const FT_LOAD_IGNORE_TRANSFORM = int32(1 << 11)
const FT_LOAD_MONOCHROME = int32(1 << 12)
const FT_LOAD_LINEAR_DESIGN = int32(1 << 13)
const FT_LOAD_SBITS_ONLY = int32(1 << 14)
const FT_LOAD_NO_AUTOHINT = int32(1 << 15)
const FT_LOAD_TARGET_LIGHT = int32(1 << 16)
const FT_LOAD_TARGET_MONO = int32(1 << 17)
const FT_LOAD_TARGET_LCD = int32(196608)
const FT_LOAD_TARGET_LCD_V = int32(1 << 18)
const FT_LOAD_COLOR = int32(1 << 20)

const FT_FACE_FLAG_SCALABLE         = int32(1 <<  0)
const FT_FACE_FLAG_FIXED_SIZES      = int32(1 <<  1)
const FT_FACE_FLAG_FIXED_WIDTH      = int32(1 <<  2)
const FT_FACE_FLAG_SFNT             = int32(1 <<  3)
const FT_FACE_FLAG_HORIZONTAL       = int32(1 <<  4)
const FT_FACE_FLAG_VERTICAL         = int32(1 <<  5)
const FT_FACE_FLAG_KERNING          = int32(1 <<  6)
const FT_FACE_FLAG_FAST_GLYPHS      = int32(1 <<  7)
const FT_FACE_FLAG_MULTIPLE_MASTERS = int32(1 <<  8)
const FT_FACE_FLAG_GLYPH_NAMES      = int32(1 <<  9)
const FT_FACE_FLAG_EXTERNAL_STREAM  = int32(1 << 10)
const FT_FACE_FLAG_HINTER           = int32(1 << 11)
const FT_FACE_FLAG_CID_KEYED        = int32(1 << 12)
const FT_FACE_FLAG_TRICKY           = int32(1 << 13)
const FT_FACE_FLAG_COLOR            = int32(1 << 14)

# begin enum FT_Pixel_Mode
typealias FT_Pixel_Mode Uint32
const FT_PIXEL_MODE_NONE = uint32(0)
const FT_PIXEL_MODE_MONO = uint32(1)
const FT_PIXEL_MODE_GRAY = uint32(2)
const FT_PIXEL_MODE_GRAY2 = uint32(3)
const FT_PIXEL_MODE_GRAY4 = uint32(4)
const FT_PIXEL_MODE_LCD = uint32(5)
const FT_PIXEL_MODE_LCD_V = uint32(6)
const FT_PIXEL_MODE_BGRA = uint32(7)
const FT_PIXEL_MODE_MAX = uint32(8)
# end enum FT_Pixel_Mode
immutable FT_Bitmap
    rows::Cint
    width::Cint
    pitch::Cint
    buffer::Ptr{Cuchar}
    num_grays::Int16
    pixel_mode::Uint8
    palette_mode::Uint8
    palette::Ptr{Void}
end
immutable FT_Outline
    n_contours::Int16
    n_points::Int16
    points::Ptr{FT_Vector}
    tags::Ptr{Uint8}
    contours::Ptr{Int16}
    flags::Cint
end
typealias FT_Outline_MoveToFunc Ptr{Void}
typealias FT_Outline_LineToFunc Ptr{Void}
typealias FT_Outline_ConicToFunc Ptr{Void}
typealias FT_Outline_CubicToFunc Ptr{Void}
type FT_Outline_Funcs_
    move_to::FT_Outline_MoveToFunc
    line_to::FT_Outline_LineToFunc
    conic_to::FT_Outline_ConicToFunc
    cubic_to::FT_Outline_CubicToFunc
    shift::Cint
    delta::FT_Pos
end
type FT_Outline_Funcs
    move_to::FT_Outline_MoveToFunc
    line_to::FT_Outline_LineToFunc
    conic_to::FT_Outline_ConicToFunc
    cubic_to::FT_Outline_CubicToFunc
    shift::Cint
    delta::FT_Pos
end
# begin enum FT_Glyph_Format_
typealias FT_Glyph_Format_ Uint32
const FT_GLYPH_FORMAT_NONE = uint32(0)
const FT_GLYPH_FORMAT_COMPOSITE = uint32(1668246896)
const FT_GLYPH_FORMAT_BITMAP = uint32(1651078259)
const FT_GLYPH_FORMAT_OUTLINE = uint32(1869968492)
const FT_GLYPH_FORMAT_PLOTTER = uint32(1886154612)
# end enum FT_Glyph_Format_
# begin enum FT_Glyph_Format
typealias FT_Glyph_Format Uint32
const FT_GLYPH_FORMAT_NONE = uint32(0)
const FT_GLYPH_FORMAT_COMPOSITE = uint32(1668246896)
const FT_GLYPH_FORMAT_BITMAP = uint32(1651078259)
const FT_GLYPH_FORMAT_OUTLINE = uint32(1869968492)
const FT_GLYPH_FORMAT_PLOTTER = uint32(1886154612)
# end enum FT_Glyph_Format
type FT_RasterRec_
end
typealias FT_Raster Ptr{FT_RasterRec_}
type FT_Span_
    x::Int16
    len::Uint16
    coverage::Cuchar
end
type FT_Span
    x::Int16
    len::Uint16
    coverage::Cuchar
end
typealias FT_SpanFunc Ptr{Void}
typealias FT_Raster_BitTest_Func Ptr{Void}
typealias FT_Raster_BitSet_Func Ptr{Void}
type FT_Raster_Params_
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
type FT_Raster_Funcs_
    glyph_format::FT_Glyph_Format
    raster_new::FT_Raster_NewFunc
    raster_reset::FT_Raster_ResetFunc
    raster_set_mode::FT_Raster_SetModeFunc
    raster_render::FT_Raster_RenderFunc
    raster_done::FT_Raster_DoneFunc
end
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
typealias FT_UFWord Uint16
typealias FT_Char Uint8
typealias FT_Byte Cuchar
typealias FT_Bytes Ptr{FT_Byte}
typealias FT_Tag FT_UInt32
typealias FT_String Uint8
typealias FT_Short Int16
typealias FT_UShort Uint16
typealias FT_Int Cint
typealias FT_UInt Uint32
typealias FT_Long Clong
typealias FT_ULong Culong
typealias FT_F2Dot14 Int16
typealias FT_F26Dot6 Clong
typealias FT_Fixed Clong
typealias FT_Error Cint
typealias FT_Pointer Ptr{Void}
typealias FT_Offset Csize_t
typealias FT_PtrDist Cptrdiff_t
type FT_UnitVector_
    x::FT_F2Dot14
    y::FT_F2Dot14
end
type FT_UnitVector
    x::FT_F2Dot14
    y::FT_F2Dot14
end
type FT_Matrix_
    xx::FT_Fixed
    xy::FT_Fixed
    yx::FT_Fixed
    yy::FT_Fixed
end
type FT_Matrix
    xx::FT_Fixed
    xy::FT_Fixed
    yx::FT_Fixed
    yy::FT_Fixed
end
type FT_Data_
    pointer::Ptr{FT_Byte}
    length::FT_Int
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
type FT_ListNodeRec_
end
typealias FT_ListNode Ptr{FT_ListNodeRec_}
type FT_ListRec_
end
typealias FT_List Ptr{FT_ListRec_}
type FT_ListNodeRec
    prev::FT_ListNode
    next::FT_ListNode
    data::Ptr{Void}
end
immutable FT_ListRec
    head::FT_ListNode
    tail::FT_ListNode
end
# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 Uint32
const FT_Mod_Err_Base = uint32(0)
const FT_Mod_Err_Autofit = uint32(0)
const FT_Mod_Err_BDF = uint32(0)
const FT_Mod_Err_Bzip2 = uint32(0)
const FT_Mod_Err_Cache = uint32(0)
const FT_Mod_Err_CFF = uint32(0)
const FT_Mod_Err_CID = uint32(0)
const FT_Mod_Err_Gzip = uint32(0)
const FT_Mod_Err_LZW = uint32(0)
const FT_Mod_Err_OTvalid = uint32(0)
const FT_Mod_Err_PCF = uint32(0)
const FT_Mod_Err_PFR = uint32(0)
const FT_Mod_Err_PSaux = uint32(0)
const FT_Mod_Err_PShinter = uint32(0)
const FT_Mod_Err_PSnames = uint32(0)
const FT_Mod_Err_Raster = uint32(0)
const FT_Mod_Err_SFNT = uint32(0)
const FT_Mod_Err_Smooth = uint32(0)
const FT_Mod_Err_TrueType = uint32(0)
const FT_Mod_Err_Type1 = uint32(0)
const FT_Mod_Err_Type42 = uint32(0)
const FT_Mod_Err_Winfonts = uint32(0)
const FT_Mod_Err_GXvalid = uint32(0)
const FT_Mod_Err_Max = uint32(1)
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
type FT_Bitmap_Size_
    height::FT_Short
    width::FT_Short
    size::FT_Pos
    x_ppem::FT_Pos
    y_ppem::FT_Pos
end
type FT_Bitmap_Size
    height::FT_Short
    width::FT_Short
    size::FT_Pos
    x_ppem::FT_Pos
    y_ppem::FT_Pos
end
type FT_LibraryRec_
end
typealias FT_Library Ptr{FT_LibraryRec_}
type FT_ModuleRec_
end
typealias FT_Module Ptr{FT_ModuleRec_}
type FT_DriverRec_
end
typealias FT_Driver Ptr{FT_DriverRec_}
type FT_RendererRec_
end
typealias FT_Renderer Ptr{FT_RendererRec_}
type FT_SizeRec_
end
typealias FT_Size Ptr{FT_SizeRec_}
type FT_CharMapRec_
end
typealias FT_CharMap Ptr{FT_CharMapRec_}
# begin enum FT_Encoding_
typealias FT_Encoding_ Uint32
const FT_ENCODING_NONE = uint32(0)
const FT_ENCODING_MS_SYMBOL = uint32(1937337698)
const FT_ENCODING_UNICODE = uint32(1970170211)
const FT_ENCODING_SJIS = uint32(1936353651)
const FT_ENCODING_GB2312 = uint32(1734484000)
const FT_ENCODING_BIG5 = uint32(1651074869)
const FT_ENCODING_WANSUNG = uint32(2002873971)
const FT_ENCODING_JOHAB = uint32(1785686113)
const FT_ENCODING_MS_SJIS = uint32(1936353651)
const FT_ENCODING_MS_GB2312 = uint32(1734484000)
const FT_ENCODING_MS_BIG5 = uint32(1651074869)
const FT_ENCODING_MS_WANSUNG = uint32(2002873971)
const FT_ENCODING_MS_JOHAB = uint32(1785686113)
const FT_ENCODING_ADOBE_STANDARD = uint32(1094995778)
const FT_ENCODING_ADOBE_EXPERT = uint32(1094992453)
const FT_ENCODING_ADOBE_CUSTOM = uint32(1094992451)
const FT_ENCODING_ADOBE_LATIN_1 = uint32(1818326065)
const FT_ENCODING_OLD_LATIN_2 = uint32(1818326066)
const FT_ENCODING_APPLE_ROMAN = uint32(1634889070)
# end enum FT_Encoding_
# begin enum FT_Encoding
typealias FT_Encoding Uint32
const FT_ENCODING_NONE = uint32(0)
const FT_ENCODING_MS_SYMBOL = uint32(1937337698)
const FT_ENCODING_UNICODE = uint32(1970170211)
const FT_ENCODING_SJIS = uint32(1936353651)
const FT_ENCODING_GB2312 = uint32(1734484000)
const FT_ENCODING_BIG5 = uint32(1651074869)
const FT_ENCODING_WANSUNG = uint32(2002873971)
const FT_ENCODING_JOHAB = uint32(1785686113)
const FT_ENCODING_MS_SJIS = uint32(1936353651)
const FT_ENCODING_MS_GB2312 = uint32(1734484000)
const FT_ENCODING_MS_BIG5 = uint32(1651074869)
const FT_ENCODING_MS_WANSUNG = uint32(2002873971)
const FT_ENCODING_MS_JOHAB = uint32(1785686113)
const FT_ENCODING_ADOBE_STANDARD = uint32(1094995778)
const FT_ENCODING_ADOBE_EXPERT = uint32(1094992453)
const FT_ENCODING_ADOBE_CUSTOM = uint32(1094992451)
const FT_ENCODING_ADOBE_LATIN_1 = uint32(1818326065)
const FT_ENCODING_OLD_LATIN_2 = uint32(1818326066)
const FT_ENCODING_APPLE_ROMAN = uint32(1634889070)
# end enum FT_Encoding
type FT_Face_InternalRec_
end
typealias FT_Face_Internal Ptr{FT_Face_InternalRec_}
type FT_Size_InternalRec_
end
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
type FT_SubGlyphRec_
end
typealias FT_SubGlyph Ptr{FT_SubGlyphRec_}
type FT_Slot_InternalRec_
end
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
type FT_CharMapRec
    face::FT_Face
    encoding::FT_Encoding
    platform_id::FT_UShort
    encoding_id::FT_UShort
end
type FT_SizeRec
    face::FT_Face
    generic::FT_Generic
    metrics::FT_Size_Metrics
    internal::FT_Size_Internal
end
type FT_Parameter_
    tag::FT_ULong
    data::FT_Pointer
end
type FT_Parameter
    tag::FT_ULong
    data::FT_Pointer
end
type FT_Open_Args_
    flags::FT_UInt
    memory_base::Ptr{FT_Byte}
    memory_size::FT_Long
    pathname::Ptr{FT_String}
    stream::FT_Stream
    driver::FT_Module
    num_params::FT_Int
    params::Ptr{FT_Parameter}
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
# begin enum FT_Size_Request_Type_
typealias FT_Size_Request_Type_ Uint32
const FT_SIZE_REQUEST_TYPE_NOMINAL = uint32(0)
const FT_SIZE_REQUEST_TYPE_REAL_DIM = uint32(1)
const FT_SIZE_REQUEST_TYPE_BBOX = uint32(2)
const FT_SIZE_REQUEST_TYPE_CELL = uint32(3)
const FT_SIZE_REQUEST_TYPE_SCALES = uint32(4)
const FT_SIZE_REQUEST_TYPE_MAX = uint32(5)
# end enum FT_Size_Request_Type_
# begin enum FT_Size_Request_Type
typealias FT_Size_Request_Type Uint32
const FT_SIZE_REQUEST_TYPE_NOMINAL = uint32(0)
const FT_SIZE_REQUEST_TYPE_REAL_DIM = uint32(1)
const FT_SIZE_REQUEST_TYPE_BBOX = uint32(2)
const FT_SIZE_REQUEST_TYPE_CELL = uint32(3)
const FT_SIZE_REQUEST_TYPE_SCALES = uint32(4)
const FT_SIZE_REQUEST_TYPE_MAX = uint32(5)
# end enum FT_Size_Request_Type
type FT_Size_RequestRec_
    _type::FT_Size_Request_Type
    width::FT_Long
    height::FT_Long
    horiResolution::FT_UInt
    vertResolution::FT_UInt
end
type FT_Size_RequestRec
    _type::FT_Size_Request_Type
    width::FT_Long
    height::FT_Long
    horiResolution::FT_UInt
    vertResolution::FT_UInt
end
typealias FT_Size_Request Ptr{FT_Size_RequestRec_}
# begin enum FT_Render_Mode_
typealias FT_Render_Mode_ Uint32
# end enum FT_Render_Mode_
# begin enum FT_Render_Mode
typealias FT_Render_Mode Uint32
const FT_RENDER_MODE_NORMAL = uint32(0)
const FT_RENDER_MODE_LIGHT = uint32(1)
const FT_RENDER_MODE_MONO = uint32(2)
const FT_RENDER_MODE_LCD = uint32(3)
const FT_RENDER_MODE_LCD_V = uint32(4)
const FT_RENDER_MODE_MAX = uint32(5)
# end enum FT_Render_Mode
# begin enum FT_Kerning_Mode_
typealias FT_Kerning_Mode_ Uint32
const FT_KERNING_DEFAULT = uint32(0)
const FT_KERNING_UNFITTED = uint32(1)
const FT_KERNING_UNSCALED = uint32(2)
# end enum FT_Kerning_Mode_
# begin enum FT_Kerning_Mode
typealias FT_Kerning_Mode Uint32
const FT_KERNING_DEFAULT = uint32(0)
const FT_KERNING_UNFITTED = uint32(1)
const FT_KERNING_UNSCALED = uint32(2)
# end enum FT_Kerning_Mode
function FT_Init_FreeType(alibrary)
    ccall((:FT_Init_FreeType,freetype),FT_Error,(Ptr{FT_Library},),alibrary)
end
function FT_Done_FreeType(library::FT_Library)
    ccall((:FT_Done_FreeType,freetype),FT_Error,(FT_Library,),library)
end
function FT_New_Face(library::FT_Library,filepathname::AbstractString,face_index::Integer, aface)
    ccall((:FT_New_Face,freetype),FT_Error,(FT_Library,Ptr{Uint8},FT_Long,Ptr{FT_Face}),library,filepathname,face_index,aface)
end
function FT_New_Memory_Face(library::FT_Library,file_base::Ptr{FT_Byte},file_size::FT_Long,face_index::FT_Long,aface::Ptr{FT_Face})
    ccall((:FT_New_Memory_Face,freetype),FT_Error,(FT_Library,Ptr{FT_Byte},FT_Long,FT_Long,Ptr{FT_Face}),library,file_base,file_size,face_index,aface)
end
function FT_Open_Face(library::FT_Library,args::Ptr{FT_Open_Args},face_index::FT_Long,aface::Ptr{FT_Face})
    ccall((:FT_Open_Face,freetype),FT_Error,(FT_Library,Ptr{FT_Open_Args},FT_Long,Ptr{FT_Face}),library,args,face_index,aface)
end
function FT_Attach_File(face::FT_Face,filepathname::AbstractString)
    ccall((:FT_Attach_File,freetype),FT_Error,(FT_Face,Ptr{Uint8}),face,filepathname)
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
function FT_Get_Kerning(face::FT_Face,left_glyph::FT_UInt,right_glyph::FT_UInt,kern_mode::FT_UInt,akerning::Ptr{FT_Vector})
    ccall((:FT_Get_Kerning,freetype),FT_Error,(FT_Face,FT_UInt,FT_UInt,FT_UInt,Ptr{FT_Vector}),face,left_glyph,right_glyph,kern_mode,akerning)
end
function FT_Get_Track_Kerning(face::FT_Face,point_size::FT_Fixed,degree::FT_Int,akerning::Ptr{FT_Fixed})
    ccall((:FT_Get_Track_Kerning,freetype),FT_Error,(FT_Face,FT_Fixed,FT_Int,Ptr{FT_Fixed}),face,point_size,degree,akerning)
end
function FT_Get_Glyph_Name(face::FT_Face,glyph_index::FT_UInt,buffer::FT_Pointer,buffer_max::FT_UInt)
    ccall((:FT_Get_Glyph_Name,freetype),FT_Error,(FT_Face,FT_UInt,FT_Pointer,FT_UInt),face,glyph_index,buffer,buffer_max)
end
function FT_Get_Postscript_Name(face::FT_Face)
    ccall((:FT_Get_Postscript_Name,freetype),Ptr{Uint8},(FT_Face,),face)
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
