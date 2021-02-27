module LibFreeType

using FreeType2_jll
export FreeType2_jll

using CEnum

const FT_Int16 = Cshort

const FT_UInt16 = Cushort

const FT_Int32 = Cint

const FT_UInt32 = Cuint

const FT_Fast = Cint

const FT_UFast = Cuint

const FT_Int64 = Clong

const FT_UInt64 = Culong

# C code:
# typedef void * ( * FT_Alloc_Func ) ( FT_Memory memory , long size )
const FT_Alloc_Func = Ptr{Cvoid}

# C code:
# typedef void ( * FT_Free_Func ) ( FT_Memory memory , void * block )
const FT_Free_Func = Ptr{Cvoid}

# C code:
# typedef void * ( * FT_Realloc_Func ) ( FT_Memory memory , long cur_size , long new_size , void * block )
const FT_Realloc_Func = Ptr{Cvoid}

struct FT_MemoryRec_
    user::Ptr{Cvoid}
    alloc::FT_Alloc_Func
    free::FT_Free_Func
    realloc::FT_Realloc_Func
end

const FT_Memory = Ptr{FT_MemoryRec_}

struct FT_StreamDesc_
    data::NTuple{8, UInt8}
end

const FT_StreamDesc = FT_StreamDesc_

# C code:
# typedef unsigned long ( * FT_Stream_IoFunc ) ( FT_Stream stream , unsigned long offset , unsigned char * buffer , unsigned long count )
const FT_Stream_IoFunc = Ptr{Cvoid}

# C code:
# typedef void ( * FT_Stream_CloseFunc ) ( FT_Stream stream )
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

const FT_StreamRec = FT_StreamRec_

const FT_Pos = Clong

struct FT_Vector_
    x::FT_Pos
    y::FT_Pos
end

const FT_Vector = FT_Vector_

struct FT_BBox_
    xMin::FT_Pos
    yMin::FT_Pos
    xMax::FT_Pos
    yMax::FT_Pos
end

const FT_BBox = FT_BBox_

@cenum FT_Pixel_Mode_::UInt32 begin
    FT_PIXEL_MODE_NONE = 0
    FT_PIXEL_MODE_MONO = 1
    FT_PIXEL_MODE_GRAY = 2
    FT_PIXEL_MODE_GRAY2 = 3
    FT_PIXEL_MODE_GRAY4 = 4
    FT_PIXEL_MODE_LCD = 5
    FT_PIXEL_MODE_LCD_V = 6
    FT_PIXEL_MODE_BGRA = 7
    FT_PIXEL_MODE_MAX = 8
end

const FT_Pixel_Mode = FT_Pixel_Mode_

struct FT_Bitmap_
    rows::Cuint
    width::Cuint
    pitch::Cint
    buffer::Ptr{Cuchar}
    num_grays::Cushort
    pixel_mode::Cuchar
    palette_mode::Cuchar
    palette::Ptr{Cvoid}
end

const FT_Bitmap = FT_Bitmap_

struct FT_Outline_
    n_contours::Cshort
    n_points::Cshort
    points::Ptr{FT_Vector}
    tags::Ptr{Cchar}
    contours::Ptr{Cshort}
    flags::Cint
end

const FT_Outline = FT_Outline_

# C code:
# typedef int ( * FT_Outline_MoveToFunc ) ( const FT_Vector * to , void * user )
const FT_Outline_MoveToFunc = Ptr{Cvoid}

# C code:
# typedef int ( * FT_Outline_LineToFunc ) ( const FT_Vector * to , void * user )
const FT_Outline_LineToFunc = Ptr{Cvoid}

# C code:
# typedef int ( * FT_Outline_ConicToFunc ) ( const FT_Vector * control , const FT_Vector * to , void * user )
const FT_Outline_ConicToFunc = Ptr{Cvoid}

# C code:
# typedef int ( * FT_Outline_CubicToFunc ) ( const FT_Vector * control1 , const FT_Vector * control2 , const FT_Vector * to , void * user )
const FT_Outline_CubicToFunc = Ptr{Cvoid}

struct FT_Outline_Funcs_
    move_to::FT_Outline_MoveToFunc
    line_to::FT_Outline_LineToFunc
    conic_to::FT_Outline_ConicToFunc
    cubic_to::FT_Outline_CubicToFunc
    shift::Cint
    delta::FT_Pos
end

const FT_Outline_Funcs = FT_Outline_Funcs_

@cenum FT_Glyph_Format_::UInt32 begin
    FT_GLYPH_FORMAT_NONE = 0
    FT_GLYPH_FORMAT_COMPOSITE = 1668246896
    FT_GLYPH_FORMAT_BITMAP = 1651078259
    FT_GLYPH_FORMAT_OUTLINE = 1869968492
    FT_GLYPH_FORMAT_PLOTTER = 1886154612
end

const FT_Glyph_Format = FT_Glyph_Format_

mutable struct FT_RasterRec_ end

const FT_Raster = Ptr{FT_RasterRec_}

struct FT_Span_
    x::Cshort
    len::Cushort
    coverage::Cuchar
end

const FT_Span = FT_Span_

# C code:
# typedef void ( * FT_SpanFunc ) ( int y , int count , const FT_Span * spans , void * user )
const FT_SpanFunc = Ptr{Cvoid}

# C code:
# typedef int ( * FT_Raster_BitTest_Func ) ( int y , int x , void * user )
const FT_Raster_BitTest_Func = Ptr{Cvoid}

# C code:
# typedef void ( * FT_Raster_BitSet_Func ) ( int y , int x , void * user )
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

# C code:
# typedef int ( * FT_Raster_NewFunc ) ( void * memory , FT_Raster * raster )
const FT_Raster_NewFunc = Ptr{Cvoid}

# C code:
# typedef void ( * FT_Raster_DoneFunc ) ( FT_Raster raster )
const FT_Raster_DoneFunc = Ptr{Cvoid}

# C code:
# typedef void ( * FT_Raster_ResetFunc ) ( FT_Raster raster , unsigned char * pool_base , unsigned long pool_size )
const FT_Raster_ResetFunc = Ptr{Cvoid}

# C code:
# typedef int ( * FT_Raster_SetModeFunc ) ( FT_Raster raster , unsigned long mode , void * args )
const FT_Raster_SetModeFunc = Ptr{Cvoid}

# C code:
# typedef int ( * FT_Raster_RenderFunc ) ( FT_Raster raster , const FT_Raster_Params * params )
const FT_Raster_RenderFunc = Ptr{Cvoid}

struct FT_Raster_Funcs_
    glyph_format::FT_Glyph_Format
    raster_new::FT_Raster_NewFunc
    raster_reset::FT_Raster_ResetFunc
    raster_set_mode::FT_Raster_SetModeFunc
    raster_render::FT_Raster_RenderFunc
    raster_done::FT_Raster_DoneFunc
end

const FT_Raster_Funcs = FT_Raster_Funcs_

const FT_Bool = Cuchar

const FT_FWord = Cshort

const FT_UFWord = Cushort

const FT_Char = Int8

const FT_Byte = Cuchar

const FT_Bytes = Ptr{FT_Byte}

const FT_Tag = FT_UInt32

const FT_String = Cchar

const FT_Short = Cshort

const FT_UShort = Cushort

const FT_Int = Cint

const FT_UInt = Cuint

const FT_Long = Clong

const FT_ULong = Culong

const FT_F2Dot14 = Cshort

const FT_F26Dot6 = Clong

const FT_Fixed = Clong

const FT_Error = Cint

const FT_Pointer = Ptr{Cvoid}

const FT_Offset = Csize_t

const FT_PtrDist = Cptrdiff_t

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

# C code:
# typedef void ( * FT_Generic_Finalizer ) ( void * object )
const FT_Generic_Finalizer = Ptr{Cvoid}

struct FT_Generic_
    data::Ptr{Cvoid}
    finalizer::FT_Generic_Finalizer
end

const FT_Generic = FT_Generic_

const FT_ListNode = Ptr{Cvoid}

struct FT_ListRec_
    head::FT_ListNode
    tail::FT_ListNode
end

const FT_List = Ptr{FT_ListRec_}

struct FT_ListNodeRec_
    prev::FT_ListNode
    next::FT_ListNode
    data::Ptr{Cvoid}
end

const FT_ListNodeRec = FT_ListNodeRec_

const FT_ListRec = FT_ListRec_

@cenum var"##Ctag#253"::UInt32 begin
    FT_Mod_Err_Base = 0
    FT_Mod_Err_Autofit = 0
    FT_Mod_Err_BDF = 0
    FT_Mod_Err_Bzip2 = 0
    FT_Mod_Err_Cache = 0
    FT_Mod_Err_CFF = 0
    FT_Mod_Err_CID = 0
    FT_Mod_Err_Gzip = 0
    FT_Mod_Err_LZW = 0
    FT_Mod_Err_OTvalid = 0
    FT_Mod_Err_PCF = 0
    FT_Mod_Err_PFR = 0
    FT_Mod_Err_PSaux = 0
    FT_Mod_Err_PShinter = 0
    FT_Mod_Err_PSnames = 0
    FT_Mod_Err_Raster = 0
    FT_Mod_Err_SFNT = 0
    FT_Mod_Err_Smooth = 0
    FT_Mod_Err_TrueType = 0
    FT_Mod_Err_Type1 = 0
    FT_Mod_Err_Type42 = 0
    FT_Mod_Err_Winfonts = 0
    FT_Mod_Err_GXvalid = 0
    FT_Mod_Err_Max = 1
end

@cenum var"##Ctag#254"::UInt32 begin
    FT_Err_Ok = 0
    FT_Err_Cannot_Open_Resource = 1
    FT_Err_Unknown_File_Format = 2
    FT_Err_Invalid_File_Format = 3
    FT_Err_Invalid_Version = 4
    FT_Err_Lower_Module_Version = 5
    FT_Err_Invalid_Argument = 6
    FT_Err_Unimplemented_Feature = 7
    FT_Err_Invalid_Table = 8
    FT_Err_Invalid_Offset = 9
    FT_Err_Array_Too_Large = 10
    FT_Err_Missing_Module = 11
    FT_Err_Missing_Property = 12
    FT_Err_Invalid_Glyph_Index = 16
    FT_Err_Invalid_Character_Code = 17
    FT_Err_Invalid_Glyph_Format = 18
    FT_Err_Cannot_Render_Glyph = 19
    FT_Err_Invalid_Outline = 20
    FT_Err_Invalid_Composite = 21
    FT_Err_Too_Many_Hints = 22
    FT_Err_Invalid_Pixel_Size = 23
    FT_Err_Invalid_Handle = 32
    FT_Err_Invalid_Library_Handle = 33
    FT_Err_Invalid_Driver_Handle = 34
    FT_Err_Invalid_Face_Handle = 35
    FT_Err_Invalid_Size_Handle = 36
    FT_Err_Invalid_Slot_Handle = 37
    FT_Err_Invalid_CharMap_Handle = 38
    FT_Err_Invalid_Cache_Handle = 39
    FT_Err_Invalid_Stream_Handle = 40
    FT_Err_Too_Many_Drivers = 48
    FT_Err_Too_Many_Extensions = 49
    FT_Err_Out_Of_Memory = 64
    FT_Err_Unlisted_Object = 65
    FT_Err_Cannot_Open_Stream = 81
    FT_Err_Invalid_Stream_Seek = 82
    FT_Err_Invalid_Stream_Skip = 83
    FT_Err_Invalid_Stream_Read = 84
    FT_Err_Invalid_Stream_Operation = 85
    FT_Err_Invalid_Frame_Operation = 86
    FT_Err_Nested_Frame_Access = 87
    FT_Err_Invalid_Frame_Read = 88
    FT_Err_Raster_Uninitialized = 96
    FT_Err_Raster_Corrupted = 97
    FT_Err_Raster_Overflow = 98
    FT_Err_Raster_Negative_Height = 99
    FT_Err_Too_Many_Caches = 112
    FT_Err_Invalid_Opcode = 128
    FT_Err_Too_Few_Arguments = 129
    FT_Err_Stack_Overflow = 130
    FT_Err_Code_Overflow = 131
    FT_Err_Bad_Argument = 132
    FT_Err_Divide_By_Zero = 133
    FT_Err_Invalid_Reference = 134
    FT_Err_Debug_OpCode = 135
    FT_Err_ENDF_In_Exec_Stream = 136
    FT_Err_Nested_DEFS = 137
    FT_Err_Invalid_CodeRange = 138
    FT_Err_Execution_Too_Long = 139
    FT_Err_Too_Many_Function_Defs = 140
    FT_Err_Too_Many_Instruction_Defs = 141
    FT_Err_Table_Missing = 142
    FT_Err_Horiz_Header_Missing = 143
    FT_Err_Locations_Missing = 144
    FT_Err_Name_Table_Missing = 145
    FT_Err_CMap_Table_Missing = 146
    FT_Err_Hmtx_Table_Missing = 147
    FT_Err_Post_Table_Missing = 148
    FT_Err_Invalid_Horiz_Metrics = 149
    FT_Err_Invalid_CharMap_Format = 150
    FT_Err_Invalid_PPem = 151
    FT_Err_Invalid_Vert_Metrics = 152
    FT_Err_Could_Not_Find_Context = 153
    FT_Err_Invalid_Post_Table_Format = 154
    FT_Err_Invalid_Post_Table = 155
    FT_Err_DEF_In_Glyf_Bytecode = 156
    FT_Err_Missing_Bitmap = 157
    FT_Err_Syntax_Error = 160
    FT_Err_Stack_Underflow = 161
    FT_Err_Ignore = 162
    FT_Err_No_Unicode_Glyph_Name = 163
    FT_Err_Glyph_Too_Big = 164
    FT_Err_Missing_Startfont_Field = 176
    FT_Err_Missing_Font_Field = 177
    FT_Err_Missing_Size_Field = 178
    FT_Err_Missing_Fontboundingbox_Field = 179
    FT_Err_Missing_Chars_Field = 180
    FT_Err_Missing_Startchar_Field = 181
    FT_Err_Missing_Encoding_Field = 182
    FT_Err_Missing_Bbx_Field = 183
    FT_Err_Bbx_Too_Big = 184
    FT_Err_Corrupted_Font_Header = 185
    FT_Err_Corrupted_Font_Glyphs = 186
    FT_Err_Max = 187
end

function FT_Error_String(error_code)
    ccall((:FT_Error_String, libfreetype), Ptr{Cchar}, (FT_Error,), error_code)
end

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

struct FT_Bitmap_Size_
    height::FT_Short
    width::FT_Short
    size::FT_Pos
    x_ppem::FT_Pos
    y_ppem::FT_Pos
end

const FT_Bitmap_Size = FT_Bitmap_Size_

mutable struct FT_LibraryRec_ end

const FT_Library = Ptr{FT_LibraryRec_}

mutable struct FT_ModuleRec_ end

const FT_Module = Ptr{FT_ModuleRec_}

mutable struct FT_DriverRec_ end

const FT_Driver = Ptr{FT_DriverRec_}

mutable struct FT_RendererRec_ end

const FT_Renderer = Ptr{FT_RendererRec_}

const FT_Face = Ptr{Cvoid}

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

mutable struct FT_Size_InternalRec_ end

const FT_Size_Internal = Ptr{FT_Size_InternalRec_}

struct FT_SizeRec_
    face::FT_Face
    generic::FT_Generic
    metrics::FT_Size_Metrics
    internal::FT_Size_Internal
end

const FT_Size = Ptr{FT_SizeRec_}

const FT_GlyphSlot = Ptr{Cvoid}

const FT_CharMap = Ptr{Cvoid}

@cenum FT_Encoding_::UInt32 begin
    FT_ENCODING_NONE = 0
    FT_ENCODING_MS_SYMBOL = 1937337698
    FT_ENCODING_UNICODE = 1970170211
    FT_ENCODING_SJIS = 1936353651
    FT_ENCODING_PRC = 1734484000
    FT_ENCODING_BIG5 = 1651074869
    FT_ENCODING_WANSUNG = 2002873971
    FT_ENCODING_JOHAB = 1785686113
    FT_ENCODING_GB2312 = 1734484000
    FT_ENCODING_MS_SJIS = 1936353651
    FT_ENCODING_MS_GB2312 = 1734484000
    FT_ENCODING_MS_BIG5 = 1651074869
    FT_ENCODING_MS_WANSUNG = 2002873971
    FT_ENCODING_MS_JOHAB = 1785686113
    FT_ENCODING_ADOBE_STANDARD = 1094995778
    FT_ENCODING_ADOBE_EXPERT = 1094992453
    FT_ENCODING_ADOBE_CUSTOM = 1094992451
    FT_ENCODING_ADOBE_LATIN_1 = 1818326065
    FT_ENCODING_OLD_LATIN_2 = 1818326066
    FT_ENCODING_APPLE_ROMAN = 1634889070
end

const FT_Encoding = FT_Encoding_

struct FT_CharMapRec_
    face::FT_Face
    encoding::FT_Encoding
    platform_id::FT_UShort
    encoding_id::FT_UShort
end

const FT_CharMapRec = FT_CharMapRec_

mutable struct FT_Face_InternalRec_ end

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

const FT_FaceRec = FT_FaceRec_

const FT_SizeRec = FT_SizeRec_

mutable struct FT_SubGlyphRec_ end

const FT_SubGlyph = Ptr{FT_SubGlyphRec_}

mutable struct FT_Slot_InternalRec_ end

const FT_Slot_Internal = Ptr{FT_Slot_InternalRec_}

struct FT_GlyphSlotRec_
    library::FT_Library
    face::FT_Face
    next::FT_GlyphSlot
    glyph_index::FT_UInt
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

const FT_GlyphSlotRec = FT_GlyphSlotRec_

function FT_Init_FreeType(alibrary)
    ccall((:FT_Init_FreeType, libfreetype), FT_Error, (Ptr{FT_Library},), alibrary)
end

function FT_Done_FreeType(library)
    ccall((:FT_Done_FreeType, libfreetype), FT_Error, (FT_Library,), library)
end

struct FT_Parameter_
    tag::FT_ULong
    data::FT_Pointer
end

const FT_Parameter = FT_Parameter_

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

function FT_New_Face(library, filepathname, face_index, aface)
    ccall((:FT_New_Face, libfreetype), FT_Error, (FT_Library, Ptr{Cchar}, FT_Long, Ptr{FT_Face}), library, filepathname, face_index, aface)
end

function FT_New_Memory_Face(library, file_base, file_size, face_index, aface)
    ccall((:FT_New_Memory_Face, libfreetype), FT_Error, (FT_Library, Ptr{FT_Byte}, FT_Long, FT_Long, Ptr{FT_Face}), library, file_base, file_size, face_index, aface)
end

function FT_Open_Face(library, args, face_index, aface)
    ccall((:FT_Open_Face, libfreetype), FT_Error, (FT_Library, Ptr{FT_Open_Args}, FT_Long, Ptr{FT_Face}), library, args, face_index, aface)
end

function FT_Attach_File(face, filepathname)
    ccall((:FT_Attach_File, libfreetype), FT_Error, (FT_Face, Ptr{Cchar}), face, filepathname)
end

function FT_Attach_Stream(face, parameters)
    ccall((:FT_Attach_Stream, libfreetype), FT_Error, (FT_Face, Ptr{FT_Open_Args}), face, parameters)
end

function FT_Reference_Face(face)
    ccall((:FT_Reference_Face, libfreetype), FT_Error, (FT_Face,), face)
end

function FT_Done_Face(face)
    ccall((:FT_Done_Face, libfreetype), FT_Error, (FT_Face,), face)
end

function FT_Select_Size(face, strike_index)
    ccall((:FT_Select_Size, libfreetype), FT_Error, (FT_Face, FT_Int), face, strike_index)
end

@cenum FT_Size_Request_Type_::UInt32 begin
    FT_SIZE_REQUEST_TYPE_NOMINAL = 0
    FT_SIZE_REQUEST_TYPE_REAL_DIM = 1
    FT_SIZE_REQUEST_TYPE_BBOX = 2
    FT_SIZE_REQUEST_TYPE_CELL = 3
    FT_SIZE_REQUEST_TYPE_SCALES = 4
    FT_SIZE_REQUEST_TYPE_MAX = 5
end

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

function FT_Request_Size(face, req)
    ccall((:FT_Request_Size, libfreetype), FT_Error, (FT_Face, FT_Size_Request), face, req)
end

function FT_Set_Char_Size(face, char_width, char_height, horz_resolution, vert_resolution)
    ccall((:FT_Set_Char_Size, libfreetype), FT_Error, (FT_Face, FT_F26Dot6, FT_F26Dot6, FT_UInt, FT_UInt), face, char_width, char_height, horz_resolution, vert_resolution)
end

function FT_Set_Pixel_Sizes(face, pixel_width, pixel_height)
    ccall((:FT_Set_Pixel_Sizes, libfreetype), FT_Error, (FT_Face, FT_UInt, FT_UInt), face, pixel_width, pixel_height)
end

function FT_Load_Glyph(face, glyph_index, load_flags)
    ccall((:FT_Load_Glyph, libfreetype), FT_Error, (FT_Face, FT_UInt, FT_Int32), face, glyph_index, load_flags)
end

function FT_Load_Char(face, char_code, load_flags)
    ccall((:FT_Load_Char, libfreetype), FT_Error, (FT_Face, FT_ULong, FT_Int32), face, char_code, load_flags)
end

function FT_Set_Transform(face, matrix, delta)
    ccall((:FT_Set_Transform, libfreetype), Cvoid, (FT_Face, Ptr{FT_Matrix}, Ptr{FT_Vector}), face, matrix, delta)
end

@cenum FT_Render_Mode_::UInt32 begin
    FT_RENDER_MODE_NORMAL = 0
    FT_RENDER_MODE_LIGHT = 1
    FT_RENDER_MODE_MONO = 2
    FT_RENDER_MODE_LCD = 3
    FT_RENDER_MODE_LCD_V = 4
    FT_RENDER_MODE_MAX = 5
end

const FT_Render_Mode = FT_Render_Mode_

function FT_Render_Glyph(slot, render_mode)
    ccall((:FT_Render_Glyph, libfreetype), FT_Error, (FT_GlyphSlot, FT_Render_Mode), slot, render_mode)
end

@cenum FT_Kerning_Mode_::UInt32 begin
    FT_KERNING_DEFAULT = 0
    FT_KERNING_UNFITTED = 1
    FT_KERNING_UNSCALED = 2
end

const FT_Kerning_Mode = FT_Kerning_Mode_

function FT_Get_Kerning(face, left_glyph, right_glyph, kern_mode, akerning)
    ccall((:FT_Get_Kerning, libfreetype), FT_Error, (FT_Face, FT_UInt, FT_UInt, FT_UInt, Ptr{FT_Vector}), face, left_glyph, right_glyph, kern_mode, akerning)
end

function FT_Get_Track_Kerning(face, point_size, degree, akerning)
    ccall((:FT_Get_Track_Kerning, libfreetype), FT_Error, (FT_Face, FT_Fixed, FT_Int, Ptr{FT_Fixed}), face, point_size, degree, akerning)
end

function FT_Get_Glyph_Name(face, glyph_index, buffer, buffer_max)
    ccall((:FT_Get_Glyph_Name, libfreetype), FT_Error, (FT_Face, FT_UInt, FT_Pointer, FT_UInt), face, glyph_index, buffer, buffer_max)
end

function FT_Get_Postscript_Name(face)
    ccall((:FT_Get_Postscript_Name, libfreetype), Ptr{Cchar}, (FT_Face,), face)
end

function FT_Select_Charmap(face, encoding)
    ccall((:FT_Select_Charmap, libfreetype), FT_Error, (FT_Face, FT_Encoding), face, encoding)
end

function FT_Set_Charmap(face, charmap)
    ccall((:FT_Set_Charmap, libfreetype), FT_Error, (FT_Face, FT_CharMap), face, charmap)
end

function FT_Get_Charmap_Index(charmap)
    ccall((:FT_Get_Charmap_Index, libfreetype), FT_Int, (FT_CharMap,), charmap)
end

function FT_Get_Char_Index(face, charcode)
    ccall((:FT_Get_Char_Index, libfreetype), FT_UInt, (FT_Face, FT_ULong), face, charcode)
end

function FT_Get_First_Char(face, agindex)
    ccall((:FT_Get_First_Char, libfreetype), FT_ULong, (FT_Face, Ptr{FT_UInt}), face, agindex)
end

function FT_Get_Next_Char(face, char_code, agindex)
    ccall((:FT_Get_Next_Char, libfreetype), FT_ULong, (FT_Face, FT_ULong, Ptr{FT_UInt}), face, char_code, agindex)
end

function FT_Face_Properties(face, num_properties, properties)
    ccall((:FT_Face_Properties, libfreetype), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Parameter}), face, num_properties, properties)
end

function FT_Get_Name_Index(face, glyph_name)
    ccall((:FT_Get_Name_Index, libfreetype), FT_UInt, (FT_Face, Ptr{FT_String}), face, glyph_name)
end

function FT_Get_SubGlyph_Info(glyph, sub_index, p_index, p_flags, p_arg1, p_arg2, p_transform)
    ccall((:FT_Get_SubGlyph_Info, libfreetype), FT_Error, (FT_GlyphSlot, FT_UInt, Ptr{FT_Int}, Ptr{FT_UInt}, Ptr{FT_Int}, Ptr{FT_Int}, Ptr{FT_Matrix}), glyph, sub_index, p_index, p_flags, p_arg1, p_arg2, p_transform)
end

struct FT_LayerIterator_
    num_layers::FT_UInt
    layer::FT_UInt
    p::Ptr{FT_Byte}
end

const FT_LayerIterator = FT_LayerIterator_

function FT_Get_Color_Glyph_Layer(face, base_glyph, aglyph_index, acolor_index, iterator)
    ccall((:FT_Get_Color_Glyph_Layer, libfreetype), FT_Bool, (FT_Face, FT_UInt, Ptr{FT_UInt}, Ptr{FT_UInt}, Ptr{FT_LayerIterator}), face, base_glyph, aglyph_index, acolor_index, iterator)
end

function FT_Get_FSType_Flags(face)
    ccall((:FT_Get_FSType_Flags, libfreetype), FT_UShort, (FT_Face,), face)
end

function FT_Face_GetCharVariantIndex(face, charcode, variantSelector)
    ccall((:FT_Face_GetCharVariantIndex, libfreetype), FT_UInt, (FT_Face, FT_ULong, FT_ULong), face, charcode, variantSelector)
end

function FT_Face_GetCharVariantIsDefault(face, charcode, variantSelector)
    ccall((:FT_Face_GetCharVariantIsDefault, libfreetype), FT_Int, (FT_Face, FT_ULong, FT_ULong), face, charcode, variantSelector)
end

function FT_Face_GetVariantSelectors(face)
    ccall((:FT_Face_GetVariantSelectors, libfreetype), Ptr{FT_UInt32}, (FT_Face,), face)
end

function FT_Face_GetVariantsOfChar(face, charcode)
    ccall((:FT_Face_GetVariantsOfChar, libfreetype), Ptr{FT_UInt32}, (FT_Face, FT_ULong), face, charcode)
end

function FT_Face_GetCharsOfVariant(face, variantSelector)
    ccall((:FT_Face_GetCharsOfVariant, libfreetype), Ptr{FT_UInt32}, (FT_Face, FT_ULong), face, variantSelector)
end

function FT_MulDiv(a, b, c)
    ccall((:FT_MulDiv, libfreetype), FT_Long, (FT_Long, FT_Long, FT_Long), a, b, c)
end

function FT_MulFix(a, b)
    ccall((:FT_MulFix, libfreetype), FT_Long, (FT_Long, FT_Long), a, b)
end

function FT_DivFix(a, b)
    ccall((:FT_DivFix, libfreetype), FT_Long, (FT_Long, FT_Long), a, b)
end

function FT_RoundFix(a)
    ccall((:FT_RoundFix, libfreetype), FT_Fixed, (FT_Fixed,), a)
end

function FT_CeilFix(a)
    ccall((:FT_CeilFix, libfreetype), FT_Fixed, (FT_Fixed,), a)
end

function FT_FloorFix(a)
    ccall((:FT_FloorFix, libfreetype), FT_Fixed, (FT_Fixed,), a)
end

function FT_Vector_Transform(vector, matrix)
    ccall((:FT_Vector_Transform, libfreetype), Cvoid, (Ptr{FT_Vector}, Ptr{FT_Matrix}), vector, matrix)
end

function FT_Library_Version(library, amajor, aminor, apatch)
    ccall((:FT_Library_Version, libfreetype), Cvoid, (FT_Library, Ptr{FT_Int}, Ptr{FT_Int}, Ptr{FT_Int}), library, amajor, aminor, apatch)
end

function FT_Face_CheckTrueTypePatents(face)
    ccall((:FT_Face_CheckTrueTypePatents, libfreetype), FT_Bool, (FT_Face,), face)
end

function FT_Face_SetUnpatentedHinting(face, value)
    ccall((:FT_Face_SetUnpatentedHinting, libfreetype), FT_Bool, (FT_Face, FT_Bool), face, value)
end

# exports
const PREFIXES = ["FREETYPE_", "FT_", "ft_", "TT_", "TTAG_", "CFF_", "T1_", "CID_", "PS_", "t1_"]
foreach(names(@__MODULE__; all=true)) do s
    for prefix in PREFIXES
        if startswith(string(s), prefix)
            @eval export $s
        end
    end
end

end # module
