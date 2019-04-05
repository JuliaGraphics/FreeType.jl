# Automatically generated using Clang.jl
const FT_Bool = Cuchar
const FT_FWord = Int16
const FT_UFWord = UInt16
const FT_UInt32 = UInt32
const FT_Tag = FT_UInt32
const FT_F2Dot14 = Int16
const FT_F26Dot6 = Clong
const FT_Error = Cint
const FT_Offset = Csize_t
const FT_PtrDist = Cptrdiff_t

# Skipping MacroDefinition: FT_ENC_TAG ( value , a , b , c , d ) value = ( ( ( FT_UInt32 ) ( a ) << 24 ) | ( ( FT_UInt32 ) ( b ) << 16 ) | ( ( FT_UInt32 ) ( c ) << 8 ) | ( FT_UInt32 ) ( d ) )

@cenum(FT_Encoding_,
    FT_ENCODING_NONE = 0,
    FT_ENCODING_MS_SYMBOL = 1937337698,
    FT_ENCODING_UNICODE = 1970170211,
    FT_ENCODING_SJIS = 1936353651,
    FT_ENCODING_PRC = 1734484000,
    FT_ENCODING_BIG5 = 1651074869,
    FT_ENCODING_WANSUNG = 2002873971,
    FT_ENCODING_JOHAB = 1785686113,
    FT_ENCODING_GB2312 = 1734484000,
    FT_ENCODING_MS_SJIS = 1936353651,
    FT_ENCODING_MS_GB2312 = 1734484000,
    FT_ENCODING_MS_BIG5 = 1651074869,
    FT_ENCODING_MS_WANSUNG = 2002873971,
    FT_ENCODING_MS_JOHAB = 1785686113,
    FT_ENCODING_ADOBE_STANDARD = 1094995778,
    FT_ENCODING_ADOBE_EXPERT = 1094992453,
    FT_ENCODING_ADOBE_CUSTOM = 1094992451,
    FT_ENCODING_ADOBE_LATIN_1 = 1818326065,
    FT_ENCODING_OLD_LATIN_2 = 1818326066,
    FT_ENCODING_APPLE_ROMAN = 1634889070,
)

const ft_encoding_none = FT_ENCODING_NONE
const ft_encoding_unicode = FT_ENCODING_UNICODE
const ft_encoding_symbol = FT_ENCODING_MS_SYMBOL
const ft_encoding_latin_1 = FT_ENCODING_ADOBE_LATIN_1
const ft_encoding_latin_2 = FT_ENCODING_OLD_LATIN_2
const ft_encoding_sjis = FT_ENCODING_SJIS
const ft_encoding_gb2312 = FT_ENCODING_PRC
const ft_encoding_big5 = FT_ENCODING_BIG5
const ft_encoding_wansung = FT_ENCODING_WANSUNG
const ft_encoding_johab = FT_ENCODING_JOHAB
const ft_encoding_adobe_standard = FT_ENCODING_ADOBE_STANDARD
const ft_encoding_adobe_expert = FT_ENCODING_ADOBE_EXPERT
const ft_encoding_adobe_custom = FT_ENCODING_ADOBE_CUSTOM
const ft_encoding_apple_roman = FT_ENCODING_APPLE_ROMAN
const FT_FACE_FLAG_SCALABLE = Int32(1) << 0
const FT_FACE_FLAG_FIXED_SIZES = Int32(1) << 1
const FT_FACE_FLAG_FIXED_WIDTH = Int32(1) << 2
const FT_FACE_FLAG_SFNT = Int32(1) << 3
const FT_FACE_FLAG_HORIZONTAL = Int32(1) << 4
const FT_FACE_FLAG_VERTICAL = Int32(1) << 5
const FT_FACE_FLAG_KERNING = Int32(1) << 6
const FT_FACE_FLAG_FAST_GLYPHS = Int32(1) << 7
const FT_FACE_FLAG_MULTIPLE_MASTERS = Int32(1) << 8
const FT_FACE_FLAG_GLYPH_NAMES = Int32(1) << 9
const FT_FACE_FLAG_EXTERNAL_STREAM = Int32(1) << 10
const FT_FACE_FLAG_HINTER = Int32(1) << 11
const FT_FACE_FLAG_CID_KEYED = Int32(1) << 12
const FT_FACE_FLAG_TRICKY = Int32(1) << 13
const FT_FACE_FLAG_COLOR = Int32(1) << 14
const FT_FACE_FLAG_VARIATION = Int32(1) << 15

# Skipping MacroDefinition: FT_HAS_HORIZONTAL ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_HORIZONTAL )
# Skipping MacroDefinition: FT_HAS_VERTICAL ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_VERTICAL )
# Skipping MacroDefinition: FT_HAS_KERNING ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_KERNING )
# Skipping MacroDefinition: FT_IS_SCALABLE ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_SCALABLE )
# Skipping MacroDefinition: FT_IS_SFNT ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_SFNT )
# Skipping MacroDefinition: FT_IS_FIXED_WIDTH ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_FIXED_WIDTH )
# Skipping MacroDefinition: FT_HAS_FIXED_SIZES ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_FIXED_SIZES )
# Skipping MacroDefinition: FT_HAS_FAST_GLYPHS ( face ) 0
# Skipping MacroDefinition: FT_HAS_GLYPH_NAMES ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_GLYPH_NAMES )
# Skipping MacroDefinition: FT_HAS_MULTIPLE_MASTERS ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_MULTIPLE_MASTERS )
# Skipping MacroDefinition: FT_IS_NAMED_INSTANCE ( face ) ( ( face ) -> face_index & 0x7FFF0000L )
# Skipping MacroDefinition: FT_IS_VARIATION ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_VARIATION )
# Skipping MacroDefinition: FT_IS_CID_KEYED ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_CID_KEYED )
# Skipping MacroDefinition: FT_IS_TRICKY ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_TRICKY )
# Skipping MacroDefinition: FT_HAS_COLOR ( face ) ( ( face ) -> face_flags & FT_FACE_FLAG_COLOR )

const FT_STYLE_FLAG_ITALIC = 1 << 0
const FT_STYLE_FLAG_BOLD = 1 << 1
const FT_OPEN_MEMORY = 0x01
const FT_OPEN_STREAM = 0x02
const FT_OPEN_PATHNAME = 0x04
const FT_OPEN_DRIVER = 0x08
const FT_OPEN_PARAMS = 0x10
const ft_open_memory = FT_OPEN_MEMORY
const ft_open_stream = FT_OPEN_STREAM
const ft_open_pathname = FT_OPEN_PATHNAME
const ft_open_driver = FT_OPEN_DRIVER
const ft_open_params = FT_OPEN_PARAMS
const FT_LOAD_DEFAULT = 0x00
const FT_LOAD_NO_SCALE = Int32(1) << 0
const FT_LOAD_NO_HINTING = Int32(1) << 1
const FT_LOAD_RENDER = Int32(1) << 2
const FT_LOAD_NO_BITMAP = Int32(1) << 3
const FT_LOAD_VERTICAL_LAYOUT = Int32(1) << 4
const FT_LOAD_FORCE_AUTOHINT = Int32(1) << 5
const FT_LOAD_CROP_BITMAP = Int32(1) << 6
const FT_LOAD_PEDANTIC = Int32(1) << 7
const FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH = Int32(1) << 9
const FT_LOAD_NO_RECURSE = Int32(1) << 10
const FT_LOAD_IGNORE_TRANSFORM = Int32(1) << 11
const FT_LOAD_MONOCHROME = Int32(1) << 12
const FT_LOAD_LINEAR_DESIGN = Int32(1) << 13
const FT_LOAD_NO_AUTOHINT = Int32(1) << 15
const FT_LOAD_COLOR = Int32(1) << 20
const FT_LOAD_COMPUTE_METRICS = Int32(1) << 21
const FT_LOAD_BITMAP_METRICS_ONLY = Int32(1) << 22
const FT_LOAD_ADVANCE_ONLY = Int32(1) << 8
const FT_LOAD_SBITS_ONLY = Int32(1) << 14

# Skipping MacroDefinition: FT_LOAD_TARGET_ ( x ) ( ( FT_Int32 ) ( ( x ) & 15 ) << 16 )
# Skipping MacroDefinition: FT_LOAD_TARGET_NORMAL FT_LOAD_TARGET_ ( FT_RENDER_MODE_NORMAL )
# Skipping MacroDefinition: FT_LOAD_TARGET_LIGHT FT_LOAD_TARGET_ ( FT_RENDER_MODE_LIGHT )
# Skipping MacroDefinition: FT_LOAD_TARGET_MONO FT_LOAD_TARGET_ ( FT_RENDER_MODE_MONO )
# Skipping MacroDefinition: FT_LOAD_TARGET_LCD FT_LOAD_TARGET_ ( FT_RENDER_MODE_LCD )
# Skipping MacroDefinition: FT_LOAD_TARGET_LCD_V FT_LOAD_TARGET_ ( FT_RENDER_MODE_LCD_V )
# Skipping MacroDefinition: FT_LOAD_TARGET_MODE ( x ) ( ( FT_Render_Mode ) ( ( ( x ) >> 16 ) & 15 ) )

@cenum(FT_Render_Mode_,
    FT_RENDER_MODE_NORMAL = 0,
    FT_RENDER_MODE_LIGHT = 1,
    FT_RENDER_MODE_MONO = 2,
    FT_RENDER_MODE_LCD = 3,
    FT_RENDER_MODE_LCD_V = 4,
    FT_RENDER_MODE_MAX = 5,
)

const ft_render_mode_normal = FT_RENDER_MODE_NORMAL
const ft_render_mode_mono = FT_RENDER_MODE_MONO

@cenum(FT_Kerning_Mode_,
    FT_KERNING_DEFAULT = 0,
    FT_KERNING_UNFITTED = 1,
    FT_KERNING_UNSCALED = 2,
)

const ft_kerning_default = FT_KERNING_DEFAULT
const ft_kerning_unfitted = FT_KERNING_UNFITTED
const ft_kerning_unscaled = FT_KERNING_UNSCALED
const FT_SUBGLYPH_FLAG_ARGS_ARE_WORDS = 1
const FT_SUBGLYPH_FLAG_ARGS_ARE_XY_VALUES = 2
const FT_SUBGLYPH_FLAG_ROUND_XY_TO_GRID = 4
const FT_SUBGLYPH_FLAG_SCALE = 8
const FT_SUBGLYPH_FLAG_XY_SCALE = 0x40
const FT_SUBGLYPH_FLAG_2X2 = 0x80
const FT_SUBGLYPH_FLAG_USE_MY_METRICS = 0x0200
const FT_FSTYPE_INSTALLABLE_EMBEDDING = 0x0000
const FT_FSTYPE_RESTRICTED_LICENSE_EMBEDDING = 0x0002
const FT_FSTYPE_PREVIEW_AND_PRINT_EMBEDDING = 0x0004
const FT_FSTYPE_EDITABLE_EMBEDDING = 0x0008
const FT_FSTYPE_NO_SUBSETTING = 0x0100
const FT_FSTYPE_BITMAP_EMBEDDING_ONLY = 0x0200
const FREETYPE_MAJOR = 2
const FREETYPE_MINOR = 9
const FREETYPE_PATCH = 1
const FT_Pos = Clong

struct FT_Glyph_Metrics_
    width::FT_Pos
    height::FT_Pos
    horiBearingX::FT_Pos
    horiBearingY::FT_Pos
    horiAdvance::FT_Pos
    vertBearingX::FT_Pos
    vertBearingY::FT_Pos
    vertAdvance::FT_Pos
end

const FT_Glyph_Metrics = FT_Glyph_Metrics_
const FT_Short = Int16

struct FT_Bitmap_Size_
    height::FT_Short
    width::FT_Short
    size::FT_Pos
    x_ppem::FT_Pos
    y_ppem::FT_Pos
end

const FT_Bitmap_Size = FT_Bitmap_Size_
const FT_LibraryRec_ = Cvoid
const FT_Library = Ptr{FT_LibraryRec_}
const FT_ModuleRec_ = Cvoid
const FT_Module = Ptr{FT_ModuleRec_}
const FT_DriverRec_ = Cvoid
const FT_Driver = Ptr{FT_DriverRec_}
const FT_RendererRec_ = Cvoid
const FT_Renderer = Ptr{FT_RendererRec_}
const FT_Long = Clong
const FT_String = UInt8
const FT_Int = Cint

const FT_Encoding = FT_Encoding_
const FT_UShort = UInt16

struct FT_CharMapRec_
    face::Ptr{Cvoid}
    encoding::FT_Encoding
    platform_id::FT_UShort
    encoding_id::FT_UShort
end

const FT_CharMap = Ptr{FT_CharMapRec_}
const FT_Generic_Finalizer = Ptr{Cvoid}

struct FT_Generic_
    data::Ptr{Cvoid}
    finalizer::FT_Generic_Finalizer
end

const FT_Generic = FT_Generic_

struct FT_BBox_
    xMin::FT_Pos
    yMin::FT_Pos
    xMax::FT_Pos
    yMax::FT_Pos
end

const FT_BBox = FT_BBox_
const FT_UInt = UInt32
const FT_Fixed = Clong

struct FT_Vector_
    x::FT_Pos
    y::FT_Pos
end

const FT_Vector = FT_Vector_

@cenum(FT_Glyph_Format_,
    FT_GLYPH_FORMAT_NONE = 0,
    FT_GLYPH_FORMAT_COMPOSITE = 1668246896,
    FT_GLYPH_FORMAT_BITMAP = 1651078259,
    FT_GLYPH_FORMAT_OUTLINE = 1869968492,
    FT_GLYPH_FORMAT_PLOTTER = 1886154612,
)

const FT_Glyph_Format = FT_Glyph_Format_

struct FT_Bitmap_
    rows::UInt32
    width::UInt32
    pitch::Cint
    buffer::Ptr{Cuchar}
    num_grays::UInt16
    pixel_mode::Cuchar
    palette_mode::Cuchar
    palette::Ptr{Cvoid}
end

const FT_Bitmap = FT_Bitmap_

struct FT_Outline_
    n_contours::Int16
    n_points::Int16
    points::Ptr{FT_Vector}
    tags::Cstring
    contours::Ptr{Int16}
    flags::Cint
end

const FT_Outline = FT_Outline_
const FT_SubGlyphRec_ = Cvoid
const FT_SubGlyph = Ptr{FT_SubGlyphRec_}
const FT_Slot_InternalRec_ = Cvoid
const FT_Slot_Internal = Ptr{FT_Slot_InternalRec_}

struct FT_GlyphSlotRec_
    library::FT_Library
    face::Ptr{Cvoid}
    next::Ptr{Cvoid}
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
    control_data::Ptr{Cvoid}
    control_len::Clong
    lsb_delta::FT_Pos
    rsb_delta::FT_Pos
    other::Ptr{Cvoid}
    internal::FT_Slot_Internal
end

const FT_GlyphSlot = Ptr{FT_GlyphSlotRec_}

struct FT_Size_Metrics_
    x_ppem::FT_UShort
    y_ppem::FT_UShort
    x_scale::FT_Fixed
    y_scale::FT_Fixed
    ascender::FT_Pos
    descender::FT_Pos
    height::FT_Pos
    max_advance::FT_Pos
end

const FT_Size_Metrics = FT_Size_Metrics_
const FT_Size_InternalRec_ = Cvoid
const FT_Size_Internal = Ptr{FT_Size_InternalRec_}

struct FT_SizeRec_
    face::Ptr{Cvoid}
    generic::FT_Generic
    metrics::FT_Size_Metrics
    internal::FT_Size_Internal
end

const FT_Size = Ptr{FT_SizeRec_}
const FT_Alloc_Func = Ptr{Cvoid}
const FT_Free_Func = Ptr{Cvoid}
const FT_Realloc_Func = Ptr{Cvoid}

struct FT_MemoryRec_
    user::Ptr{Cvoid}
    alloc::FT_Alloc_Func
    free::FT_Free_Func
    realloc::FT_Realloc_Func
end

const FT_Memory = Ptr{FT_MemoryRec_}

struct FT_StreamDesc_
    value::Clong
end

const FT_StreamDesc = FT_StreamDesc_
const FT_Stream_IoFunc = Ptr{Cvoid}
const FT_Stream_CloseFunc = Ptr{Cvoid}

struct FT_StreamRec_
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

const FT_Stream = Ptr{FT_StreamRec_}

struct FT_ListNodeRec_{FT_ListNode}
    prev::FT_ListNode
    next::FT_ListNode
    data::Ptr{Cvoid}
end

const FT_ListNode = Ptr{FT_ListNodeRec_}

struct FT_ListRec_
    head::FT_ListNode
    tail::FT_ListNode
end

const FT_ListRec = FT_ListRec_
const FT_Face_InternalRec_ = Cvoid
const FT_Face_Internal = Ptr{FT_Face_InternalRec_}

struct FT_FaceRec_
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
    extensions::Ptr{Cvoid}
    internal::FT_Face_Internal
end
const FT_Face = Ptr{FT_FaceRec_}
const FT_CharMapRec = FT_CharMapRec_
const FT_FaceRec = FT_FaceRec_
const FT_SizeRec = FT_SizeRec_
const FT_GlyphSlotRec = FT_GlyphSlotRec_
const FT_ULong = Culong
const FT_Pointer = Ptr{Cvoid}

struct FT_Parameter_
    tag::FT_ULong
    data::FT_Pointer
end

const FT_Parameter = FT_Parameter_
const FT_Byte = Cuchar

struct FT_Open_Args_
    flags::FT_UInt
    memory_base::Ptr{FT_Byte}
    memory_size::FT_Long
    pathname::Ptr{FT_String}
    stream::FT_Stream
    driver::FT_Module
    num_params::FT_Int
    params::Ptr{FT_Parameter}
end

const FT_Open_Args = FT_Open_Args_

@cenum(FT_Size_Request_Type_,
    FT_SIZE_REQUEST_TYPE_NOMINAL = 0,
    FT_SIZE_REQUEST_TYPE_REAL_DIM = 1,
    FT_SIZE_REQUEST_TYPE_BBOX = 2,
    FT_SIZE_REQUEST_TYPE_CELL = 3,
    FT_SIZE_REQUEST_TYPE_SCALES = 4,
    FT_SIZE_REQUEST_TYPE_MAX = 5,
)

const FT_Size_Request_Type = FT_Size_Request_Type_

struct FT_Size_RequestRec_
    type::FT_Size_Request_Type
    width::FT_Long
    height::FT_Long
    horiResolution::FT_UInt
    vertResolution::FT_UInt
end

const FT_Size_RequestRec = FT_Size_RequestRec_
const FT_Size_Request = Ptr{FT_Size_RequestRec_}
const FT_Render_Mode = FT_Render_Mode_
const FT_Kerning_Mode = FT_Kerning_Mode_
const FT_ADVANCE_FLAG_FAST_ONLY = Int32(0x20000000)

@cenum(BDF_PropertyType_,
    BDF_PROPERTY_TYPE_NONE = 0,
    BDF_PROPERTY_TYPE_ATOM = 1,
    BDF_PROPERTY_TYPE_INTEGER = 2,
    BDF_PROPERTY_TYPE_CARDINAL = 3,
)

const BDF_PropertyType = BDF_PropertyType_

struct ANONYMOUS1_u
    atom::Cstring
end

struct BDF_PropertyRec_
    type::BDF_PropertyType
    u::ANONYMOUS1_u
end

const BDF_Property = Ptr{BDF_PropertyRec_}

struct ANONYMOUS2_u
    atom::Cstring
end

const BDF_PropertyRec = BDF_PropertyRec_

# Skipping MacroDefinition: FTC_IMAGE_TYPE_COMPARE ( d1 , d2 ) ( ( d1 ) -> face_id == ( d2 ) -> face_id && ( d1 ) -> width == ( d2 ) -> width && ( d1 ) -> flags == ( d2 ) -> flags )

const FTC_FaceID = FT_Pointer
const FTC_Face_Requester = Ptr{Cvoid}
const FTC_ManagerRec_ = Cvoid
const FTC_Manager = Ptr{FTC_ManagerRec_}
const FTC_NodeRec_ = Cvoid
const FTC_Node = Ptr{FTC_NodeRec_}

struct FTC_ScalerRec_
    face_id::FTC_FaceID
    width::FT_UInt
    height::FT_UInt
    pixel::FT_Int
    x_res::FT_UInt
    y_res::FT_UInt
end

const FTC_ScalerRec = FTC_ScalerRec_
const FTC_Scaler = Ptr{FTC_ScalerRec_}
const FTC_CMapCacheRec_ = Cvoid
const FTC_CMapCache = Ptr{FTC_CMapCacheRec_}
const FT_Int32 = Cint

struct FTC_ImageTypeRec_
    face_id::FTC_FaceID
    width::FT_UInt
    height::FT_UInt
    flags::FT_Int32
end

const FTC_ImageTypeRec = FTC_ImageTypeRec_
const FTC_ImageType = Ptr{FTC_ImageTypeRec_}
const FTC_ImageCacheRec_ = Cvoid
const FTC_ImageCache = Ptr{FTC_ImageCacheRec_}
const FT_Char = UInt8

struct FTC_SBitRec_
    width::FT_Byte
    height::FT_Byte
    left::FT_Char
    top::FT_Char
    format::FT_Byte
    max_grays::FT_Byte
    pitch::FT_Short
    xadvance::FT_Char
    yadvance::FT_Char
    buffer::Ptr{FT_Byte}
end

const FTC_SBit = Ptr{FTC_SBitRec_}
const FTC_SBitRec = FTC_SBitRec_
const FTC_SBitCacheRec_ = Cvoid
const FTC_SBitCache = Ptr{FTC_SBitCacheRec_}
const FT_HINTING_FREETYPE = 0
const FT_HINTING_ADOBE = 1
const FT_CFF_HINTING_FREETYPE = FT_HINTING_FREETYPE
const FT_CFF_HINTING_ADOBE = FT_HINTING_ADOBE
const TT_INTERPRETER_VERSION_35 = 35
const TT_INTERPRETER_VERSION_38 = 38
const TT_INTERPRETER_VERSION_40 = 40
const FT_AUTOHINTER_SCRIPT_NONE = 0
const FT_AUTOHINTER_SCRIPT_LATIN = 1
const FT_AUTOHINTER_SCRIPT_CJK = 2
const FT_AUTOHINTER_SCRIPT_INDIC = 3

struct FT_Prop_GlyphToScriptMap_
    face::FT_Face
    map::Ptr{FT_UShort}
end

const FT_Prop_GlyphToScriptMap = FT_Prop_GlyphToScriptMap_

struct FT_Prop_IncreaseXHeight_
    face::FT_Face
    limit::FT_UInt
end

const FT_Prop_IncreaseXHeight = FT_Prop_IncreaseXHeight_
#const FT_ERR_PREFIX = FT_Err_
const FT_ERR_BASE = 0

# Skipping MacroDefinition: FT_ERRORDEF ( e , v , s ) e = v ,
# Skipping MacroDefinition: FT_ERROR_START_LIST enum {
# Skipping MacroDefinition: FT_ERROR_END_LIST FT_ERR_CAT ( FT_ERR_PREFIX , Max ) } ;
# Skipping MacroDefinition: FT_ERRORDEF_ ( e , v , s ) FT_ERRORDEF ( FT_ERR_CAT ( FT_ERR_PREFIX , e ) , v + FT_ERR_BASE , s )
# Skipping MacroDefinition: FT_NOERRORDEF_ ( e , v , s ) FT_ERRORDEF ( FT_ERR_CAT ( FT_ERR_PREFIX , e ) , v , s )

const FT_GASP_NO_TABLE = -1
const FT_GASP_DO_GRIDFIT = 0x01
const FT_GASP_DO_GRAY = 0x02
const FT_GASP_SYMMETRIC_GRIDFIT = 0x04
const FT_GASP_SYMMETRIC_SMOOTHING = 0x08

@cenum(FT_Glyph_BBox_Mode_,
    FT_GLYPH_BBOX_UNSCALED = 0,
    FT_GLYPH_BBOX_SUBPIXELS = 0,
    FT_GLYPH_BBOX_GRIDFIT = 1,
    FT_GLYPH_BBOX_TRUNCATE = 2,
    FT_GLYPH_BBOX_PIXELS = 3,
)

const ft_glyph_bbox_unscaled = FT_GLYPH_BBOX_UNSCALED
const ft_glyph_bbox_subpixels = FT_GLYPH_BBOX_SUBPIXELS
const ft_glyph_bbox_gridfit = FT_GLYPH_BBOX_GRIDFIT
const ft_glyph_bbox_truncate = FT_GLYPH_BBOX_TRUNCATE
const ft_glyph_bbox_pixels = FT_GLYPH_BBOX_PIXELS
const FT_Glyph_InitFunc = Ptr{Cvoid}
const FT_Glyph_DoneFunc = Ptr{Cvoid}
const FT_Glyph_CopyFunc = Ptr{Cvoid}
const FT_Glyph_TransformFunc = Ptr{Cvoid}
const FT_Glyph_GetBBoxFunc = Ptr{Cvoid}
const FT_Glyph_PrepareFunc = Ptr{Cvoid}

struct FT_Glyph_Class_
    glyph_size::FT_Long
    glyph_format::FT_Glyph_Format
    glyph_init::FT_Glyph_InitFunc
    glyph_done::FT_Glyph_DoneFunc
    glyph_copy::FT_Glyph_CopyFunc
    glyph_transform::FT_Glyph_TransformFunc
    glyph_bbox::FT_Glyph_GetBBoxFunc
    glyph_prepare::FT_Glyph_PrepareFunc
end

const FT_Glyph_Class = FT_Glyph_Class_

struct FT_GlyphRec_
    library::FT_Library
    clazz::Ptr{FT_Glyph_Class}
    format::FT_Glyph_Format
    advance::FT_Vector
end

const FT_Glyph = Ptr{FT_GlyphRec_}
const FT_GlyphRec = FT_GlyphRec_

struct FT_BitmapGlyphRec_
    root::FT_GlyphRec
    left::FT_Int
    top::FT_Int
    bitmap::FT_Bitmap
end

const FT_BitmapGlyph = Ptr{FT_BitmapGlyphRec_}
const FT_BitmapGlyphRec = FT_BitmapGlyphRec_

struct FT_OutlineGlyphRec_
    root::FT_GlyphRec
    outline::FT_Outline
end

const FT_OutlineGlyph = Ptr{FT_OutlineGlyphRec_}
const FT_OutlineGlyphRec = FT_OutlineGlyphRec_
const FT_Glyph_BBox_Mode = FT_Glyph_BBox_Mode_
const FT_VALIDATE_feat_INDEX = 0
const FT_VALIDATE_mort_INDEX = 1
const FT_VALIDATE_morx_INDEX = 2
const FT_VALIDATE_bsln_INDEX = 3
const FT_VALIDATE_just_INDEX = 4
const FT_VALIDATE_kern_INDEX = 5
const FT_VALIDATE_opbd_INDEX = 6
const FT_VALIDATE_trak_INDEX = 7
const FT_VALIDATE_prop_INDEX = 8
const FT_VALIDATE_lcar_INDEX = 9
const FT_VALIDATE_GX_LAST_INDEX = FT_VALIDATE_lcar_INDEX
const FT_VALIDATE_GX_LENGTH = FT_VALIDATE_GX_LAST_INDEX + 1
const FT_VALIDATE_GX_START = 0x4000

# Skipping MacroDefinition: FT_VALIDATE_GX_BITFIELD ( tag ) ( FT_VALIDATE_GX_START << FT_VALIDATE_ ## tag ## _INDEX )
# Skipping MacroDefinition: FT_VALIDATE_feat FT_VALIDATE_GX_BITFIELD ( feat )
# Skipping MacroDefinition: FT_VALIDATE_mort FT_VALIDATE_GX_BITFIELD ( mort )
# Skipping MacroDefinition: FT_VALIDATE_morx FT_VALIDATE_GX_BITFIELD ( morx )
# Skipping MacroDefinition: FT_VALIDATE_bsln FT_VALIDATE_GX_BITFIELD ( bsln )
# Skipping MacroDefinition: FT_VALIDATE_just FT_VALIDATE_GX_BITFIELD ( just )
# Skipping MacroDefinition: FT_VALIDATE_kern FT_VALIDATE_GX_BITFIELD ( kern )
# Skipping MacroDefinition: FT_VALIDATE_opbd FT_VALIDATE_GX_BITFIELD ( opbd )
# Skipping MacroDefinition: FT_VALIDATE_trak FT_VALIDATE_GX_BITFIELD ( trak )
# Skipping MacroDefinition: FT_VALIDATE_prop FT_VALIDATE_GX_BITFIELD ( prop )
# Skipping MacroDefinition: FT_VALIDATE_lcar FT_VALIDATE_GX_BITFIELD ( lcar )

# const FT_VALIDATE_GX = ((((((((FT_VALIDATE_feat | FT_VALIDATE_mort) | FT_VALIDATE_morx) | FT_VALIDATE_bsln) | FT_VALIDATE_just) | FT_VALIDATE_kern) | FT_VALIDATE_opbd) | FT_VALIDATE_trak) | FT_VALIDATE_prop) | FT_VALIDATE_lcar
# const FT_VALIDATE_MS = FT_VALIDATE_GX_START << 0
# const FT_VALIDATE_APPLE = FT_VALIDATE_GX_START << 1
# const FT_VALIDATE_CKERN = FT_VALIDATE_MS | FT_VALIDATE_APPLE
const FT_VALIDATE_MS = FT_VALIDATE_GX_START << 0
const FT_VALIDATE_APPLE = FT_VALIDATE_GX_START << 1
const FT_VALIDATE_CKERN = FT_VALIDATE_MS | FT_VALIDATE_APPLE

@cenum(FT_Pixel_Mode_,
    FT_PIXEL_MODE_NONE = 0,
    FT_PIXEL_MODE_MONO = 1,
    FT_PIXEL_MODE_GRAY = 2,
    FT_PIXEL_MODE_GRAY2 = 3,
    FT_PIXEL_MODE_GRAY4 = 4,
    FT_PIXEL_MODE_LCD = 5,
    FT_PIXEL_MODE_LCD_V = 6,
    FT_PIXEL_MODE_BGRA = 7,
    FT_PIXEL_MODE_MAX = 8,
)

const ft_pixel_mode_none = FT_PIXEL_MODE_NONE
const ft_pixel_mode_mono = FT_PIXEL_MODE_MONO
const ft_pixel_mode_grays = FT_PIXEL_MODE_GRAY
const ft_pixel_mode_pal2 = FT_PIXEL_MODE_GRAY2
const ft_pixel_mode_pal4 = FT_PIXEL_MODE_GRAY4
const FT_OUTLINE_CONTOURS_MAX = SHRT_MAX
const FT_OUTLINE_POINTS_MAX = SHRT_MAX
const FT_OUTLINE_NONE = 0x00
const FT_OUTLINE_OWNER = 0x01
const FT_OUTLINE_EVEN_ODD_FILL = 0x02
const FT_OUTLINE_REVERSE_FILL = 0x04
const FT_OUTLINE_IGNORE_DROPOUTS = 0x08
const FT_OUTLINE_SMART_DROPOUTS = 0x10
const FT_OUTLINE_INCLUDE_STUBS = 0x20
const FT_OUTLINE_HIGH_PRECISION = 0x0100
const FT_OUTLINE_SINGLE_PASS = 0x0200
const ft_outline_none = FT_OUTLINE_NONE
const ft_outline_owner = FT_OUTLINE_OWNER
const ft_outline_even_odd_fill = FT_OUTLINE_EVEN_ODD_FILL
const ft_outline_reverse_fill = FT_OUTLINE_REVERSE_FILL
const ft_outline_ignore_dropouts = FT_OUTLINE_IGNORE_DROPOUTS
const ft_outline_high_precision = FT_OUTLINE_HIGH_PRECISION
const ft_outline_single_pass = FT_OUTLINE_SINGLE_PASS

# Skipping MacroDefinition: FT_CURVE_TAG ( flag ) ( flag & 3 )
FT_CURVE_TAG(flag) = flag & 3

const FT_CURVE_TAG_ON = 1
const FT_CURVE_TAG_CONIC = 0
const FT_CURVE_TAG_CUBIC = 2
const FT_CURVE_TAG_HAS_SCANMODE = 4
const FT_CURVE_TAG_TOUCH_X = 8
const FT_CURVE_TAG_TOUCH_Y = 16
const FT_CURVE_TAG_TOUCH_BOTH = FT_CURVE_TAG_TOUCH_X | FT_CURVE_TAG_TOUCH_Y
const FT_Curve_Tag_On = FT_CURVE_TAG_ON
const FT_Curve_Tag_Conic = FT_CURVE_TAG_CONIC
const FT_Curve_Tag_Cubic = FT_CURVE_TAG_CUBIC
const FT_Curve_Tag_Touch_X = FT_CURVE_TAG_TOUCH_X
const FT_Curve_Tag_Touch_Y = FT_CURVE_TAG_TOUCH_Y
const FT_Outline_MoveToFunc = Ptr{Cvoid}
const FT_Outline_MoveTo_Func = FT_Outline_MoveToFunc
const FT_Outline_LineToFunc = Ptr{Cvoid}
const FT_Outline_LineTo_Func = FT_Outline_LineToFunc
const FT_Outline_ConicToFunc = Ptr{Cvoid}
const FT_Outline_ConicTo_Func = FT_Outline_ConicToFunc
const FT_Outline_CubicToFunc = Ptr{Cvoid}
const FT_Outline_CubicTo_Func = FT_Outline_CubicToFunc

# Skipping MacroDefinition: FT_IMAGE_TAG ( value , _x1 , _x2 , _x3 , _x4 ) value = ( ( ( unsigned long ) _x1 << 24 ) | ( ( unsigned long ) _x2 << 16 ) | ( ( unsigned long ) _x3 << 8 ) | ( unsigned long ) _x4 )

const ft_glyph_format_none = FT_GLYPH_FORMAT_NONE
const ft_glyph_format_composite = FT_GLYPH_FORMAT_COMPOSITE
const ft_glyph_format_bitmap = FT_GLYPH_FORMAT_BITMAP
const ft_glyph_format_outline = FT_GLYPH_FORMAT_OUTLINE
const ft_glyph_format_plotter = FT_GLYPH_FORMAT_PLOTTER
const FT_SpanFunc = Ptr{Cvoid}
const FT_Raster_Span_Func = FT_SpanFunc
const FT_RASTER_FLAG_DEFAULT = 0x00
const FT_RASTER_FLAG_AA = 0x01
const FT_RASTER_FLAG_DIRECT = 0x02
const FT_RASTER_FLAG_CLIP = 0x04
const ft_raster_flag_default = FT_RASTER_FLAG_DEFAULT
const ft_raster_flag_aa = FT_RASTER_FLAG_AA
const ft_raster_flag_direct = FT_RASTER_FLAG_DIRECT
const ft_raster_flag_clip = FT_RASTER_FLAG_CLIP
const FT_Raster_NewFunc = Ptr{Cvoid}
const FT_Raster_New_Func = FT_Raster_NewFunc
const FT_Raster_DoneFunc = Ptr{Cvoid}
const FT_Raster_Done_Func = FT_Raster_DoneFunc
const FT_Raster_ResetFunc = Ptr{Cvoid}
const FT_Raster_Reset_Func = FT_Raster_ResetFunc
const FT_Raster_SetModeFunc = Ptr{Cvoid}
const FT_Raster_Set_Mode_Func = FT_Raster_SetModeFunc
const FT_Raster_RenderFunc = Ptr{Cvoid}
const FT_Raster_Render_Func = FT_Raster_RenderFunc
const FT_Pixel_Mode = FT_Pixel_Mode_

struct FT_Outline_Funcs_
    move_to::FT_Outline_MoveToFunc
    line_to::FT_Outline_LineToFunc
    conic_to::FT_Outline_ConicToFunc
    cubic_to::FT_Outline_CubicToFunc
    shift::Cint
    delta::FT_Pos
end

const FT_Outline_Funcs = FT_Outline_Funcs_
const FT_RasterRec_ = Cvoid
const FT_Raster = Ptr{FT_RasterRec_}

struct FT_Span_
    x::Int16
    len::UInt16
    coverage::Cuchar
end

const FT_Span = FT_Span_
const FT_Raster_BitTest_Func = Ptr{Cvoid}
const FT_Raster_BitSet_Func = Ptr{Cvoid}

struct FT_Raster_Params_
    target::Ptr{FT_Bitmap}
    source::Ptr{Cvoid}
    flags::Cint
    gray_spans::FT_SpanFunc
    black_spans::FT_SpanFunc
    bit_test::FT_Raster_BitTest_Func
    bit_set::FT_Raster_BitSet_Func
    user::Ptr{Cvoid}
    clip_box::FT_BBox
end

const FT_Raster_Params = FT_Raster_Params_

struct FT_Raster_Funcs_
    glyph_format::FT_Glyph_Format
    raster_new::FT_Raster_NewFunc
    raster_reset::FT_Raster_ResetFunc
    raster_set_mode::FT_Raster_SetModeFunc
    raster_render::FT_Raster_RenderFunc
    raster_done::FT_Raster_DoneFunc
end

const FT_Raster_Funcs = FT_Raster_Funcs_
const FT_IncrementalRec_ = Cvoid
const FT_Incremental = Ptr{FT_IncrementalRec_}

struct FT_Incremental_MetricsRec_
    bearing_x::FT_Long
    bearing_y::FT_Long
    advance::FT_Long
    advance_v::FT_Long
end

const FT_Incremental_MetricsRec = FT_Incremental_MetricsRec_
const FT_Incremental_Metrics = Ptr{FT_Incremental_MetricsRec_}
const FT_Incremental_GetGlyphDataFunc = Ptr{Cvoid}
const FT_Incremental_FreeGlyphDataFunc = Ptr{Cvoid}
const FT_Incremental_GetGlyphMetricsFunc = Ptr{Cvoid}

struct FT_Incremental_FuncsRec_
    get_glyph_data::FT_Incremental_GetGlyphDataFunc
    free_glyph_data::FT_Incremental_FreeGlyphDataFunc
    get_glyph_metrics::FT_Incremental_GetGlyphMetricsFunc
end

const FT_Incremental_FuncsRec = FT_Incremental_FuncsRec_

struct FT_Incremental_InterfaceRec_
    funcs::Ptr{FT_Incremental_FuncsRec}
    object::FT_Incremental
end

const FT_Incremental_InterfaceRec = FT_Incremental_InterfaceRec_
const FT_Incremental_Interface = Ptr{FT_Incremental_InterfaceRec}
const FT_LCD_FILTER_FIVE_TAPS = 5

@cenum(FT_LcdFilter_,
    FT_LCD_FILTER_NONE = 0,
    FT_LCD_FILTER_DEFAULT = 1,
    FT_LCD_FILTER_LIGHT = 2,
    FT_LCD_FILTER_LEGACY1 = 3,
    FT_LCD_FILTER_LEGACY = 16,
    FT_LCD_FILTER_MAX = 17,
)

const FT_LcdFilter = FT_LcdFilter_
const FT_LcdFiveTapFilter = NTuple{5, FT_Byte}
const FT_List_Iterator = Ptr{Cvoid}
const FT_List_Destructor = Ptr{Cvoid}

# Skipping MacroDefinition: FT_DEPRECATED_ATTRIBUTE __attribute__ ( ( deprecated ) )

const FT_VAR_AXIS_FLAG_HIDDEN = 1

struct FT_MM_Axis_
    name::Ptr{FT_String}
    minimum::FT_Long
    maximum::FT_Long
end

const FT_MM_Axis = FT_MM_Axis_

struct FT_Multi_Master_
    num_axis::FT_UInt
    num_designs::FT_UInt
    axis::NTuple{4, FT_MM_Axis}
end

const FT_Multi_Master = FT_Multi_Master_

struct FT_Var_Axis_
    name::Ptr{FT_String}
    minimum::FT_Fixed
    def::FT_Fixed
    maximum::FT_Fixed
    tag::FT_ULong
    strid::FT_UInt
end

const FT_Var_Axis = FT_Var_Axis_

struct FT_Var_Named_Style_
    coords::Ptr{FT_Fixed}
    strid::FT_UInt
    psid::FT_UInt
end

const FT_Var_Named_Style = FT_Var_Named_Style_

struct FT_MM_Var_
    num_axis::FT_UInt
    num_designs::FT_UInt
    num_namedstyles::FT_UInt
    axis::Ptr{FT_Var_Axis}
    namedstyle::Ptr{FT_Var_Named_Style}
end

const FT_MM_Var = FT_MM_Var_
const FT_MODULE_FONT_DRIVER = 1
const FT_MODULE_RENDERER = 2
const FT_MODULE_HINTER = 4
const FT_MODULE_STYLER = 8
const FT_MODULE_DRIVER_SCALABLE = 0x0100
const FT_MODULE_DRIVER_NO_OUTLINES = 0x0200
const FT_MODULE_DRIVER_HAS_HINTER = 0x0400
const FT_MODULE_DRIVER_HINTS_LIGHTLY = 0x0800
const ft_module_font_driver = FT_MODULE_FONT_DRIVER
const ft_module_renderer = FT_MODULE_RENDERER
const ft_module_hinter = FT_MODULE_HINTER
const ft_module_styler = FT_MODULE_STYLER
const ft_module_driver_scalable = FT_MODULE_DRIVER_SCALABLE
const ft_module_driver_no_outlines = FT_MODULE_DRIVER_NO_OUTLINES
const ft_module_driver_has_hinter = FT_MODULE_DRIVER_HAS_HINTER
const ft_module_driver_hints_lightly = FT_MODULE_DRIVER_HINTS_LIGHTLY
const FT_Module_Interface = FT_Pointer
const FT_Module_Constructor = Ptr{Cvoid}
const FT_Module_Destructor = Ptr{Cvoid}
const FT_Module_Requester = Ptr{Cvoid}

struct FT_Module_Class_
    module_flags::FT_ULong
    module_size::FT_Long
    module_name::Ptr{FT_String}
    module_version::FT_Fixed
    module_requires::FT_Fixed
    module_interface::Ptr{Cvoid}
    module_init::FT_Module_Constructor
    module_done::FT_Module_Destructor
    get_interface::FT_Module_Requester
end

const FT_Module_Class = FT_Module_Class_
const FT_DebugHook_Func = Ptr{Cvoid}

@cenum(FT_TrueTypeEngineType_,
    FT_TRUETYPE_ENGINE_TYPE_NONE = 0,
    FT_TRUETYPE_ENGINE_TYPE_UNPATENTED = 1,
    FT_TRUETYPE_ENGINE_TYPE_PATENTED = 2,
)

const FT_TrueTypeEngineType = FT_TrueTypeEngineType_

# Skipping MacroDefinition: FT_MODERRDEF ( e , v , s ) FT_Mod_Err_ ## e = 0 ,
# Skipping MacroDefinition: FT_MODERR_START_LIST enum {
# Skipping MacroDefinition: FT_MODERR_END_LIST FT_Mod_Err_Max } ;

const FT_VALIDATE_BASE = 0x0100
const FT_VALIDATE_GDEF = 0x0200
const FT_VALIDATE_GPOS = 0x0400
const FT_VALIDATE_GSUB = 0x0800
const FT_VALIDATE_JSTF = 0x1000
const FT_VALIDATE_MATH = 0x2000
const FT_VALIDATE_OT = ((((FT_VALIDATE_BASE | FT_VALIDATE_GDEF) | FT_VALIDATE_GPOS) | FT_VALIDATE_GSUB) | FT_VALIDATE_JSTF) | FT_VALIDATE_MATH

@cenum(FT_Orientation_,
    FT_ORIENTATION_TRUETYPE = 0,
    FT_ORIENTATION_POSTSCRIPT = 1,
    FT_ORIENTATION_FILL_RIGHT = 0,
    FT_ORIENTATION_FILL_LEFT = 1,
    FT_ORIENTATION_NONE = 2,
)

const FT_Orientation = FT_Orientation_

FT_MAKE_TAG(_x1, _x2, _x3, _x4) = UInt32((Culong(_x1) << 24) | (Culong(_x2) << 16) | (Culong(_x3) << 8) | Culong(_x4))

# Skipping MacroDefinition: FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_FAMILY FT_MAKE_TAG ( 'i' , 'g' , 'p' , 'f' )
const FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_FAMILY = FT_MAKE_TAG('i', 'g', 'p', 'f')
const FT_PARAM_TAG_IGNORE_PREFERRED_FAMILY = FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_FAMILY

# Skipping MacroDefinition: FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_SUBFAMILY FT_MAKE_TAG ( 'i' , 'g' , 'p' , 's' )
const FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_SUBFAMILY = FT_MAKE_TAG('i', 'g', 'p', 's')
const FT_PARAM_TAG_IGNORE_PREFERRED_SUBFAMILY = FT_PARAM_TAG_IGNORE_TYPOGRAPHIC_SUBFAMILY

# Skipping MacroDefinition: FT_PARAM_TAG_INCREMENTAL FT_MAKE_TAG ( 'i' , 'n' , 'c' , 'r' )
# Skipping MacroDefinition: FT_PARAM_TAG_LCD_FILTER_WEIGHTS FT_MAKE_TAG ( 'l' , 'c' , 'd' , 'f' )
# Skipping MacroDefinition: FT_PARAM_TAG_RANDOM_SEED FT_MAKE_TAG ( 's' , 'e' , 'e' , 'd' )
# Skipping MacroDefinition: FT_PARAM_TAG_STEM_DARKENING FT_MAKE_TAG ( 'd' , 'a' , 'r' , 'k' )
# Skipping MacroDefinition: FT_PARAM_TAG_UNPATENTED_HINTING FT_MAKE_TAG ( 'u' , 'n' , 'p' , 'a' )
const FT_PARAM_TAG_INCREMENTAL = FT_MAKE_TAG('i', 'n', 'c', 'r')
const FT_PARAM_TAG_LCD_FILTER_WEIGHTS = FT_MAKE_TAG('l', 'c', 'd', 'f')
const FT_PARAM_TAG_RANDOM_SEED = FT_MAKE_TAG('s', 'e', 'e', 'd')
const FT_PARAM_TAG_STEM_DARKENING = FT_MAKE_TAG('d', 'a', 'r', 'k')
const FT_PARAM_TAG_UNPATENTED_HINTING = FT_MAKE_TAG('u', 'n', 'p', 'a')

const FT_Glyph_Init_Func = FT_Glyph_InitFunc
const FT_Glyph_Done_Func = FT_Glyph_DoneFunc
const FT_Glyph_Transform_Func = FT_Glyph_TransformFunc
const FT_Glyph_BBox_Func = FT_Glyph_GetBBoxFunc
const FT_Glyph_Copy_Func = FT_Glyph_CopyFunc
const FT_Glyph_Prepare_Func = FT_Glyph_PrepareFunc
const FT_Renderer_RenderFunc = Ptr{Cvoid}
const FTRenderer_render = FT_Renderer_RenderFunc
const FT_Renderer_TransformFunc = Ptr{Cvoid}
const FTRenderer_transform = FT_Renderer_TransformFunc
const FT_Renderer_GetCBoxFunc = Ptr{Cvoid}
const FTRenderer_getCBox = FT_Renderer_GetCBoxFunc
const FT_Renderer_SetModeFunc = Ptr{Cvoid}
const FTRenderer_setMode = FT_Renderer_SetModeFunc

struct FT_Renderer_Class_
    root::FT_Module_Class
    glyph_format::FT_Glyph_Format
    render_glyph::FT_Renderer_RenderFunc
    transform_glyph::FT_Renderer_TransformFunc
    get_glyph_cbox::FT_Renderer_GetCBoxFunc
    set_mode::FT_Renderer_SetModeFunc
    raster_class::Ptr{FT_Raster_Funcs}
end

const FT_Renderer_Class = FT_Renderer_Class_

struct FT_SfntName_
    platform_id::FT_UShort
    encoding_id::FT_UShort
    language_id::FT_UShort
    name_id::FT_UShort
    string::Ptr{FT_Byte}
    string_len::FT_UInt
end

const FT_SfntName = FT_SfntName_

struct FT_SfntLangTag_
    string::Ptr{FT_Byte}
    string_len::FT_UInt
end

const FT_SfntLangTag = FT_SfntLangTag_
const FT_StrokerRec_ = Cvoid
const FT_Stroker = Ptr{FT_StrokerRec_}

@cenum(FT_Stroker_LineJoin_,
    FT_STROKER_LINEJOIN_ROUND = 0,
    FT_STROKER_LINEJOIN_BEVEL = 1,
    FT_STROKER_LINEJOIN_MITER_VARIABLE = 2,
    FT_STROKER_LINEJOIN_MITER = 2,
    FT_STROKER_LINEJOIN_MITER_FIXED = 3,
)

const FT_Stroker_LineJoin = FT_Stroker_LineJoin_

@cenum(FT_Stroker_LineCap_,
    FT_STROKER_LINECAP_BUTT = 0,
    FT_STROKER_LINECAP_ROUND = 1,
    FT_STROKER_LINECAP_SQUARE = 2,
)

const FT_Stroker_LineCap = FT_Stroker_LineCap_

@cenum(FT_StrokerBorder_,
    FT_STROKER_BORDER_LEFT = 0,
    FT_STROKER_BORDER_RIGHT = 1,
)

const FT_Bytes = Ptr{FT_Byte}

const FT_StrokerBorder = FT_StrokerBorder_
const FT_StreamRec = FT_StreamRec_
const FT_ANGLE_PI = Int32(180) << 16
const FT_ANGLE_2PI = FT_ANGLE_PI * 2
const FT_ANGLE_PI2 = FT_ANGLE_PI / 2
const FT_ANGLE_PI4 = FT_ANGLE_PI / 4

# Skipping MacroDefinition: FT_MAKE_TAG ( _x1 , _x2 , _x3 , _x4 ) ( FT_Tag ) ( ( ( FT_ULong ) _x1 << 24 ) | ( ( FT_ULong ) _x2 << 16 ) | ( ( FT_ULong ) _x3 << 8 ) | ( FT_ULong ) _x4 )
# Skipping MacroDefinition: FT_IS_EMPTY ( list ) ( ( list ) . head == 0 )
# Skipping MacroDefinition: FT_BOOL ( x ) ( ( FT_Bool ) ( x ) )
# Skipping MacroDefinition: FT_ERR_XCAT ( x , y ) x ## y
# Skipping MacroDefinition: FT_ERR_CAT ( x , y ) FT_ERR_XCAT ( x , y )
# Skipping MacroDefinition: FT_ERR ( e ) FT_ERR_CAT ( FT_ERR_PREFIX , e )
# Skipping MacroDefinition: FT_ERROR_BASE ( x ) ( ( x ) & 0xFF )
# Skipping MacroDefinition: FT_ERROR_MODULE ( x ) ( ( x ) & 0xFF00U )
# Skipping MacroDefinition: FT_ERR_EQ ( x , e ) ( FT_ERROR_BASE ( x ) == FT_ERROR_BASE ( FT_ERR ( e ) ) )
# Skipping MacroDefinition: FT_ERR_NEQ ( x , e ) ( FT_ERROR_BASE ( x ) != FT_ERROR_BASE ( FT_ERR ( e ) ) )
FT_IS_EMPTY(list) = list.head == 0
FT_BOOL(x) = FT_Bool(x)

struct FT_UnitVector_
    x::FT_F2Dot14
    y::FT_F2Dot14
end

const FT_UnitVector = FT_UnitVector_

struct FT_Matrix_
    xx::FT_Fixed
    xy::FT_Fixed
    yx::FT_Fixed
    yy::FT_Fixed
end

const FT_Matrix = FT_Matrix_

struct FT_Data_
    pointer::Ptr{FT_Byte}
    length::FT_Int
end

const FT_Data = FT_Data_
const FT_List = Ptr{FT_ListRec_}
const FT_ListNodeRec = FT_ListNodeRec_
const FT_WinFNT_ID_CP1252 = 0
const FT_WinFNT_ID_DEFAULT = 1
const FT_WinFNT_ID_SYMBOL = 2
const FT_WinFNT_ID_MAC = 77
const FT_WinFNT_ID_CP932 = 128
const FT_WinFNT_ID_CP949 = 129
const FT_WinFNT_ID_CP1361 = 130
const FT_WinFNT_ID_CP936 = 134
const FT_WinFNT_ID_CP950 = 136
const FT_WinFNT_ID_CP1253 = 161
const FT_WinFNT_ID_CP1254 = 162
const FT_WinFNT_ID_CP1258 = 163
const FT_WinFNT_ID_CP1255 = 177
const FT_WinFNT_ID_CP1256 = 178
const FT_WinFNT_ID_CP1257 = 186
const FT_WinFNT_ID_CP1251 = 204
const FT_WinFNT_ID_CP874 = 222
const FT_WinFNT_ID_CP1250 = 238
const FT_WinFNT_ID_OEM = 255

struct FT_WinFNT_HeaderRec_
    version::FT_UShort
    file_size::FT_ULong
    copyright::NTuple{60, FT_Byte}
    file_type::FT_UShort
    nominal_point_size::FT_UShort
    vertical_resolution::FT_UShort
    horizontal_resolution::FT_UShort
    ascent::FT_UShort
    internal_leading::FT_UShort
    external_leading::FT_UShort
    italic::FT_Byte
    underline::FT_Byte
    strike_out::FT_Byte
    weight::FT_UShort
    charset::FT_Byte
    pixel_width::FT_UShort
    pixel_height::FT_UShort
    pitch_and_family::FT_Byte
    avg_width::FT_UShort
    max_width::FT_UShort
    first_char::FT_Byte
    last_char::FT_Byte
    default_char::FT_Byte
    break_char::FT_Byte
    bytes_per_row::FT_UShort
    device_offset::FT_ULong
    face_name_offset::FT_ULong
    bits_pointer::FT_ULong
    bits_offset::FT_ULong
    reserved::FT_Byte
    flags::FT_ULong
    A_space::FT_UShort
    B_space::FT_UShort
    C_space::FT_UShort
    color_table_offset::FT_UShort
    reserved1::NTuple{4, FT_ULong}
end

const FT_WinFNT_HeaderRec = FT_WinFNT_HeaderRec_
const FT_WinFNT_Header = Ptr{FT_WinFNT_HeaderRec_}

@cenum(T1_Blend_Flags_,
    T1_BLEND_UNDERLINE_POSITION = 0,
    T1_BLEND_UNDERLINE_THICKNESS = 1,
    T1_BLEND_ITALIC_ANGLE = 2,
    T1_BLEND_BLUE_VALUES = 3,
    T1_BLEND_OTHER_BLUES = 4,
    T1_BLEND_STANDARD_WIDTH = 5,
    T1_BLEND_STANDARD_HEIGHT = 6,
    T1_BLEND_STEM_SNAP_WIDTHS = 7,
    T1_BLEND_STEM_SNAP_HEIGHTS = 8,
    T1_BLEND_BLUE_SCALE = 9,
    T1_BLEND_BLUE_SHIFT = 10,
    T1_BLEND_FAMILY_BLUES = 11,
    T1_BLEND_FAMILY_OTHER_BLUES = 12,
    T1_BLEND_FORCE_BOLD = 13,
    T1_BLEND_MAX = 14,
)

const t1_blend_underline_position = T1_BLEND_UNDERLINE_POSITION
const t1_blend_underline_thickness = T1_BLEND_UNDERLINE_THICKNESS
const t1_blend_italic_angle = T1_BLEND_ITALIC_ANGLE
const t1_blend_blue_values = T1_BLEND_BLUE_VALUES
const t1_blend_other_blues = T1_BLEND_OTHER_BLUES
const t1_blend_standard_widths = T1_BLEND_STANDARD_WIDTH
const t1_blend_standard_height = T1_BLEND_STANDARD_HEIGHT
const t1_blend_stem_snap_widths = T1_BLEND_STEM_SNAP_WIDTHS
const t1_blend_stem_snap_heights = T1_BLEND_STEM_SNAP_HEIGHTS
const t1_blend_blue_scale = T1_BLEND_BLUE_SCALE
const t1_blend_blue_shift = T1_BLEND_BLUE_SHIFT
const t1_blend_family_blues = T1_BLEND_FAMILY_BLUES
const t1_blend_family_other_blues = T1_BLEND_FAMILY_OTHER_BLUES
const t1_blend_force_bold = T1_BLEND_FORCE_BOLD
const t1_blend_max = T1_BLEND_MAX
const T1_MAX_MM_DESIGNS = 16
const T1_MAX_MM_AXIS = 4
const T1_MAX_MM_MAP_POINTS = 20

struct PS_FontInfoRec_
    version::Ptr{FT_String}
    notice::Ptr{FT_String}
    full_name::Ptr{FT_String}
    family_name::Ptr{FT_String}
    weight::Ptr{FT_String}
    italic_angle::FT_Long
    is_fixed_pitch::FT_Bool
    underline_position::FT_Short
    underline_thickness::FT_UShort
end

const PS_FontInfoRec = PS_FontInfoRec_
const PS_FontInfo = Ptr{PS_FontInfoRec_}
const T1_FontInfo = PS_FontInfoRec

struct PS_PrivateRec_
    unique_id::FT_Int
    lenIV::FT_Int
    num_blue_values::FT_Byte
    num_other_blues::FT_Byte
    num_family_blues::FT_Byte
    num_family_other_blues::FT_Byte
    blue_values::NTuple{14, FT_Short}
    other_blues::NTuple{10, FT_Short}
    family_blues::NTuple{14, FT_Short}
    family_other_blues::NTuple{10, FT_Short}
    blue_scale::FT_Fixed
    blue_shift::FT_Int
    blue_fuzz::FT_Int
    standard_width::NTuple{1, FT_UShort}
    standard_height::NTuple{1, FT_UShort}
    num_snap_widths::FT_Byte
    num_snap_heights::FT_Byte
    force_bold::FT_Bool
    round_stem_up::FT_Bool
    snap_widths::NTuple{13, FT_Short}
    snap_heights::NTuple{13, FT_Short}
    expansion_factor::FT_Fixed
    language_group::FT_Long
    password::FT_Long
    min_feature::NTuple{2, FT_Short}
end

const PS_PrivateRec = PS_PrivateRec_
const PS_Private = Ptr{PS_PrivateRec_}
const T1_Private = PS_PrivateRec
const T1_Blend_Flags = T1_Blend_Flags_

struct PS_DesignMap_
    num_points::FT_Byte
    design_points::Ptr{FT_Long}
    blend_points::Ptr{FT_Fixed}
end

const PS_DesignMapRec = PS_DesignMap_
const PS_DesignMap = Ptr{PS_DesignMap_}
const T1_DesignMap = PS_DesignMapRec

struct PS_BlendRec_
    num_designs::FT_UInt
    num_axis::FT_UInt
    axis_names::NTuple{4, Ptr{FT_String}}
    design_pos::NTuple{16, Ptr{FT_Fixed}}
    design_map::NTuple{4, PS_DesignMapRec}
    weight_vector::Ptr{FT_Fixed}
    default_weight_vector::Ptr{FT_Fixed}
    font_infos::NTuple{17, PS_FontInfo}
    privates::NTuple{17, PS_Private}
    blend_bitflags::FT_ULong
    bboxes::NTuple{17, Ptr{FT_BBox}}
    default_design_vector::NTuple{16, FT_UInt}
    num_default_design_vector::FT_UInt
end

const PS_BlendRec = PS_BlendRec_
const PS_Blend = Ptr{PS_BlendRec_}
const T1_Blend = PS_BlendRec

struct CID_FaceDictRec_
    private_dict::PS_PrivateRec
    len_buildchar::FT_UInt
    forcebold_threshold::FT_Fixed
    stroke_width::FT_Pos
    expansion_factor::FT_Fixed
    paint_type::FT_Byte
    font_type::FT_Byte
    font_matrix::FT_Matrix
    font_offset::FT_Vector
    num_subrs::FT_UInt
    subrmap_offset::FT_ULong
    sd_bytes::FT_Int
end

const CID_FaceDictRec = CID_FaceDictRec_
const CID_FaceDict = Ptr{CID_FaceDictRec_}
const CID_FontDict = CID_FaceDictRec

struct CID_FaceInfoRec_
    cid_font_name::Ptr{FT_String}
    cid_version::FT_Fixed
    cid_font_type::FT_Int
    registry::Ptr{FT_String}
    ordering::Ptr{FT_String}
    supplement::FT_Int
    font_info::PS_FontInfoRec
    font_bbox::FT_BBox
    uid_base::FT_ULong
    num_xuid::FT_Int
    xuid::NTuple{16, FT_ULong}
    cidmap_offset::FT_ULong
    fd_bytes::FT_Int
    gd_bytes::FT_Int
    cid_count::FT_ULong
    num_dicts::FT_Int
    font_dicts::CID_FaceDict
    data_offset::FT_ULong
end

const CID_FaceInfoRec = CID_FaceInfoRec_
const CID_FaceInfo = Ptr{CID_FaceInfoRec_}
const CID_Info = CID_FaceInfoRec

@cenum(T1_EncodingType_,
    T1_ENCODING_TYPE_NONE = 0,
    T1_ENCODING_TYPE_ARRAY = 1,
    T1_ENCODING_TYPE_STANDARD = 2,
    T1_ENCODING_TYPE_ISOLATIN1 = 3,
    T1_ENCODING_TYPE_EXPERT = 4,
)

const T1_EncodingType = T1_EncodingType_

@cenum(PS_Dict_Keys_,
    PS_DICT_FONT_TYPE = 0,
    PS_DICT_FONT_MATRIX = 1,
    PS_DICT_FONT_BBOX = 2,
    PS_DICT_PAINT_TYPE = 3,
    PS_DICT_FONT_NAME = 4,
    PS_DICT_UNIQUE_ID = 5,
    PS_DICT_NUM_CHAR_STRINGS = 6,
    PS_DICT_CHAR_STRING_KEY = 7,
    PS_DICT_CHAR_STRING = 8,
    PS_DICT_ENCODING_TYPE = 9,
    PS_DICT_ENCODING_ENTRY = 10,
    PS_DICT_NUM_SUBRS = 11,
    PS_DICT_SUBR = 12,
    PS_DICT_STD_HW = 13,
    PS_DICT_STD_VW = 14,
    PS_DICT_NUM_BLUE_VALUES = 15,
    PS_DICT_BLUE_VALUE = 16,
    PS_DICT_BLUE_FUZZ = 17,
    PS_DICT_NUM_OTHER_BLUES = 18,
    PS_DICT_OTHER_BLUE = 19,
    PS_DICT_NUM_FAMILY_BLUES = 20,
    PS_DICT_FAMILY_BLUE = 21,
    PS_DICT_NUM_FAMILY_OTHER_BLUES = 22,
    PS_DICT_FAMILY_OTHER_BLUE = 23,
    PS_DICT_BLUE_SCALE = 24,
    PS_DICT_BLUE_SHIFT = 25,
    PS_DICT_NUM_STEM_SNAP_H = 26,
    PS_DICT_STEM_SNAP_H = 27,
    PS_DICT_NUM_STEM_SNAP_V = 28,
    PS_DICT_STEM_SNAP_V = 29,
    PS_DICT_FORCE_BOLD = 30,
    PS_DICT_RND_STEM_UP = 31,
    PS_DICT_MIN_FEATURE = 32,
    PS_DICT_LEN_IV = 33,
    PS_DICT_PASSWORD = 34,
    PS_DICT_LANGUAGE_GROUP = 35,
    PS_DICT_VERSION = 36,
    PS_DICT_NOTICE = 37,
    PS_DICT_FULL_NAME = 38,
    PS_DICT_FAMILY_NAME = 39,
    PS_DICT_WEIGHT = 40,
    PS_DICT_IS_FIXED_PITCH = 41,
    PS_DICT_UNDERLINE_POSITION = 42,
    PS_DICT_UNDERLINE_THICKNESS = 43,
    PS_DICT_FS_TYPE = 44,
    PS_DICT_ITALIC_ANGLE = 45,
    PS_DICT_MAX = 45,
)

const PS_Dict_Keys = PS_Dict_Keys_
const TT_PLATFORM_APPLE_UNICODE = 0
const TT_PLATFORM_MACINTOSH = 1
const TT_PLATFORM_ISO = 2
const TT_PLATFORM_MICROSOFT = 3
const TT_PLATFORM_CUSTOM = 4
const TT_PLATFORM_ADOBE = 7
const TT_APPLE_ID_DEFAULT = 0
const TT_APPLE_ID_UNICODE_1_1 = 1
const TT_APPLE_ID_ISO_10646 = 2
const TT_APPLE_ID_UNICODE_2_0 = 3
const TT_APPLE_ID_UNICODE_32 = 4
const TT_APPLE_ID_VARIANT_SELECTOR = 5
const TT_APPLE_ID_FULL_UNICODE = 6
const TT_MAC_ID_ROMAN = 0
const TT_MAC_ID_JAPANESE = 1
const TT_MAC_ID_TRADITIONAL_CHINESE = 2
const TT_MAC_ID_KOREAN = 3
const TT_MAC_ID_ARABIC = 4
const TT_MAC_ID_HEBREW = 5
const TT_MAC_ID_GREEK = 6
const TT_MAC_ID_RUSSIAN = 7
const TT_MAC_ID_RSYMBOL = 8
const TT_MAC_ID_DEVANAGARI = 9
const TT_MAC_ID_GURMUKHI = 10
const TT_MAC_ID_GUJARATI = 11
const TT_MAC_ID_ORIYA = 12
const TT_MAC_ID_BENGALI = 13
const TT_MAC_ID_TAMIL = 14
const TT_MAC_ID_TELUGU = 15
const TT_MAC_ID_KANNADA = 16
const TT_MAC_ID_MALAYALAM = 17
const TT_MAC_ID_SINHALESE = 18
const TT_MAC_ID_BURMESE = 19
const TT_MAC_ID_KHMER = 20
const TT_MAC_ID_THAI = 21
const TT_MAC_ID_LAOTIAN = 22
const TT_MAC_ID_GEORGIAN = 23
const TT_MAC_ID_ARMENIAN = 24
const TT_MAC_ID_MALDIVIAN = 25
const TT_MAC_ID_SIMPLIFIED_CHINESE = 25
const TT_MAC_ID_TIBETAN = 26
const TT_MAC_ID_MONGOLIAN = 27
const TT_MAC_ID_GEEZ = 28
const TT_MAC_ID_SLAVIC = 29
const TT_MAC_ID_VIETNAMESE = 30
const TT_MAC_ID_SINDHI = 31
const TT_MAC_ID_UNINTERP = 32
const TT_ISO_ID_7BIT_ASCII = 0
const TT_ISO_ID_10646 = 1
const TT_ISO_ID_8859_1 = 2
const TT_MS_ID_SYMBOL_CS = 0
const TT_MS_ID_UNICODE_CS = 1
const TT_MS_ID_SJIS = 2
const TT_MS_ID_PRC = 3
const TT_MS_ID_BIG_5 = 4
const TT_MS_ID_WANSUNG = 5
const TT_MS_ID_JOHAB = 6
const TT_MS_ID_UCS_4 = 10
const TT_MS_ID_GB2312 = TT_MS_ID_PRC
const TT_ADOBE_ID_STANDARD = 0
const TT_ADOBE_ID_EXPERT = 1
const TT_ADOBE_ID_CUSTOM = 2
const TT_ADOBE_ID_LATIN_1 = 3
const TT_MAC_LANGID_ENGLISH = 0
const TT_MAC_LANGID_FRENCH = 1
const TT_MAC_LANGID_GERMAN = 2
const TT_MAC_LANGID_ITALIAN = 3
const TT_MAC_LANGID_DUTCH = 4
const TT_MAC_LANGID_SWEDISH = 5
const TT_MAC_LANGID_SPANISH = 6
const TT_MAC_LANGID_DANISH = 7
const TT_MAC_LANGID_PORTUGUESE = 8
const TT_MAC_LANGID_NORWEGIAN = 9
const TT_MAC_LANGID_HEBREW = 10
const TT_MAC_LANGID_JAPANESE = 11
const TT_MAC_LANGID_ARABIC = 12
const TT_MAC_LANGID_FINNISH = 13
const TT_MAC_LANGID_GREEK = 14
const TT_MAC_LANGID_ICELANDIC = 15
const TT_MAC_LANGID_MALTESE = 16
const TT_MAC_LANGID_TURKISH = 17
const TT_MAC_LANGID_CROATIAN = 18
const TT_MAC_LANGID_CHINESE_TRADITIONAL = 19
const TT_MAC_LANGID_URDU = 20
const TT_MAC_LANGID_HINDI = 21
const TT_MAC_LANGID_THAI = 22
const TT_MAC_LANGID_KOREAN = 23
const TT_MAC_LANGID_LITHUANIAN = 24
const TT_MAC_LANGID_POLISH = 25
const TT_MAC_LANGID_HUNGARIAN = 26
const TT_MAC_LANGID_ESTONIAN = 27
const TT_MAC_LANGID_LETTISH = 28
const TT_MAC_LANGID_SAAMISK = 29
const TT_MAC_LANGID_FAEROESE = 30
const TT_MAC_LANGID_FARSI = 31
const TT_MAC_LANGID_RUSSIAN = 32
const TT_MAC_LANGID_CHINESE_SIMPLIFIED = 33
const TT_MAC_LANGID_FLEMISH = 34
const TT_MAC_LANGID_IRISH = 35
const TT_MAC_LANGID_ALBANIAN = 36
const TT_MAC_LANGID_ROMANIAN = 37
const TT_MAC_LANGID_CZECH = 38
const TT_MAC_LANGID_SLOVAK = 39
const TT_MAC_LANGID_SLOVENIAN = 40
const TT_MAC_LANGID_YIDDISH = 41
const TT_MAC_LANGID_SERBIAN = 42
const TT_MAC_LANGID_MACEDONIAN = 43
const TT_MAC_LANGID_BULGARIAN = 44
const TT_MAC_LANGID_UKRAINIAN = 45
const TT_MAC_LANGID_BYELORUSSIAN = 46
const TT_MAC_LANGID_UZBEK = 47
const TT_MAC_LANGID_KAZAKH = 48
const TT_MAC_LANGID_AZERBAIJANI = 49
const TT_MAC_LANGID_AZERBAIJANI_CYRILLIC_SCRIPT = 49
const TT_MAC_LANGID_AZERBAIJANI_ARABIC_SCRIPT = 50
const TT_MAC_LANGID_ARMENIAN = 51
const TT_MAC_LANGID_GEORGIAN = 52
const TT_MAC_LANGID_MOLDAVIAN = 53
const TT_MAC_LANGID_KIRGHIZ = 54
const TT_MAC_LANGID_TAJIKI = 55
const TT_MAC_LANGID_TURKMEN = 56
const TT_MAC_LANGID_MONGOLIAN = 57
const TT_MAC_LANGID_MONGOLIAN_MONGOLIAN_SCRIPT = 57
const TT_MAC_LANGID_MONGOLIAN_CYRILLIC_SCRIPT = 58
const TT_MAC_LANGID_PASHTO = 59
const TT_MAC_LANGID_KURDISH = 60
const TT_MAC_LANGID_KASHMIRI = 61
const TT_MAC_LANGID_SINDHI = 62
const TT_MAC_LANGID_TIBETAN = 63
const TT_MAC_LANGID_NEPALI = 64
const TT_MAC_LANGID_SANSKRIT = 65
const TT_MAC_LANGID_MARATHI = 66
const TT_MAC_LANGID_BENGALI = 67
const TT_MAC_LANGID_ASSAMESE = 68
const TT_MAC_LANGID_GUJARATI = 69
const TT_MAC_LANGID_PUNJABI = 70
const TT_MAC_LANGID_ORIYA = 71
const TT_MAC_LANGID_MALAYALAM = 72
const TT_MAC_LANGID_KANNADA = 73
const TT_MAC_LANGID_TAMIL = 74
const TT_MAC_LANGID_TELUGU = 75
const TT_MAC_LANGID_SINHALESE = 76
const TT_MAC_LANGID_BURMESE = 77
const TT_MAC_LANGID_KHMER = 78
const TT_MAC_LANGID_LAO = 79
const TT_MAC_LANGID_VIETNAMESE = 80
const TT_MAC_LANGID_INDONESIAN = 81
const TT_MAC_LANGID_TAGALOG = 82
const TT_MAC_LANGID_MALAY_ROMAN_SCRIPT = 83
const TT_MAC_LANGID_MALAY_ARABIC_SCRIPT = 84
const TT_MAC_LANGID_AMHARIC = 85
const TT_MAC_LANGID_TIGRINYA = 86
const TT_MAC_LANGID_GALLA = 87
const TT_MAC_LANGID_SOMALI = 88
const TT_MAC_LANGID_SWAHILI = 89
const TT_MAC_LANGID_RUANDA = 90
const TT_MAC_LANGID_RUNDI = 91
const TT_MAC_LANGID_CHEWA = 92
const TT_MAC_LANGID_MALAGASY = 93
const TT_MAC_LANGID_ESPERANTO = 94
const TT_MAC_LANGID_WELSH = 128
const TT_MAC_LANGID_BASQUE = 129
const TT_MAC_LANGID_CATALAN = 130
const TT_MAC_LANGID_LATIN = 131
const TT_MAC_LANGID_QUECHUA = 132
const TT_MAC_LANGID_GUARANI = 133
const TT_MAC_LANGID_AYMARA = 134
const TT_MAC_LANGID_TATAR = 135
const TT_MAC_LANGID_UIGHUR = 136
const TT_MAC_LANGID_DZONGKHA = 137
const TT_MAC_LANGID_JAVANESE = 138
const TT_MAC_LANGID_SUNDANESE = 139
const TT_MAC_LANGID_GALICIAN = 140
const TT_MAC_LANGID_AFRIKAANS = 141
const TT_MAC_LANGID_BRETON = 142
const TT_MAC_LANGID_INUKTITUT = 143
const TT_MAC_LANGID_SCOTTISH_GAELIC = 144
const TT_MAC_LANGID_MANX_GAELIC = 145
const TT_MAC_LANGID_IRISH_GAELIC = 146
const TT_MAC_LANGID_TONGAN = 147
const TT_MAC_LANGID_GREEK_POLYTONIC = 148
const TT_MAC_LANGID_GREELANDIC = 149
const TT_MAC_LANGID_AZERBAIJANI_ROMAN_SCRIPT = 150
const TT_MS_LANGID_ARABIC_SAUDI_ARABIA = 0x0401
const TT_MS_LANGID_ARABIC_IRAQ = 0x0801
const TT_MS_LANGID_ARABIC_EGYPT = 0x0c01
const TT_MS_LANGID_ARABIC_LIBYA = 0x1001
const TT_MS_LANGID_ARABIC_ALGERIA = 0x1401
const TT_MS_LANGID_ARABIC_MOROCCO = 0x1801
const TT_MS_LANGID_ARABIC_TUNISIA = 0x1c01
const TT_MS_LANGID_ARABIC_OMAN = 0x2001
const TT_MS_LANGID_ARABIC_YEMEN = 0x2401
const TT_MS_LANGID_ARABIC_SYRIA = 0x2801
const TT_MS_LANGID_ARABIC_JORDAN = 0x2c01
const TT_MS_LANGID_ARABIC_LEBANON = 0x3001
const TT_MS_LANGID_ARABIC_KUWAIT = 0x3401
const TT_MS_LANGID_ARABIC_UAE = 0x3801
const TT_MS_LANGID_ARABIC_BAHRAIN = 0x3c01
const TT_MS_LANGID_ARABIC_QATAR = 0x4001
const TT_MS_LANGID_BULGARIAN_BULGARIA = 0x0402
const TT_MS_LANGID_CATALAN_CATALAN = 0x0403
const TT_MS_LANGID_CHINESE_TAIWAN = 0x0404
const TT_MS_LANGID_CHINESE_PRC = 0x0804
const TT_MS_LANGID_CHINESE_HONG_KONG = 0x0c04
const TT_MS_LANGID_CHINESE_SINGAPORE = 0x1004
const TT_MS_LANGID_CHINESE_MACAO = 0x1404
const TT_MS_LANGID_CZECH_CZECH_REPUBLIC = 0x0405
const TT_MS_LANGID_DANISH_DENMARK = 0x0406
const TT_MS_LANGID_GERMAN_GERMANY = 0x0407
const TT_MS_LANGID_GERMAN_SWITZERLAND = 0x0807
const TT_MS_LANGID_GERMAN_AUSTRIA = 0x0c07
const TT_MS_LANGID_GERMAN_LUXEMBOURG = 0x1007
const TT_MS_LANGID_GERMAN_LIECHTENSTEIN = 0x1407
const TT_MS_LANGID_GREEK_GREECE = 0x0408
const TT_MS_LANGID_ENGLISH_UNITED_STATES = 0x0409
const TT_MS_LANGID_ENGLISH_UNITED_KINGDOM = 0x0809
const TT_MS_LANGID_ENGLISH_AUSTRALIA = 0x0c09
const TT_MS_LANGID_ENGLISH_CANADA = 0x1009
const TT_MS_LANGID_ENGLISH_NEW_ZEALAND = 0x1409
const TT_MS_LANGID_ENGLISH_IRELAND = 0x1809
const TT_MS_LANGID_ENGLISH_SOUTH_AFRICA = 0x1c09
const TT_MS_LANGID_ENGLISH_JAMAICA = 0x2009
const TT_MS_LANGID_ENGLISH_CARIBBEAN = 0x2409
const TT_MS_LANGID_ENGLISH_BELIZE = 0x2809
const TT_MS_LANGID_ENGLISH_TRINIDAD = 0x2c09
const TT_MS_LANGID_ENGLISH_ZIMBABWE = 0x3009
const TT_MS_LANGID_ENGLISH_PHILIPPINES = 0x3409
const TT_MS_LANGID_ENGLISH_INDIA = 0x4009
const TT_MS_LANGID_ENGLISH_MALAYSIA = 0x4409
const TT_MS_LANGID_ENGLISH_SINGAPORE = 0x4809
const TT_MS_LANGID_SPANISH_SPAIN_TRADITIONAL_SORT = 0x040a
const TT_MS_LANGID_SPANISH_MEXICO = 0x080a
const TT_MS_LANGID_SPANISH_SPAIN_MODERN_SORT = 0x0c0a
const TT_MS_LANGID_SPANISH_GUATEMALA = 0x100a
const TT_MS_LANGID_SPANISH_COSTA_RICA = 0x140a
const TT_MS_LANGID_SPANISH_PANAMA = 0x180a
const TT_MS_LANGID_SPANISH_DOMINICAN_REPUBLIC = 0x1c0a
const TT_MS_LANGID_SPANISH_VENEZUELA = 0x200a
const TT_MS_LANGID_SPANISH_COLOMBIA = 0x240a
const TT_MS_LANGID_SPANISH_PERU = 0x280a
const TT_MS_LANGID_SPANISH_ARGENTINA = 0x2c0a
const TT_MS_LANGID_SPANISH_ECUADOR = 0x300a
const TT_MS_LANGID_SPANISH_CHILE = 0x340a
const TT_MS_LANGID_SPANISH_URUGUAY = 0x380a
const TT_MS_LANGID_SPANISH_PARAGUAY = 0x3c0a
const TT_MS_LANGID_SPANISH_BOLIVIA = 0x400a
const TT_MS_LANGID_SPANISH_EL_SALVADOR = 0x440a
const TT_MS_LANGID_SPANISH_HONDURAS = 0x480a
const TT_MS_LANGID_SPANISH_NICARAGUA = 0x4c0a
const TT_MS_LANGID_SPANISH_PUERTO_RICO = 0x500a
const TT_MS_LANGID_SPANISH_UNITED_STATES = 0x540a
const TT_MS_LANGID_FINNISH_FINLAND = 0x040b
const TT_MS_LANGID_FRENCH_FRANCE = 0x040c
const TT_MS_LANGID_FRENCH_BELGIUM = 0x080c
const TT_MS_LANGID_FRENCH_CANADA = 0x0c0c
const TT_MS_LANGID_FRENCH_SWITZERLAND = 0x100c
const TT_MS_LANGID_FRENCH_LUXEMBOURG = 0x140c
const TT_MS_LANGID_FRENCH_MONACO = 0x180c
const TT_MS_LANGID_HEBREW_ISRAEL = 0x040d
const TT_MS_LANGID_HUNGARIAN_HUNGARY = 0x040e
const TT_MS_LANGID_ICELANDIC_ICELAND = Float32(0x0040)
const TT_MS_LANGID_ITALIAN_ITALY = 0x0410
const TT_MS_LANGID_ITALIAN_SWITZERLAND = 0x0810
const TT_MS_LANGID_JAPANESE_JAPAN = 0x0411
const TT_MS_LANGID_KOREAN_KOREA = 0x0412
const TT_MS_LANGID_DUTCH_NETHERLANDS = 0x0413
const TT_MS_LANGID_DUTCH_BELGIUM = 0x0813
const TT_MS_LANGID_NORWEGIAN_NORWAY_BOKMAL = 0x0414
const TT_MS_LANGID_NORWEGIAN_NORWAY_NYNORSK = 0x0814
const TT_MS_LANGID_POLISH_POLAND = 0x0415
const TT_MS_LANGID_PORTUGUESE_BRAZIL = 0x0416
const TT_MS_LANGID_PORTUGUESE_PORTUGAL = 0x0816
const TT_MS_LANGID_ROMANSH_SWITZERLAND = 0x0417
const TT_MS_LANGID_ROMANIAN_ROMANIA = 0x0418
const TT_MS_LANGID_RUSSIAN_RUSSIA = 0x0419
const TT_MS_LANGID_CROATIAN_CROATIA = 0x041a
const TT_MS_LANGID_SERBIAN_SERBIA_LATIN = 0x081a
const TT_MS_LANGID_SERBIAN_SERBIA_CYRILLIC = 0x0c1a
const TT_MS_LANGID_CROATIAN_BOSNIA_HERZEGOVINA = 0x101a
const TT_MS_LANGID_BOSNIAN_BOSNIA_HERZEGOVINA = 0x141a
const TT_MS_LANGID_SERBIAN_BOSNIA_HERZ_LATIN = 0x181a
const TT_MS_LANGID_SERBIAN_BOSNIA_HERZ_CYRILLIC = 0x1c1a
const TT_MS_LANGID_BOSNIAN_BOSNIA_HERZ_CYRILLIC = 0x201a
const TT_MS_LANGID_SLOVAK_SLOVAKIA = 0x041b
const TT_MS_LANGID_ALBANIAN_ALBANIA = 0x041c
const TT_MS_LANGID_SWEDISH_SWEDEN = 0x041d
const TT_MS_LANGID_SWEDISH_FINLAND = 0x081d
const TT_MS_LANGID_THAI_THAILAND = 0x041e
const TT_MS_LANGID_TURKISH_TURKEY = Float32(0x0041)
const TT_MS_LANGID_URDU_PAKISTAN = 0x0420
const TT_MS_LANGID_INDONESIAN_INDONESIA = 0x0421
const TT_MS_LANGID_UKRAINIAN_UKRAINE = 0x0422
const TT_MS_LANGID_BELARUSIAN_BELARUS = 0x0423
const TT_MS_LANGID_SLOVENIAN_SLOVENIA = 0x0424
const TT_MS_LANGID_ESTONIAN_ESTONIA = 0x0425
const TT_MS_LANGID_LATVIAN_LATVIA = 0x0426
const TT_MS_LANGID_LITHUANIAN_LITHUANIA = 0x0427
const TT_MS_LANGID_TAJIK_TAJIKISTAN = 0x0428
const TT_MS_LANGID_VIETNAMESE_VIET_NAM = 0x042a
const TT_MS_LANGID_ARMENIAN_ARMENIA = 0x042b
const TT_MS_LANGID_AZERI_AZERBAIJAN_LATIN = 0x042c
const TT_MS_LANGID_AZERI_AZERBAIJAN_CYRILLIC = 0x082c
const TT_MS_LANGID_BASQUE_BASQUE = 0x042d
const TT_MS_LANGID_UPPER_SORBIAN_GERMANY = 0x042e
const TT_MS_LANGID_LOWER_SORBIAN_GERMANY = 0x082e
const TT_MS_LANGID_MACEDONIAN_MACEDONIA = Float32(0x0042)
const TT_MS_LANGID_SETSWANA_SOUTH_AFRICA = 0x0432
const TT_MS_LANGID_ISIXHOSA_SOUTH_AFRICA = 0x0434
const TT_MS_LANGID_ISIZULU_SOUTH_AFRICA = 0x0435
const TT_MS_LANGID_AFRIKAANS_SOUTH_AFRICA = 0x0436
const TT_MS_LANGID_GEORGIAN_GEORGIA = 0x0437
const TT_MS_LANGID_FAEROESE_FAEROE_ISLANDS = 0x0438
const TT_MS_LANGID_HINDI_INDIA = 0x0439
const TT_MS_LANGID_MALTESE_MALTA = 0x043a
const TT_MS_LANGID_SAMI_NORTHERN_NORWAY = 0x043b
const TT_MS_LANGID_SAMI_NORTHERN_SWEDEN = 0x083b
const TT_MS_LANGID_SAMI_NORTHERN_FINLAND = 0x0c3b
const TT_MS_LANGID_SAMI_LULE_NORWAY = 0x103b
const TT_MS_LANGID_SAMI_LULE_SWEDEN = 0x143b
const TT_MS_LANGID_SAMI_SOUTHERN_NORWAY = 0x183b
const TT_MS_LANGID_SAMI_SOUTHERN_SWEDEN = 0x1c3b
const TT_MS_LANGID_SAMI_SKOLT_FINLAND = 0x203b
const TT_MS_LANGID_SAMI_INARI_FINLAND = 0x243b
const TT_MS_LANGID_IRISH_IRELAND = 0x083c
const TT_MS_LANGID_MALAY_MALAYSIA = 0x043e
const TT_MS_LANGID_MALAY_BRUNEI_DARUSSALAM = 0x083e
const TT_MS_LANGID_KAZAKH_KAZAKHSTAN = Float32(0x0043)

# Skipping MacroDefinition: TT_MS_LANGID_KYRGYZ_KYRGYZSTAN /* Cyrillic*/ 0x0440
const TT_MS_LANGID_KYRGYZ_KYRGYZSTAN = 0x0440
const TT_MS_LANGID_KISWAHILI_KENYA = 0x0441
const TT_MS_LANGID_TURKMEN_TURKMENISTAN = 0x0442
const TT_MS_LANGID_UZBEK_UZBEKISTAN_LATIN = 0x0443
const TT_MS_LANGID_UZBEK_UZBEKISTAN_CYRILLIC = 0x0843
const TT_MS_LANGID_TATAR_RUSSIA = 0x0444
const TT_MS_LANGID_BENGALI_INDIA = 0x0445
const TT_MS_LANGID_BENGALI_BANGLADESH = 0x0845
const TT_MS_LANGID_PUNJABI_INDIA = 0x0446
const TT_MS_LANGID_GUJARATI_INDIA = 0x0447
const TT_MS_LANGID_ODIA_INDIA = 0x0448
const TT_MS_LANGID_TAMIL_INDIA = 0x0449
const TT_MS_LANGID_TELUGU_INDIA = 0x044a
const TT_MS_LANGID_KANNADA_INDIA = 0x044b
const TT_MS_LANGID_MALAYALAM_INDIA = 0x044c
const TT_MS_LANGID_ASSAMESE_INDIA = 0x044d
const TT_MS_LANGID_MARATHI_INDIA = 0x044e
const TT_MS_LANGID_SANSKRIT_INDIA = Float32(0x0044)

# Skipping MacroDefinition: TT_MS_LANGID_MONGOLIAN_MONGOLIA /* Cyrillic */ 0x0450
const TT_MS_LANGID_MONGOLIAN_MONGOLIA = 0x0450
const TT_MS_LANGID_MONGOLIAN_PRC = 0x0850
const TT_MS_LANGID_TIBETAN_PRC = 0x0451
const TT_MS_LANGID_WELSH_UNITED_KINGDOM = 0x0452
const TT_MS_LANGID_KHMER_CAMBODIA = 0x0453
const TT_MS_LANGID_LAO_LAOS = 0x0454
const TT_MS_LANGID_GALICIAN_GALICIAN = 0x0456
const TT_MS_LANGID_KONKANI_INDIA = 0x0457
const TT_MS_LANGID_SYRIAC_SYRIA = 0x045a
const TT_MS_LANGID_SINHALA_SRI_LANKA = 0x045b
const TT_MS_LANGID_INUKTITUT_CANADA = 0x045d
const TT_MS_LANGID_INUKTITUT_CANADA_LATIN = 0x085d
const TT_MS_LANGID_AMHARIC_ETHIOPIA = 0x045e
const TT_MS_LANGID_TAMAZIGHT_ALGERIA = Float32(0x0085)
const TT_MS_LANGID_NEPALI_NEPAL = 0x0461
const TT_MS_LANGID_FRISIAN_NETHERLANDS = 0x0462
const TT_MS_LANGID_PASHTO_AFGHANISTAN = 0x0463
const TT_MS_LANGID_FILIPINO_PHILIPPINES = 0x0464
const TT_MS_LANGID_DHIVEHI_MALDIVES = 0x0465
const TT_MS_LANGID_HAUSA_NIGERIA = 0x0468
const TT_MS_LANGID_YORUBA_NIGERIA = 0x046a
const TT_MS_LANGID_QUECHUA_BOLIVIA = 0x046b
const TT_MS_LANGID_QUECHUA_ECUADOR = 0x086b
const TT_MS_LANGID_QUECHUA_PERU = 0x0c6b
const TT_MS_LANGID_SESOTHO_SA_LEBOA_SOUTH_AFRICA = 0x046c
const TT_MS_LANGID_BASHKIR_RUSSIA = 0x046d
const TT_MS_LANGID_LUXEMBOURGISH_LUXEMBOURG = 0x046e
const TT_MS_LANGID_GREENLANDIC_GREENLAND = Float32(0x0046)
const TT_MS_LANGID_IGBO_NIGERIA = 0x0470
const TT_MS_LANGID_YI_PRC = 0x0478
const TT_MS_LANGID_MAPUDUNGUN_CHILE = 0x047a
const TT_MS_LANGID_MOHAWK_MOHAWK = 0x047c
const TT_MS_LANGID_BRETON_FRANCE = 0x047e
const TT_MS_LANGID_UIGHUR_PRC = 0x0480
const TT_MS_LANGID_MAORI_NEW_ZEALAND = 0x0481
const TT_MS_LANGID_OCCITAN_FRANCE = 0x0482
const TT_MS_LANGID_CORSICAN_FRANCE = 0x0483
const TT_MS_LANGID_ALSATIAN_FRANCE = 0x0484
const TT_MS_LANGID_YAKUT_RUSSIA = 0x0485
const TT_MS_LANGID_KICHE_GUATEMALA = 0x0486
const TT_MS_LANGID_KINYARWANDA_RWANDA = 0x0487
const TT_MS_LANGID_WOLOF_SENEGAL = 0x0488
const TT_MS_LANGID_DARI_AFGHANISTAN = 0x048c
const TT_MS_LANGID_ARABIC_GENERAL = 0x0001
const TT_MS_LANGID_CATALAN_SPAIN = TT_MS_LANGID_CATALAN_CATALAN
const TT_MS_LANGID_CHINESE_GENERAL = 0x0004
const TT_MS_LANGID_CHINESE_MACAU = TT_MS_LANGID_CHINESE_MACAO
const TT_MS_LANGID_GERMAN_LIECHTENSTEI = TT_MS_LANGID_GERMAN_LIECHTENSTEIN
const TT_MS_LANGID_ENGLISH_GENERAL = 0x0009
const TT_MS_LANGID_ENGLISH_INDONESIA = 0x3809
const TT_MS_LANGID_ENGLISH_HONG_KONG = 0x3c09
const TT_MS_LANGID_SPANISH_SPAIN_INTERNATIONAL_SORT = TT_MS_LANGID_SPANISH_SPAIN_MODERN_SORT
const TT_MS_LANGID_SPANISH_LATIN_AMERICA = UInt32(0xe40a)
const TT_MS_LANGID_FRENCH_WEST_INDIES = 0x1c0c
const TT_MS_LANGID_FRENCH_REUNION = 0x200c
const TT_MS_LANGID_FRENCH_CONGO = 0x240c
const TT_MS_LANGID_FRENCH_ZAIRE = TT_MS_LANGID_FRENCH_CONGO
const TT_MS_LANGID_FRENCH_SENEGAL = 0x280c
const TT_MS_LANGID_FRENCH_CAMEROON = 0x2c0c
const TT_MS_LANGID_FRENCH_COTE_D_IVOIRE = 0x300c
const TT_MS_LANGID_FRENCH_MALI = 0x340c
const TT_MS_LANGID_FRENCH_MOROCCO = 0x380c
const TT_MS_LANGID_FRENCH_HAITI = 0x3c0c
const TT_MS_LANGID_FRENCH_NORTH_AFRICA = UInt32(0xe40c)
const TT_MS_LANGID_KOREAN_EXTENDED_WANSUNG_KOREA = TT_MS_LANGID_KOREAN_KOREA
const TT_MS_LANGID_KOREAN_JOHAB_KOREA = 0x0812
const TT_MS_LANGID_RHAETO_ROMANIC_SWITZERLAND = TT_MS_LANGID_ROMANSH_SWITZERLAND
const TT_MS_LANGID_MOLDAVIAN_MOLDAVIA = 0x0818
const TT_MS_LANGID_RUSSIAN_MOLDAVIA = 0x0819
const TT_MS_LANGID_URDU_INDIA = 0x0820
const TT_MS_LANGID_CLASSIC_LITHUANIAN_LITHUANIA = 0x0827
const TT_MS_LANGID_SLOVENE_SLOVENIA = TT_MS_LANGID_SLOVENIAN_SLOVENIA
const TT_MS_LANGID_FARSI_IRAN = 0x0429
const TT_MS_LANGID_BASQUE_SPAIN = TT_MS_LANGID_BASQUE_BASQUE
const TT_MS_LANGID_SORBIAN_GERMANY = TT_MS_LANGID_UPPER_SORBIAN_GERMANY
const TT_MS_LANGID_SUTU_SOUTH_AFRICA = 0x0430
const TT_MS_LANGID_TSONGA_SOUTH_AFRICA = 0x0431
const TT_MS_LANGID_TSWANA_SOUTH_AFRICA = TT_MS_LANGID_SETSWANA_SOUTH_AFRICA
const TT_MS_LANGID_VENDA_SOUTH_AFRICA = 0x0433
const TT_MS_LANGID_XHOSA_SOUTH_AFRICA = TT_MS_LANGID_ISIXHOSA_SOUTH_AFRICA
const TT_MS_LANGID_ZULU_SOUTH_AFRICA = TT_MS_LANGID_ISIZULU_SOUTH_AFRICA
const TT_MS_LANGID_SAAMI_LAPONIA = 0x043b
const TT_MS_LANGID_IRISH_GAELIC_IRELAND = 0x043c
const TT_MS_LANGID_SCOTTISH_GAELIC_UNITED_KINGDOM = 0x083c
const TT_MS_LANGID_YIDDISH_GERMANY = 0x043d
const TT_MS_LANGID_KAZAK_KAZAKSTAN = TT_MS_LANGID_KAZAKH_KAZAKHSTAN
const TT_MS_LANGID_KIRGHIZ_KIRGHIZ_REPUBLIC = TT_MS_LANGID_KYRGYZ_KYRGYZSTAN
const TT_MS_LANGID_KIRGHIZ_KIRGHIZSTAN = TT_MS_LANGID_KYRGYZ_KYRGYZSTAN
const TT_MS_LANGID_SWAHILI_KENYA = TT_MS_LANGID_KISWAHILI_KENYA
const TT_MS_LANGID_TATAR_TATARSTAN = TT_MS_LANGID_TATAR_RUSSIA
const TT_MS_LANGID_PUNJABI_ARABIC_PAKISTAN = 0x0846
const TT_MS_LANGID_ORIYA_INDIA = TT_MS_LANGID_ODIA_INDIA
const TT_MS_LANGID_MONGOLIAN_MONGOLIA_MONGOLIAN = TT_MS_LANGID_MONGOLIAN_PRC
const TT_MS_LANGID_TIBETAN_CHINA = TT_MS_LANGID_TIBETAN_PRC
const TT_MS_LANGID_DZONGHKA_BHUTAN = 0x0851
const TT_MS_LANGID_TIBETAN_BHUTAN = TT_MS_LANGID_DZONGHKA_BHUTAN
const TT_MS_LANGID_WELSH_WALES = TT_MS_LANGID_WELSH_UNITED_KINGDOM
const TT_MS_LANGID_BURMESE_MYANMAR = 0x0455
const TT_MS_LANGID_GALICIAN_SPAIN = TT_MS_LANGID_GALICIAN_GALICIAN

# Skipping MacroDefinition: TT_MS_LANGID_MANIPURI_INDIA /* Bengali */ 0x0458
# Skipping MacroDefinition: TT_MS_LANGID_SINDHI_INDIA /* Arabic */ 0x0459
const TT_MS_LANGID_MANIPURI_INDIA = 0x0458
const TT_MS_LANGID_SINDHI_INDIA = 0x0459
const TT_MS_LANGID_SINDHI_PAKISTAN = 0x0859
const TT_MS_LANGID_SINHALESE_SRI_LANKA = TT_MS_LANGID_SINHALA_SRI_LANKA
const TT_MS_LANGID_CHEROKEE_UNITED_STATES = 0x045c

# Skipping MacroDefinition: TT_MS_LANGID_TAMAZIGHT_MOROCCO /* Arabic */ 0x045F
const TT_MS_LANGID_TAMAZIGHT_MOROCCO = 0x045F
const TT_MS_LANGID_TAMAZIGHT_MOROCCO_LATIN = TT_MS_LANGID_TAMAZIGHT_ALGERIA

# Skipping MacroDefinition: TT_MS_LANGID_KASHMIRI_PAKISTAN /* Arabic */ 0x0460
const TT_MS_LANGID_KASHMIRI_PAKISTAN = 0x0460
const TT_MS_LANGID_KASHMIRI_SASIA = 0x0860
const TT_MS_LANGID_KASHMIRI_INDIA = TT_MS_LANGID_KASHMIRI_SASIA
const TT_MS_LANGID_NEPALI_INDIA = 0x0861
const TT_MS_LANGID_DIVEHI_MALDIVES = TT_MS_LANGID_DHIVEHI_MALDIVES
const TT_MS_LANGID_EDO_NIGERIA = 0x0466
const TT_MS_LANGID_FULFULDE_NIGERIA = 0x0467
const TT_MS_LANGID_IBIBIO_NIGERIA = 0x0469
const TT_MS_LANGID_SEPEDI_SOUTH_AFRICA = TT_MS_LANGID_SESOTHO_SA_LEBOA_SOUTH_AFRICA
const TT_MS_LANGID_SOTHO_SOUTHERN_SOUTH_AFRICA = TT_MS_LANGID_SESOTHO_SA_LEBOA_SOUTH_AFRICA
const TT_MS_LANGID_KANURI_NIGERIA = 0x0471
const TT_MS_LANGID_OROMO_ETHIOPIA = 0x0472
const TT_MS_LANGID_TIGRIGNA_ETHIOPIA = 0x0473
const TT_MS_LANGID_TIGRIGNA_ERYTHREA = 0x0873
const TT_MS_LANGID_TIGRIGNA_ERYTREA = TT_MS_LANGID_TIGRIGNA_ERYTHREA
const TT_MS_LANGID_GUARANI_PARAGUAY = 0x0474
const TT_MS_LANGID_HAWAIIAN_UNITED_STATES = 0x0475
const TT_MS_LANGID_LATIN = 0x0476
const TT_MS_LANGID_SOMALI_SOMALIA = 0x0477
const TT_MS_LANGID_YI_CHINA = TT_MS_LANGID_YI_PRC
const TT_MS_LANGID_PAPIAMENTU_NETHERLANDS_ANTILLES = 0x0479
const TT_MS_LANGID_UIGHUR_CHINA = TT_MS_LANGID_UIGHUR_PRC
const TT_NAME_ID_COPYRIGHT = 0
const TT_NAME_ID_FONT_FAMILY = 1
const TT_NAME_ID_FONT_SUBFAMILY = 2
const TT_NAME_ID_UNIQUE_ID = 3
const TT_NAME_ID_FULL_NAME = 4
const TT_NAME_ID_VERSION_STRING = 5
const TT_NAME_ID_PS_NAME = 6
const TT_NAME_ID_TRADEMARK = 7
const TT_NAME_ID_MANUFACTURER = 8
const TT_NAME_ID_DESIGNER = 9
const TT_NAME_ID_DESCRIPTION = 10
const TT_NAME_ID_VENDOR_URL = 11
const TT_NAME_ID_DESIGNER_URL = 12
const TT_NAME_ID_LICENSE = 13
const TT_NAME_ID_LICENSE_URL = 14
const TT_NAME_ID_TYPOGRAPHIC_FAMILY = 16
const TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY = 17
const TT_NAME_ID_MAC_FULL_NAME = 18
const TT_NAME_ID_SAMPLE_TEXT = 19
const TT_NAME_ID_CID_FINDFONT_NAME = 20
const TT_NAME_ID_WWS_FAMILY = 21
const TT_NAME_ID_WWS_SUBFAMILY = 22
const TT_NAME_ID_LIGHT_BACKGROUND = 23
const TT_NAME_ID_DARK_BACKGROUND = 24
const TT_NAME_ID_VARIATIONS_PREFIX = 25
const TT_NAME_ID_PREFERRED_FAMILY = TT_NAME_ID_TYPOGRAPHIC_FAMILY
const TT_NAME_ID_PREFERRED_SUBFAMILY = TT_NAME_ID_TYPOGRAPHIC_SUBFAMILY
const TT_UCR_BASIC_LATIN = Int32(1) << 0
const TT_UCR_LATIN1_SUPPLEMENT = Int32(1) << 1
const TT_UCR_LATIN_EXTENDED_A = Int32(1) << 2
const TT_UCR_LATIN_EXTENDED_B = Int32(1) << 3
const TT_UCR_IPA_EXTENSIONS = Int32(1) << 4
const TT_UCR_SPACING_MODIFIER = Int32(1) << 5
const TT_UCR_COMBINING_DIACRITICAL_MARKS = Int32(1) << 6
const TT_UCR_GREEK = Int32(1) << 7
const TT_UCR_COPTIC = Int32(1) << 8
const TT_UCR_CYRILLIC = Int32(1) << 9
const TT_UCR_ARMENIAN = Int32(1) << 10
const TT_UCR_HEBREW = Int32(1) << 11
const TT_UCR_VAI = Int32(1) << 12
const TT_UCR_ARABIC = Int32(1) << 13
const TT_UCR_NKO = Int32(1) << 14
const TT_UCR_DEVANAGARI = Int32(1) << 15
const TT_UCR_BENGALI = Int32(1) << 16
const TT_UCR_GURMUKHI = Int32(1) << 17
const TT_UCR_GUJARATI = Int32(1) << 18
const TT_UCR_ORIYA = Int32(1) << 19
const TT_UCR_TAMIL = Int32(1) << 20
const TT_UCR_TELUGU = Int32(1) << 21
const TT_UCR_KANNADA = Int32(1) << 22
const TT_UCR_MALAYALAM = Int32(1) << 23
const TT_UCR_THAI = Int32(1) << 24
const TT_UCR_LAO = Int32(1) << 25
const TT_UCR_GEORGIAN = Int32(1) << 26
const TT_UCR_BALINESE = Int32(1) << 27
const TT_UCR_HANGUL_JAMO = Int32(1) << 28
const TT_UCR_LATIN_EXTENDED_ADDITIONAL = Int32(1) << 29
const TT_UCR_GREEK_EXTENDED = Int32(1) << 30
const TT_UCR_GENERAL_PUNCTUATION = Int32(1) << 31
const TT_UCR_SUPERSCRIPTS_SUBSCRIPTS = Int32(1) << 0
const TT_UCR_CURRENCY_SYMBOLS = Int32(1) << 1
const TT_UCR_COMBINING_DIACRITICAL_MARKS_SYMB = Int32(1) << 2
const TT_UCR_LETTERLIKE_SYMBOLS = Int32(1) << 3
const TT_UCR_NUMBER_FORMS = Int32(1) << 4
const TT_UCR_ARROWS = Int32(1) << 5
const TT_UCR_MATHEMATICAL_OPERATORS = Int32(1) << 6
const TT_UCR_MISCELLANEOUS_TECHNICAL = Int32(1) << 7
const TT_UCR_CONTROL_PICTURES = Int32(1) << 8
const TT_UCR_OCR = Int32(1) << 9
const TT_UCR_ENCLOSED_ALPHANUMERICS = Int32(1) << 10
const TT_UCR_BOX_DRAWING = Int32(1) << 11
const TT_UCR_BLOCK_ELEMENTS = Int32(1) << 12
const TT_UCR_GEOMETRIC_SHAPES = Int32(1) << 13
const TT_UCR_MISCELLANEOUS_SYMBOLS = Int32(1) << 14
const TT_UCR_DINGBATS = Int32(1) << 15
const TT_UCR_CJK_SYMBOLS = Int32(1) << 16
const TT_UCR_HIRAGANA = Int32(1) << 17
const TT_UCR_KATAKANA = Int32(1) << 18
const TT_UCR_BOPOMOFO = Int32(1) << 19
const TT_UCR_HANGUL_COMPATIBILITY_JAMO = Int32(1) << 20
const TT_UCR_CJK_MISC = Int32(1) << 21
const TT_UCR_KANBUN = TT_UCR_CJK_MISC
const TT_UCR_ENCLOSED_CJK_LETTERS_MONTHS = Int32(1) << 22
const TT_UCR_CJK_COMPATIBILITY = Int32(1) << 23
const TT_UCR_HANGUL = Int32(1) << 24
const TT_UCR_SURROGATES = Int32(1) << 25
const TT_UCR_NON_PLANE_0 = TT_UCR_SURROGATES
const TT_UCR_PHOENICIAN = Int32(1) << 26
const TT_UCR_CJK_UNIFIED_IDEOGRAPHS = Int32(1) << 27
const TT_UCR_PRIVATE_USE = Int32(1) << 28
const TT_UCR_CJK_COMPATIBILITY_IDEOGRAPHS = Int32(1) << 29
const TT_UCR_ALPHABETIC_PRESENTATION_FORMS = Int32(1) << 30
const TT_UCR_ARABIC_PRESENTATION_FORMS_A = Int32(1) << 31
const TT_UCR_COMBINING_HALF_MARKS = Int32(1) << 0
const TT_UCR_CJK_COMPATIBILITY_FORMS = Int32(1) << 1
const TT_UCR_SMALL_FORM_VARIANTS = Int32(1) << 2
const TT_UCR_ARABIC_PRESENTATION_FORMS_B = Int32(1) << 3
const TT_UCR_HALFWIDTH_FULLWIDTH_FORMS = Int32(1) << 4
const TT_UCR_SPECIALS = Int32(1) << 5
const TT_UCR_TIBETAN = Int32(1) << 6
const TT_UCR_SYRIAC = Int32(1) << 7
const TT_UCR_THAANA = Int32(1) << 8
const TT_UCR_SINHALA = Int32(1) << 9
const TT_UCR_MYANMAR = Int32(1) << 10
const TT_UCR_ETHIOPIC = Int32(1) << 11
const TT_UCR_CHEROKEE = Int32(1) << 12
const TT_UCR_CANADIAN_ABORIGINAL_SYLLABICS = Int32(1) << 13
const TT_UCR_OGHAM = Int32(1) << 14
const TT_UCR_RUNIC = Int32(1) << 15
const TT_UCR_KHMER = Int32(1) << 16
const TT_UCR_MONGOLIAN = Int32(1) << 17
const TT_UCR_BRAILLE = Int32(1) << 18
const TT_UCR_YI = Int32(1) << 19
const TT_UCR_PHILIPPINE = Int32(1) << 20
const TT_UCR_OLD_ITALIC = Int32(1) << 21
const TT_UCR_GOTHIC = Int32(1) << 22
const TT_UCR_DESERET = Int32(1) << 23
const TT_UCR_MUSICAL_SYMBOLS = Int32(1) << 24
const TT_UCR_MATH_ALPHANUMERIC_SYMBOLS = Int32(1) << 25
const TT_UCR_PRIVATE_USE_SUPPLEMENTARY = Int32(1) << 26
const TT_UCR_VARIATION_SELECTORS = Int32(1) << 27
const TT_UCR_TAGS = Int32(1) << 28
const TT_UCR_LIMBU = Int32(1) << 29
const TT_UCR_TAI_LE = Int32(1) << 30
const TT_UCR_NEW_TAI_LUE = Int32(1) << 31
const TT_UCR_BUGINESE = Int32(1) << 0
const TT_UCR_GLAGOLITIC = Int32(1) << 1
const TT_UCR_TIFINAGH = Int32(1) << 2
const TT_UCR_YIJING = Int32(1) << 3
const TT_UCR_SYLOTI_NAGRI = Int32(1) << 4
const TT_UCR_LINEAR_B = Int32(1) << 5
const TT_UCR_ANCIENT_GREEK_NUMBERS = Int32(1) << 6
const TT_UCR_UGARITIC = Int32(1) << 7
const TT_UCR_OLD_PERSIAN = Int32(1) << 8
const TT_UCR_SHAVIAN = Int32(1) << 9
const TT_UCR_OSMANYA = Int32(1) << 10
const TT_UCR_CYPRIOT_SYLLABARY = Int32(1) << 11
const TT_UCR_KHAROSHTHI = Int32(1) << 12
const TT_UCR_TAI_XUAN_JING = Int32(1) << 13
const TT_UCR_CUNEIFORM = Int32(1) << 14
const TT_UCR_COUNTING_ROD_NUMERALS = Int32(1) << 15
const TT_UCR_SUNDANESE = Int32(1) << 16
const TT_UCR_LEPCHA = Int32(1) << 17
const TT_UCR_OL_CHIKI = Int32(1) << 18
const TT_UCR_SAURASHTRA = Int32(1) << 19
const TT_UCR_KAYAH_LI = Int32(1) << 20
const TT_UCR_REJANG = Int32(1) << 21
const TT_UCR_CHAM = Int32(1) << 22
const TT_UCR_ANCIENT_SYMBOLS = Int32(1) << 23
const TT_UCR_PHAISTOS_DISC = Int32(1) << 24
const TT_UCR_OLD_ANATOLIAN = Int32(1) << 25
const TT_UCR_GAME_TILES = Int32(1) << 26
const TT_UCR_ARABIC_PRESENTATION_A = TT_UCR_ARABIC_PRESENTATION_FORMS_A
const TT_UCR_ARABIC_PRESENTATION_B = TT_UCR_ARABIC_PRESENTATION_FORMS_B
const TT_UCR_COMBINING_DIACRITICS = TT_UCR_COMBINING_DIACRITICAL_MARKS
const TT_UCR_COMBINING_DIACRITICS_SYMB = TT_UCR_COMBINING_DIACRITICAL_MARKS_SYMB

@cenum(FT_Sfnt_Tag_,
    FT_SFNT_HEAD = 0,
    FT_SFNT_MAXP = 1,
    FT_SFNT_OS2 = 2,
    FT_SFNT_HHEA = 3,
    FT_SFNT_VHEA = 4,
    FT_SFNT_POST = 5,
    FT_SFNT_PCLT = 6,
    FT_SFNT_MAX = 7,
)

const ft_sfnt_head = FT_SFNT_HEAD
const ft_sfnt_maxp = FT_SFNT_MAXP
const ft_sfnt_os2 = FT_SFNT_OS2
const ft_sfnt_hhea = FT_SFNT_HHEA
const ft_sfnt_vhea = FT_SFNT_VHEA
const ft_sfnt_post = FT_SFNT_POST
const ft_sfnt_pclt = FT_SFNT_PCLT

struct TT_Header_
    Table_Version::FT_Fixed
    Font_Revision::FT_Fixed
    CheckSum_Adjust::FT_Long
    Magic_Number::FT_Long
    Flags::FT_UShort
    Units_Per_EM::FT_UShort
    Created::NTuple{2, FT_Long}
    Modified::NTuple{2, FT_Long}
    xMin::FT_Short
    yMin::FT_Short
    xMax::FT_Short
    yMax::FT_Short
    Mac_Style::FT_UShort
    Lowest_Rec_PPEM::FT_UShort
    Font_Direction::FT_Short
    Index_To_Loc_Format::FT_Short
    Glyph_Data_Format::FT_Short
end

const TT_Header = TT_Header_

struct TT_HoriHeader_
    Version::FT_Fixed
    Ascender::FT_Short
    Descender::FT_Short
    Line_Gap::FT_Short
    advance_Width_Max::FT_UShort
    min_Left_Side_Bearing::FT_Short
    min_Right_Side_Bearing::FT_Short
    xMax_Extent::FT_Short
    caret_Slope_Rise::FT_Short
    caret_Slope_Run::FT_Short
    caret_Offset::FT_Short
    Reserved::NTuple{4, FT_Short}
    metric_Data_Format::FT_Short
    number_Of_HMetrics::FT_UShort
    long_metrics::Ptr{Cvoid}
    short_metrics::Ptr{Cvoid}
end

const TT_HoriHeader = TT_HoriHeader_

struct TT_VertHeader_
    Version::FT_Fixed
    Ascender::FT_Short
    Descender::FT_Short
    Line_Gap::FT_Short
    advance_Height_Max::FT_UShort
    min_Top_Side_Bearing::FT_Short
    min_Bottom_Side_Bearing::FT_Short
    yMax_Extent::FT_Short
    caret_Slope_Rise::FT_Short
    caret_Slope_Run::FT_Short
    caret_Offset::FT_Short
    Reserved::NTuple{4, FT_Short}
    metric_Data_Format::FT_Short
    number_Of_VMetrics::FT_UShort
    long_metrics::Ptr{Cvoid}
    short_metrics::Ptr{Cvoid}
end

const TT_VertHeader = TT_VertHeader_

struct TT_OS2_
    version::FT_UShort
    xAvgCharWidth::FT_Short
    usWeightClass::FT_UShort
    usWidthClass::FT_UShort
    fsType::FT_UShort
    ySubscriptXSize::FT_Short
    ySubscriptYSize::FT_Short
    ySubscriptXOffset::FT_Short
    ySubscriptYOffset::FT_Short
    ySuperscriptXSize::FT_Short
    ySuperscriptYSize::FT_Short
    ySuperscriptXOffset::FT_Short
    ySuperscriptYOffset::FT_Short
    yStrikeoutSize::FT_Short
    yStrikeoutPosition::FT_Short
    sFamilyClass::FT_Short
    panose::NTuple{10, FT_Byte}
    ulUnicodeRange1::FT_ULong
    ulUnicodeRange2::FT_ULong
    ulUnicodeRange3::FT_ULong
    ulUnicodeRange4::FT_ULong
    achVendID::NTuple{4, FT_Char}
    fsSelection::FT_UShort
    usFirstCharIndex::FT_UShort
    usLastCharIndex::FT_UShort
    sTypoAscender::FT_Short
    sTypoDescender::FT_Short
    sTypoLineGap::FT_Short
    usWinAscent::FT_UShort
    usWinDescent::FT_UShort
    ulCodePageRange1::FT_ULong
    ulCodePageRange2::FT_ULong
    sxHeight::FT_Short
    sCapHeight::FT_Short
    usDefaultChar::FT_UShort
    usBreakChar::FT_UShort
    usMaxContext::FT_UShort
    usLowerOpticalPointSize::FT_UShort
    usUpperOpticalPointSize::FT_UShort
end

const TT_OS2 = TT_OS2_

struct TT_Postscript_
    FormatType::FT_Fixed
    italicAngle::FT_Fixed
    underlinePosition::FT_Short
    underlineThickness::FT_Short
    isFixedPitch::FT_ULong
    minMemType42::FT_ULong
    maxMemType42::FT_ULong
    minMemType1::FT_ULong
    maxMemType1::FT_ULong
end

const TT_Postscript = TT_Postscript_

struct TT_PCLT_
    Version::FT_Fixed
    FontNumber::FT_ULong
    Pitch::FT_UShort
    xHeight::FT_UShort
    Style::FT_UShort
    TypeFamily::FT_UShort
    CapHeight::FT_UShort
    SymbolSet::FT_UShort
    TypeFace::NTuple{16, FT_Char}
    CharacterComplement::NTuple{8, FT_Char}
    FileName::NTuple{6, FT_Char}
    StrokeWeight::FT_Char
    WidthType::FT_Char
    SerifStyle::FT_Byte
    Reserved::FT_Byte
end

const TT_PCLT = TT_PCLT_

struct TT_MaxProfile_
    version::FT_Fixed
    numGlyphs::FT_UShort
    maxPoints::FT_UShort
    maxContours::FT_UShort
    maxCompositePoints::FT_UShort
    maxCompositeContours::FT_UShort
    maxZones::FT_UShort
    maxTwilightPoints::FT_UShort
    maxStorage::FT_UShort
    maxFunctionDefs::FT_UShort
    maxInstructionDefs::FT_UShort
    maxStackElements::FT_UShort
    maxSizeOfInstructions::FT_UShort
    maxComponentElements::FT_UShort
    maxComponentDepth::FT_UShort
end

const TT_MaxProfile = TT_MaxProfile_
const FT_Sfnt_Tag = FT_Sfnt_Tag_

# Skipping MacroDefinition: TTAG_avar FT_MAKE_TAG ( 'a' , 'v' , 'a' , 'r' )
# Skipping MacroDefinition: TTAG_BASE FT_MAKE_TAG ( 'B' , 'A' , 'S' , 'E' )
# Skipping MacroDefinition: TTAG_bdat FT_MAKE_TAG ( 'b' , 'd' , 'a' , 't' )
# Skipping MacroDefinition: TTAG_BDF FT_MAKE_TAG ( 'B' , 'D' , 'F' , ' ' )
# Skipping MacroDefinition: TTAG_bhed FT_MAKE_TAG ( 'b' , 'h' , 'e' , 'd' )
# Skipping MacroDefinition: TTAG_bloc FT_MAKE_TAG ( 'b' , 'l' , 'o' , 'c' )
# Skipping MacroDefinition: TTAG_bsln FT_MAKE_TAG ( 'b' , 's' , 'l' , 'n' )
# Skipping MacroDefinition: TTAG_CBDT FT_MAKE_TAG ( 'C' , 'B' , 'D' , 'T' )
# Skipping MacroDefinition: TTAG_CBLC FT_MAKE_TAG ( 'C' , 'B' , 'L' , 'C' )
# Skipping MacroDefinition: TTAG_CFF FT_MAKE_TAG ( 'C' , 'F' , 'F' , ' ' )
# Skipping MacroDefinition: TTAG_CFF2 FT_MAKE_TAG ( 'C' , 'F' , 'F' , '2' )
# Skipping MacroDefinition: TTAG_CID FT_MAKE_TAG ( 'C' , 'I' , 'D' , ' ' )
# Skipping MacroDefinition: TTAG_cmap FT_MAKE_TAG ( 'c' , 'm' , 'a' , 'p' )
# Skipping MacroDefinition: TTAG_cvar FT_MAKE_TAG ( 'c' , 'v' , 'a' , 'r' )
# Skipping MacroDefinition: TTAG_cvt FT_MAKE_TAG ( 'c' , 'v' , 't' , ' ' )
# Skipping MacroDefinition: TTAG_DSIG FT_MAKE_TAG ( 'D' , 'S' , 'I' , 'G' )
# Skipping MacroDefinition: TTAG_EBDT FT_MAKE_TAG ( 'E' , 'B' , 'D' , 'T' )
# Skipping MacroDefinition: TTAG_EBLC FT_MAKE_TAG ( 'E' , 'B' , 'L' , 'C' )
# Skipping MacroDefinition: TTAG_EBSC FT_MAKE_TAG ( 'E' , 'B' , 'S' , 'C' )
# Skipping MacroDefinition: TTAG_feat FT_MAKE_TAG ( 'f' , 'e' , 'a' , 't' )
# Skipping MacroDefinition: TTAG_FOND FT_MAKE_TAG ( 'F' , 'O' , 'N' , 'D' )
# Skipping MacroDefinition: TTAG_fpgm FT_MAKE_TAG ( 'f' , 'p' , 'g' , 'm' )
# Skipping MacroDefinition: TTAG_fvar FT_MAKE_TAG ( 'f' , 'v' , 'a' , 'r' )
# Skipping MacroDefinition: TTAG_gasp FT_MAKE_TAG ( 'g' , 'a' , 's' , 'p' )
# Skipping MacroDefinition: TTAG_GDEF FT_MAKE_TAG ( 'G' , 'D' , 'E' , 'F' )
# Skipping MacroDefinition: TTAG_glyf FT_MAKE_TAG ( 'g' , 'l' , 'y' , 'f' )
# Skipping MacroDefinition: TTAG_GPOS FT_MAKE_TAG ( 'G' , 'P' , 'O' , 'S' )
# Skipping MacroDefinition: TTAG_GSUB FT_MAKE_TAG ( 'G' , 'S' , 'U' , 'B' )
# Skipping MacroDefinition: TTAG_gvar FT_MAKE_TAG ( 'g' , 'v' , 'a' , 'r' )
# Skipping MacroDefinition: TTAG_HVAR FT_MAKE_TAG ( 'H' , 'V' , 'A' , 'R' )
# Skipping MacroDefinition: TTAG_hdmx FT_MAKE_TAG ( 'h' , 'd' , 'm' , 'x' )
# Skipping MacroDefinition: TTAG_head FT_MAKE_TAG ( 'h' , 'e' , 'a' , 'd' )
# Skipping MacroDefinition: TTAG_hhea FT_MAKE_TAG ( 'h' , 'h' , 'e' , 'a' )
# Skipping MacroDefinition: TTAG_hmtx FT_MAKE_TAG ( 'h' , 'm' , 't' , 'x' )
# Skipping MacroDefinition: TTAG_JSTF FT_MAKE_TAG ( 'J' , 'S' , 'T' , 'F' )
# Skipping MacroDefinition: TTAG_just FT_MAKE_TAG ( 'j' , 'u' , 's' , 't' )
# Skipping MacroDefinition: TTAG_kern FT_MAKE_TAG ( 'k' , 'e' , 'r' , 'n' )
# Skipping MacroDefinition: TTAG_lcar FT_MAKE_TAG ( 'l' , 'c' , 'a' , 'r' )
# Skipping MacroDefinition: TTAG_loca FT_MAKE_TAG ( 'l' , 'o' , 'c' , 'a' )
# Skipping MacroDefinition: TTAG_LTSH FT_MAKE_TAG ( 'L' , 'T' , 'S' , 'H' )
# Skipping MacroDefinition: TTAG_LWFN FT_MAKE_TAG ( 'L' , 'W' , 'F' , 'N' )
# Skipping MacroDefinition: TTAG_MATH FT_MAKE_TAG ( 'M' , 'A' , 'T' , 'H' )
# Skipping MacroDefinition: TTAG_maxp FT_MAKE_TAG ( 'm' , 'a' , 'x' , 'p' )
# Skipping MacroDefinition: TTAG_META FT_MAKE_TAG ( 'M' , 'E' , 'T' , 'A' )
# Skipping MacroDefinition: TTAG_MMFX FT_MAKE_TAG ( 'M' , 'M' , 'F' , 'X' )
# Skipping MacroDefinition: TTAG_MMSD FT_MAKE_TAG ( 'M' , 'M' , 'S' , 'D' )
# Skipping MacroDefinition: TTAG_mort FT_MAKE_TAG ( 'm' , 'o' , 'r' , 't' )
# Skipping MacroDefinition: TTAG_morx FT_MAKE_TAG ( 'm' , 'o' , 'r' , 'x' )
# Skipping MacroDefinition: TTAG_MVAR FT_MAKE_TAG ( 'M' , 'V' , 'A' , 'R' )
# Skipping MacroDefinition: TTAG_name FT_MAKE_TAG ( 'n' , 'a' , 'm' , 'e' )
# Skipping MacroDefinition: TTAG_opbd FT_MAKE_TAG ( 'o' , 'p' , 'b' , 'd' )
# Skipping MacroDefinition: TTAG_OS2 FT_MAKE_TAG ( 'O' , 'S' , '/' , '2' )
# Skipping MacroDefinition: TTAG_OTTO FT_MAKE_TAG ( 'O' , 'T' , 'T' , 'O' )
# Skipping MacroDefinition: TTAG_PCLT FT_MAKE_TAG ( 'P' , 'C' , 'L' , 'T' )
# Skipping MacroDefinition: TTAG_POST FT_MAKE_TAG ( 'P' , 'O' , 'S' , 'T' )
# Skipping MacroDefinition: TTAG_post FT_MAKE_TAG ( 'p' , 'o' , 's' , 't' )
# Skipping MacroDefinition: TTAG_prep FT_MAKE_TAG ( 'p' , 'r' , 'e' , 'p' )
# Skipping MacroDefinition: TTAG_prop FT_MAKE_TAG ( 'p' , 'r' , 'o' , 'p' )
# Skipping MacroDefinition: TTAG_sbix FT_MAKE_TAG ( 's' , 'b' , 'i' , 'x' )
# Skipping MacroDefinition: TTAG_sfnt FT_MAKE_TAG ( 's' , 'f' , 'n' , 't' )
# Skipping MacroDefinition: TTAG_SING FT_MAKE_TAG ( 'S' , 'I' , 'N' , 'G' )
# Skipping MacroDefinition: TTAG_trak FT_MAKE_TAG ( 't' , 'r' , 'a' , 'k' )
# Skipping MacroDefinition: TTAG_true FT_MAKE_TAG ( 't' , 'r' , 'u' , 'e' )
# Skipping MacroDefinition: TTAG_ttc FT_MAKE_TAG ( 't' , 't' , 'c' , ' ' )
# Skipping MacroDefinition: TTAG_ttcf FT_MAKE_TAG ( 't' , 't' , 'c' , 'f' )
# Skipping MacroDefinition: TTAG_TYP1 FT_MAKE_TAG ( 'T' , 'Y' , 'P' , '1' )
# Skipping MacroDefinition: TTAG_typ1 FT_MAKE_TAG ( 't' , 'y' , 'p' , '1' )
# Skipping MacroDefinition: TTAG_VDMX FT_MAKE_TAG ( 'V' , 'D' , 'M' , 'X' )
# Skipping MacroDefinition: TTAG_vhea FT_MAKE_TAG ( 'v' , 'h' , 'e' , 'a' )
# Skipping MacroDefinition: TTAG_vmtx FT_MAKE_TAG ( 'v' , 'm' , 't' , 'x' )
# Skipping MacroDefinition: TTAG_VVAR FT_MAKE_TAG ( 'V' , 'V' , 'A' , 'R' )
# Skipping MacroDefinition: TTAG_wOFF FT_MAKE_TAG ( 'w' , 'O' , 'F' , 'F' )
# Skipping MacroDefinition: TTAG_0xA5kbd FT_MAKE_TAG ( 0xA5 , 'k' , 'b' , 'd' )
# Skipping MacroDefinition: TTAG_0xA5lst FT_MAKE_TAG ( 0xA5 , 'l' , 's' , 't' )
const TTAG_avar = FT_MAKE_TAG('a', 'v', 'a', 'r')
const TTAG_BASE = FT_MAKE_TAG('B', 'A', 'S', 'E')
const TTAG_bdat = FT_MAKE_TAG('b', 'd', 'a', 't')
const TTAG_BDF = FT_MAKE_TAG('B', 'D', 'F', ' ')
const TTAG_bhed = FT_MAKE_TAG('b', 'h', 'e', 'd')
const TTAG_bloc = FT_MAKE_TAG('b', 'l', 'o', 'c')
const TTAG_bsln = FT_MAKE_TAG('b', 's', 'l', 'n')
const TTAG_CBDT = FT_MAKE_TAG('C', 'B', 'D', 'T')
const TTAG_CBLC = FT_MAKE_TAG('C', 'B', 'L', 'C')
const TTAG_CFF = FT_MAKE_TAG('C', 'F', 'F', ' ')
const TTAG_CFF2 = FT_MAKE_TAG('C', 'F', 'F', '2')
const TTAG_CID = FT_MAKE_TAG('C', 'I', 'D', ' ')
const TTAG_cmap = FT_MAKE_TAG('c', 'm', 'a', 'p')
const TTAG_cvar = FT_MAKE_TAG('c', 'v', 'a', 'r')
const TTAG_cvt = FT_MAKE_TAG('c', 'v', 't', ' ')
const TTAG_DSIG = FT_MAKE_TAG('D', 'S', 'I', 'G')
const TTAG_EBDT = FT_MAKE_TAG('E', 'B', 'D', 'T')
const TTAG_EBLC = FT_MAKE_TAG('E', 'B', 'L', 'C')
const TTAG_EBSC = FT_MAKE_TAG('E', 'B', 'S', 'C')
const TTAG_feat = FT_MAKE_TAG('f', 'e', 'a', 't')
const TTAG_FOND = FT_MAKE_TAG('F', 'O', 'N', 'D')
const TTAG_fpgm = FT_MAKE_TAG('f', 'p', 'g', 'm')
const TTAG_fvar = FT_MAKE_TAG('f', 'v', 'a', 'r')
const TTAG_gasp = FT_MAKE_TAG('g', 'a', 's', 'p')
const TTAG_GDEF = FT_MAKE_TAG('G', 'D', 'E', 'F')
const TTAG_glyf = FT_MAKE_TAG('g', 'l', 'y', 'f')
const TTAG_GPOS = FT_MAKE_TAG('G', 'P', 'O', 'S')
const TTAG_GSUB = FT_MAKE_TAG('G', 'S', 'U', 'B')
const TTAG_gvar = FT_MAKE_TAG('g', 'v', 'a', 'r')
const TTAG_HVAR = FT_MAKE_TAG('H', 'V', 'A', 'R')
const TTAG_hdmx = FT_MAKE_TAG('h', 'd', 'm', 'x')
const TTAG_head = FT_MAKE_TAG('h', 'e', 'a', 'd')
const TTAG_hhea = FT_MAKE_TAG('h', 'h', 'e', 'a')
const TTAG_hmtx = FT_MAKE_TAG('h', 'm', 't', 'x')
const TTAG_JSTF = FT_MAKE_TAG('J', 'S', 'T', 'F')
const TTAG_just = FT_MAKE_TAG('j', 'u', 's', 't')
const TTAG_kern = FT_MAKE_TAG('k', 'e', 'r', 'n')
const TTAG_lcar = FT_MAKE_TAG('l', 'c', 'a', 'r')
const TTAG_loca = FT_MAKE_TAG('l', 'o', 'c', 'a')
const TTAG_LTSH = FT_MAKE_TAG('L', 'T', 'S', 'H')
const TTAG_LWFN = FT_MAKE_TAG('L', 'W', 'F', 'N')
const TTAG_MATH = FT_MAKE_TAG('M', 'A', 'T', 'H')
const TTAG_maxp = FT_MAKE_TAG('m', 'a', 'x', 'p')
const TTAG_META = FT_MAKE_TAG('M', 'E', 'T', 'A')
const TTAG_MMFX = FT_MAKE_TAG('M', 'M', 'F', 'X')
const TTAG_MMSD = FT_MAKE_TAG('M', 'M', 'S', 'D')
const TTAG_mort = FT_MAKE_TAG('m', 'o', 'r', 't')
const TTAG_morx = FT_MAKE_TAG('m', 'o', 'r', 'x')
const TTAG_MVAR = FT_MAKE_TAG('M', 'V', 'A', 'R')
const TTAG_name = FT_MAKE_TAG('n', 'a', 'm', 'e')
const TTAG_opbd = FT_MAKE_TAG('o', 'p', 'b', 'd')
const TTAG_OS2 = FT_MAKE_TAG('O', 'S', '/', '2')
const TTAG_OTTO = FT_MAKE_TAG('O', 'T', 'T', 'O')
const TTAG_PCLT = FT_MAKE_TAG('P', 'C', 'L', 'T')
const TTAG_POST = FT_MAKE_TAG('P', 'O', 'S', 'T')
const TTAG_post = FT_MAKE_TAG('p', 'o', 's', 't')
const TTAG_prep = FT_MAKE_TAG('p', 'r', 'e', 'p')
const TTAG_prop = FT_MAKE_TAG('p', 'r', 'o', 'p')
const TTAG_sbix = FT_MAKE_TAG('s', 'b', 'i', 'x')
const TTAG_sfnt = FT_MAKE_TAG('s', 'f', 'n', 't')
const TTAG_SING = FT_MAKE_TAG('S', 'I', 'N', 'G')
const TTAG_trak = FT_MAKE_TAG('t', 'r', 'a', 'k')
const TTAG_true = FT_MAKE_TAG('t', 'r', 'u', 'e')
const TTAG_ttc = FT_MAKE_TAG('t', 't', 'c', ' ')
const TTAG_ttcf = FT_MAKE_TAG('t', 't', 'c', 'f')
const TTAG_TYP1 = FT_MAKE_TAG('T', 'Y', 'P', '1')
const TTAG_typ1 = FT_MAKE_TAG('t', 'y', 'p', '1')
const TTAG_VDMX = FT_MAKE_TAG('V', 'D', 'M', 'X')
const TTAG_vhea = FT_MAKE_TAG('v', 'h', 'e', 'a')
const TTAG_vmtx = FT_MAKE_TAG('v', 'm', 't', 'x')
const TTAG_VVAR = FT_MAKE_TAG('V', 'V', 'A', 'R')
const TTAG_wOFF = FT_MAKE_TAG('w', 'O', 'F', 'F')
const TTAG_0xA5kbd = FT_MAKE_TAG(0xA5, 'k', 'b', 'd')
const TTAG_0xA5lst = FT_MAKE_TAG(0xA5, 'l', 's', 't')

const HAVE_UNISTD_H = 1
const HAVE_FCNTL_H = 1
const HAVE_STDINT_H = 1
const FT_CHAR_BIT = CHAR_BIT
const FT_SIZEOF_INT = 32 / FT_CHAR_BIT
const FT_SIZEOF_LONG = 32 / FT_CHAR_BIT

# Skipping MacroDefinition: FT_UNUSED ( arg ) ( ( arg ) = ( arg ) )
# Skipping MacroDefinition: FT_UINT_TO_POINTER ( x ) ( void * ) ( unsigned long ) ( x )
# Skipping MacroDefinition: FT_BEGIN_STMNT do {
# Skipping MacroDefinition: FT_END_STMNT } while ( 0 )

# const FT_DUMMY_STMNT = FT_BEGIN_STMNT

# Skipping MacroDefinition: FT_TYPEOF ( type ) ( __typeof__ ( type ) )
# Skipping MacroDefinition: FT_LOCAL ( x ) extern x
# Skipping MacroDefinition: FT_LOCAL_DEF ( x ) x
# Skipping MacroDefinition: FT_LOCAL_ARRAY ( x ) extern const x
# Skipping MacroDefinition: FT_LOCAL_ARRAY_DEF ( x ) const x
# Skipping MacroDefinition: FT_BASE ( x ) extern x
# Skipping MacroDefinition: FT_BASE_DEF ( x ) x
# Skipping MacroDefinition: FT_EXPORT ( x ) extern x
# Skipping MacroDefinition: FT_EXPORT_DEF ( x ) extern x
# Skipping MacroDefinition: FT_EXPORT_VAR ( x ) extern x
# Skipping MacroDefinition: FT_CALLBACK_DEF ( x ) static x
# Skipping MacroDefinition: FT_BASE_CALLBACK ( x ) extern x
# Skipping MacroDefinition: FT_BASE_CALLBACK_DEF ( x ) x

const FT_Int16 = Int16
const FT_UInt16 = UInt16
const FT_Fast = Cint
const FT_UFast = UInt32

# Skipping MacroDefinition: FT_CONFIG_CONFIG_H < freetype / config / ftconfig . h >
# Skipping MacroDefinition: FT_CONFIG_STANDARD_LIBRARY_H < freetype / config / ftstdlib . h >
# Skipping MacroDefinition: FT_CONFIG_OPTIONS_H < freetype / config / ftoption . h >
# Skipping MacroDefinition: FT_CONFIG_MODULES_H < freetype / config / ftmodule . h >
# Skipping MacroDefinition: FT_FREETYPE_H < freetype / freetype . h >
# Skipping MacroDefinition: FT_ERRORS_H < freetype / fterrors . h >
# Skipping MacroDefinition: FT_MODULE_ERRORS_H < freetype / ftmoderr . h >
# Skipping MacroDefinition: FT_SYSTEM_H < freetype / ftsystem . h >
# Skipping MacroDefinition: FT_IMAGE_H < freetype / ftimage . h >
# Skipping MacroDefinition: FT_TYPES_H < freetype / fttypes . h >
# Skipping MacroDefinition: FT_LIST_H < freetype / ftlist . h >
# Skipping MacroDefinition: FT_OUTLINE_H < freetype / ftoutln . h >
# Skipping MacroDefinition: FT_SIZES_H < freetype / ftsizes . h >
# Skipping MacroDefinition: FT_MODULE_H < freetype / ftmodapi . h >
# Skipping MacroDefinition: FT_RENDER_H < freetype / ftrender . h >
# Skipping MacroDefinition: FT_DRIVER_H < freetype / ftdriver . h >

# const FT_AUTOHINTER_H = FT_DRIVER_H
# const FT_CFF_DRIVER_H = FT_DRIVER_H
# const FT_TRUETYPE_DRIVER_H = FT_DRIVER_H
# const FT_PCF_DRIVER_H = FT_DRIVER_H

# Skipping MacroDefinition: FT_TYPE1_TABLES_H < freetype / t1tables . h >
# Skipping MacroDefinition: FT_TRUETYPE_IDS_H < freetype / ttnameid . h >
# Skipping MacroDefinition: FT_TRUETYPE_TABLES_H < freetype / tttables . h >
# Skipping MacroDefinition: FT_TRUETYPE_TAGS_H < freetype / tttags . h >
# Skipping MacroDefinition: FT_BDF_H < freetype / ftbdf . h >
# Skipping MacroDefinition: FT_CID_H < freetype / ftcid . h >
# Skipping MacroDefinition: FT_GZIP_H < freetype / ftgzip . h >
# Skipping MacroDefinition: FT_LZW_H < freetype / ftlzw . h >
# Skipping MacroDefinition: FT_BZIP2_H < freetype / ftbzip2 . h >
# Skipping MacroDefinition: FT_WINFONTS_H < freetype / ftwinfnt . h >
# Skipping MacroDefinition: FT_GLYPH_H < freetype / ftglyph . h >
# Skipping MacroDefinition: FT_BITMAP_H < freetype / ftbitmap . h >
# Skipping MacroDefinition: FT_BBOX_H < freetype / ftbbox . h >
# Skipping MacroDefinition: FT_CACHE_H < freetype / ftcache . h >
# Skipping MacroDefinition: FT_MAC_H < freetype / ftmac . h >
# Skipping MacroDefinition: FT_MULTIPLE_MASTERS_H < freetype / ftmm . h >
# Skipping MacroDefinition: FT_SFNT_NAMES_H < freetype / ftsnames . h >
# Skipping MacroDefinition: FT_OPENTYPE_VALIDATE_H < freetype / ftotval . h >
# Skipping MacroDefinition: FT_GX_VALIDATE_H < freetype / ftgxval . h >
# Skipping MacroDefinition: FT_PFR_H < freetype / ftpfr . h >
# Skipping MacroDefinition: FT_STROKER_H < freetype / ftstroke . h >
# Skipping MacroDefinition: FT_SYNTHESIS_H < freetype / ftsynth . h >
# Skipping MacroDefinition: FT_FONT_FORMATS_H < freetype / ftfntfmt . h >

# const FT_XFREE86_H = FT_FONT_FORMATS_H

# Skipping MacroDefinition: FT_TRIGONOMETRY_H < freetype / fttrigon . h >
# Skipping MacroDefinition: FT_LCD_FILTER_H < freetype / ftlcdfil . h >
# Skipping MacroDefinition: FT_INCREMENTAL_H < freetype / ftincrem . h >
# Skipping MacroDefinition: FT_GASP_H < freetype / ftgasp . h >
# Skipping MacroDefinition: FT_ADVANCES_H < freetype / ftadvanc . h >
# Skipping MacroDefinition: FT_ERROR_DEFINITIONS_H < freetype / fterrdef . h >
# Skipping MacroDefinition: FT_PARAMETER_TAGS_H < freetype / ftparams . h >
# Skipping MacroDefinition: FT_UNPATENTED_HINTING_H < freetype / ftparams . h >
# Skipping MacroDefinition: FT_TRUETYPE_UNPATENTED_H < freetype / ftparams . h >

# const FT_CACHE_IMAGE_H = FT_CACHE_H
# const FT_CACHE_SMALL_BITMAPS_H = FT_CACHE_H
# const FT_CACHE_CHARMAP_H = FT_CACHE_H
# const FT_CACHE_MANAGER_H = FT_CACHE_H
# const FT_CACHE_INTERNAL_MRU_H = FT_CACHE_H
# const FT_CACHE_INTERNAL_MANAGER_H = FT_CACHE_H
# const FT_CACHE_INTERNAL_CACHE_H = FT_CACHE_H
# const FT_CACHE_INTERNAL_GLYPH_H = FT_CACHE_H
# const FT_CACHE_INTERNAL_IMAGE_H = FT_CACHE_H
# const FT_CACHE_INTERNAL_SBITS_H = FT_CACHE_H
const FT_RENDER_POOL_SIZE = Int32(16384)
const FT_MAX_MODULES = 32
const TT_CONFIG_OPTION_SUBPIXEL_HINTING = 2
const TT_CONFIG_OPTION_MAX_RUNNABLE_OPCODES = Int32(1000000)
const T1_MAX_DICT_DEPTH = 5
const T1_MAX_SUBRS_CALLS = 16
const T1_MAX_CHARSTRINGS_OPERANDS = 256
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X1 = 500
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y1 = 400
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X2 = 1000
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y2 = 275
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X3 = 1667
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y3 = 275
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_X4 = 2333
const CFF_CONFIG_OPTION_DARKENING_PARAMETER_Y4 = 0
const ft_ptrdiff_t = ptrdiff_t
const FT_USHORT_MAX = USHRT_MAX
const FT_INT_MAX = INT_MAX
const FT_INT_MIN = INT_MIN
const FT_UINT_MAX = UINT_MAX
const FT_LONG_MIN = LONG_MIN
const FT_LONG_MAX = LONG_MAX
const FT_ULONG_MAX = ULONG_MAX

# Skipping MacroDefinition: ft_setjmp ( b ) setjmp ( * ( ft_jmp_buf * ) & ( b ) )
