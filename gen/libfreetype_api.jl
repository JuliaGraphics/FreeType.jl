# Julia wrapper for header: ft2build.h
# Automatically generated using Clang.jl

# Julia wrapper for header: freetype.h
# Automatically generated using Clang.jl


function FT_Init_FreeType(alibrary)
    ccall((:FT_Init_FreeType, libfreetypename), FT_Error, (Ptr{FT_Library},), alibrary)
end

function FT_Done_FreeType(library)
    ccall((:FT_Done_FreeType, libfreetypename), FT_Error, (FT_Library,), library)
end

function FT_New_Face(library, filepathname, face_index, aface)
    ccall((:FT_New_Face, libfreetypename), FT_Error, (FT_Library, Cstring, FT_Long, Ptr{FT_Face}), library, filepathname, face_index, aface)
end

function FT_New_Memory_Face(library, file_base, file_size, face_index, aface)
    ccall((:FT_New_Memory_Face, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Byte}, FT_Long, FT_Long, Ptr{FT_Face}), library, file_base, file_size, face_index, aface)
end

function FT_Open_Face(library, args, face_index, aface)
    ccall((:FT_Open_Face, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Open_Args}, FT_Long, Ptr{FT_Face}), library, args, face_index, aface)
end

function FT_Attach_File(face, filepathname)
    ccall((:FT_Attach_File, libfreetypename), FT_Error, (FT_Face, Cstring), face, filepathname)
end

function FT_Attach_Stream(face, parameters)
    ccall((:FT_Attach_Stream, libfreetypename), FT_Error, (FT_Face, Ptr{FT_Open_Args}), face, parameters)
end

function FT_Reference_Face(face)
    ccall((:FT_Reference_Face, libfreetypename), FT_Error, (FT_Face,), face)
end

function FT_Done_Face(face)
    ccall((:FT_Done_Face, libfreetypename), FT_Error, (FT_Face,), face)
end

function FT_Select_Size(face, strike_index)
    ccall((:FT_Select_Size, libfreetypename), FT_Error, (FT_Face, FT_Int), face, strike_index)
end

function FT_Request_Size(face, req)
    ccall((:FT_Request_Size, libfreetypename), FT_Error, (FT_Face, FT_Size_Request), face, req)
end

function FT_Set_Char_Size(face, char_width, char_height, horz_resolution, vert_resolution)
    ccall((:FT_Set_Char_Size, libfreetypename), FT_Error, (FT_Face, FT_F26Dot6, FT_F26Dot6, FT_UInt, FT_UInt), face, char_width, char_height, horz_resolution, vert_resolution)
end

function FT_Set_Pixel_Sizes(face, pixel_width, pixel_height)
    ccall((:FT_Set_Pixel_Sizes, libfreetypename), FT_Error, (FT_Face, FT_UInt, FT_UInt), face, pixel_width, pixel_height)
end

function FT_Load_Glyph(face, glyph_index, load_flags)
    ccall((:FT_Load_Glyph, libfreetypename), FT_Error, (FT_Face, FT_UInt, FT_Int32), face, glyph_index, load_flags)
end

function FT_Load_Char(face, char_code, load_flags)
    ccall((:FT_Load_Char, libfreetypename), FT_Error, (FT_Face, FT_ULong, FT_Int32), face, char_code, load_flags)
end

function FT_Set_Transform(face, matrix, delta)
    ccall((:FT_Set_Transform, libfreetypename), Cvoid, (FT_Face, Ptr{FT_Matrix}, Ptr{FT_Vector}), face, matrix, delta)
end

function FT_Render_Glyph(slot, render_mode)
    ccall((:FT_Render_Glyph, libfreetypename), FT_Error, (FT_GlyphSlot, FT_Render_Mode), slot, render_mode)
end

function FT_Get_Kerning(face, left_glyph, right_glyph, kern_mode, akerning)
    ccall((:FT_Get_Kerning, libfreetypename), FT_Error, (FT_Face, FT_UInt, FT_UInt, FT_UInt, Ptr{FT_Vector}), face, left_glyph, right_glyph, kern_mode, akerning)
end

function FT_Get_Track_Kerning(face, point_size, degree, akerning)
    ccall((:FT_Get_Track_Kerning, libfreetypename), FT_Error, (FT_Face, FT_Fixed, FT_Int, Ptr{FT_Fixed}), face, point_size, degree, akerning)
end

function FT_Get_Glyph_Name(face, glyph_index, buffer, buffer_max)
    ccall((:FT_Get_Glyph_Name, libfreetypename), FT_Error, (FT_Face, FT_UInt, FT_Pointer, FT_UInt), face, glyph_index, buffer, buffer_max)
end

function FT_Get_Postscript_Name(face)
    ccall((:FT_Get_Postscript_Name, libfreetypename), Cstring, (FT_Face,), face)
end

function FT_Select_Charmap(face, encoding)
    ccall((:FT_Select_Charmap, libfreetypename), FT_Error, (FT_Face, FT_Encoding), face, encoding)
end

function FT_Set_Charmap(face, charmap)
    ccall((:FT_Set_Charmap, libfreetypename), FT_Error, (FT_Face, FT_CharMap), face, charmap)
end

function FT_Get_Charmap_Index(charmap)
    ccall((:FT_Get_Charmap_Index, libfreetypename), FT_Int, (FT_CharMap,), charmap)
end

function FT_Get_Char_Index(face, charcode)
    ccall((:FT_Get_Char_Index, libfreetypename), FT_UInt, (FT_Face, FT_ULong), face, charcode)
end

function FT_Get_First_Char(face, agindex)
    ccall((:FT_Get_First_Char, libfreetypename), FT_ULong, (FT_Face, Ptr{FT_UInt}), face, agindex)
end

function FT_Get_Next_Char(face, char_code, agindex)
    ccall((:FT_Get_Next_Char, libfreetypename), FT_ULong, (FT_Face, FT_ULong, Ptr{FT_UInt}), face, char_code, agindex)
end

function FT_Face_Properties(face, num_properties, properties)
    ccall((:FT_Face_Properties, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Parameter}), face, num_properties, properties)
end

function FT_Get_Name_Index(face, glyph_name)
    ccall((:FT_Get_Name_Index, libfreetypename), FT_UInt, (FT_Face, Ptr{FT_String}), face, glyph_name)
end

function FT_Get_SubGlyph_Info(glyph, sub_index, p_index, p_flags, p_arg1, p_arg2, p_transform)
    ccall((:FT_Get_SubGlyph_Info, libfreetypename), FT_Error, (FT_GlyphSlot, FT_UInt, Ptr{FT_Int}, Ptr{FT_UInt}, Ptr{FT_Int}, Ptr{FT_Int}, Ptr{FT_Matrix}), glyph, sub_index, p_index, p_flags, p_arg1, p_arg2, p_transform)
end

function FT_Get_FSType_Flags(face)
    ccall((:FT_Get_FSType_Flags, libfreetypename), FT_UShort, (FT_Face,), face)
end

function FT_Face_GetCharVariantIndex(face, charcode, variantSelector)
    ccall((:FT_Face_GetCharVariantIndex, libfreetypename), FT_UInt, (FT_Face, FT_ULong, FT_ULong), face, charcode, variantSelector)
end

function FT_Face_GetCharVariantIsDefault(face, charcode, variantSelector)
    ccall((:FT_Face_GetCharVariantIsDefault, libfreetypename), FT_Int, (FT_Face, FT_ULong, FT_ULong), face, charcode, variantSelector)
end

function FT_Face_GetVariantSelectors(face)
    ccall((:FT_Face_GetVariantSelectors, libfreetypename), Ptr{FT_UInt32}, (FT_Face,), face)
end

function FT_Face_GetVariantsOfChar(face, charcode)
    ccall((:FT_Face_GetVariantsOfChar, libfreetypename), Ptr{FT_UInt32}, (FT_Face, FT_ULong), face, charcode)
end

function FT_Face_GetCharsOfVariant(face, variantSelector)
    ccall((:FT_Face_GetCharsOfVariant, libfreetypename), Ptr{FT_UInt32}, (FT_Face, FT_ULong), face, variantSelector)
end

function FT_MulDiv(a, b, c)
    ccall((:FT_MulDiv, libfreetypename), FT_Long, (FT_Long, FT_Long, FT_Long), a, b, c)
end

function FT_MulFix(a, b)
    ccall((:FT_MulFix, libfreetypename), FT_Long, (FT_Long, FT_Long), a, b)
end

function FT_DivFix(a, b)
    ccall((:FT_DivFix, libfreetypename), FT_Long, (FT_Long, FT_Long), a, b)
end

function FT_RoundFix(a)
    ccall((:FT_RoundFix, libfreetypename), FT_Fixed, (FT_Fixed,), a)
end

function FT_CeilFix(a)
    ccall((:FT_CeilFix, libfreetypename), FT_Fixed, (FT_Fixed,), a)
end

function FT_FloorFix(a)
    ccall((:FT_FloorFix, libfreetypename), FT_Fixed, (FT_Fixed,), a)
end

function FT_Vector_Transform(vec, matrix)
    ccall((:FT_Vector_Transform, libfreetypename), Cvoid, (Ptr{FT_Vector}, Ptr{FT_Matrix}), vec, matrix)
end

function FT_Library_Version(library, amajor, aminor, apatch)
    ccall((:FT_Library_Version, libfreetypename), Cvoid, (FT_Library, Ptr{FT_Int}, Ptr{FT_Int}, Ptr{FT_Int}), library, amajor, aminor, apatch)
end

function FT_Face_CheckTrueTypePatents(face)
    ccall((:FT_Face_CheckTrueTypePatents, libfreetypename), FT_Bool, (FT_Face,), face)
end

function FT_Face_SetUnpatentedHinting(face, value)
    ccall((:FT_Face_SetUnpatentedHinting, libfreetypename), FT_Bool, (FT_Face, FT_Bool), face, value)
end
# Julia wrapper for header: ftadvanc.h
# Automatically generated using Clang.jl


function FT_Get_Advance(face, gindex, load_flags, padvance)
    ccall((:FT_Get_Advance, libfreetypename), FT_Error, (FT_Face, FT_UInt, FT_Int32, Ptr{FT_Fixed}), face, gindex, load_flags, padvance)
end

function FT_Get_Advances(face, start, count, load_flags, padvances)
    ccall((:FT_Get_Advances, libfreetypename), FT_Error, (FT_Face, FT_UInt, FT_UInt, FT_Int32, Ptr{FT_Fixed}), face, start, count, load_flags, padvances)
end
# Julia wrapper for header: ftbbox.h
# Automatically generated using Clang.jl


function FT_Outline_Get_BBox(outline, abbox)
    ccall((:FT_Outline_Get_BBox, libfreetypename), FT_Error, (Ptr{FT_Outline}, Ptr{FT_BBox}), outline, abbox)
end
# Julia wrapper for header: ftbdf.h
# Automatically generated using Clang.jl


function FT_Get_BDF_Charset_ID(face, acharset_encoding, acharset_registry)
    ccall((:FT_Get_BDF_Charset_ID, libfreetypename), FT_Error, (FT_Face, Ptr{Cstring}, Ptr{Cstring}), face, acharset_encoding, acharset_registry)
end

function FT_Get_BDF_Property(face, prop_name, aproperty)
    ccall((:FT_Get_BDF_Property, libfreetypename), FT_Error, (FT_Face, Cstring, Ptr{BDF_PropertyRec}), face, prop_name, aproperty)
end
# Julia wrapper for header: ftbitmap.h
# Automatically generated using Clang.jl


function FT_Bitmap_Init(abitmap)
    ccall((:FT_Bitmap_Init, libfreetypename), Cvoid, (Ptr{FT_Bitmap},), abitmap)
end

function FT_Bitmap_New(abitmap)
    ccall((:FT_Bitmap_New, libfreetypename), Cvoid, (Ptr{FT_Bitmap},), abitmap)
end

function FT_Bitmap_Copy(library, source, target)
    ccall((:FT_Bitmap_Copy, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Bitmap}, Ptr{FT_Bitmap}), library, source, target)
end

function FT_Bitmap_Embolden(library, bitmap, xStrength, yStrength)
    ccall((:FT_Bitmap_Embolden, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Bitmap}, FT_Pos, FT_Pos), library, bitmap, xStrength, yStrength)
end

function FT_Bitmap_Convert(library, source, target, alignment)
    ccall((:FT_Bitmap_Convert, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Bitmap}, Ptr{FT_Bitmap}, FT_Int), library, source, target, alignment)
end

function FT_GlyphSlot_Own_Bitmap(slot)
    ccall((:FT_GlyphSlot_Own_Bitmap, libfreetypename), FT_Error, (FT_GlyphSlot,), slot)
end

function FT_Bitmap_Done(library, bitmap)
    ccall((:FT_Bitmap_Done, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Bitmap}), library, bitmap)
end
# Julia wrapper for header: ftbzip2.h
# Automatically generated using Clang.jl


function FT_Stream_OpenBzip2(stream, source)
    ccall((:FT_Stream_OpenBzip2, libfreetypename), FT_Error, (FT_Stream, FT_Stream), stream, source)
end
# Julia wrapper for header: ftcache.h
# Automatically generated using Clang.jl


function FTC_Manager_New(library, max_faces, max_sizes, max_bytes, requester, req_data, amanager)
    ccall((:FTC_Manager_New, libfreetypename), FT_Error, (FT_Library, FT_UInt, FT_UInt, FT_ULong, FTC_Face_Requester, FT_Pointer, Ptr{FTC_Manager}), library, max_faces, max_sizes, max_bytes, requester, req_data, amanager)
end

function FTC_Manager_Reset(manager)
    ccall((:FTC_Manager_Reset, libfreetypename), Cvoid, (FTC_Manager,), manager)
end

function FTC_Manager_Done(manager)
    ccall((:FTC_Manager_Done, libfreetypename), Cvoid, (FTC_Manager,), manager)
end

function FTC_Manager_LookupFace(manager, face_id, aface)
    ccall((:FTC_Manager_LookupFace, libfreetypename), FT_Error, (FTC_Manager, FTC_FaceID, Ptr{FT_Face}), manager, face_id, aface)
end

function FTC_Manager_LookupSize(manager, scaler, asize)
    ccall((:FTC_Manager_LookupSize, libfreetypename), FT_Error, (FTC_Manager, FTC_Scaler, Ptr{FT_Size}), manager, scaler, asize)
end

function FTC_Node_Unref(node, manager)
    ccall((:FTC_Node_Unref, libfreetypename), Cvoid, (FTC_Node, FTC_Manager), node, manager)
end

function FTC_Manager_RemoveFaceID(manager, face_id)
    ccall((:FTC_Manager_RemoveFaceID, libfreetypename), Cvoid, (FTC_Manager, FTC_FaceID), manager, face_id)
end

function FTC_CMapCache_New(manager, acache)
    ccall((:FTC_CMapCache_New, libfreetypename), FT_Error, (FTC_Manager, Ptr{FTC_CMapCache}), manager, acache)
end

function FTC_CMapCache_Lookup(cache, face_id, cmap_index, char_code)
    ccall((:FTC_CMapCache_Lookup, libfreetypename), FT_UInt, (FTC_CMapCache, FTC_FaceID, FT_Int, FT_UInt32), cache, face_id, cmap_index, char_code)
end

function FTC_ImageCache_New(manager, acache)
    ccall((:FTC_ImageCache_New, libfreetypename), FT_Error, (FTC_Manager, Ptr{FTC_ImageCache}), manager, acache)
end

function FTC_ImageCache_Lookup(cache, type, gindex, aglyph, anode)
    ccall((:FTC_ImageCache_Lookup, libfreetypename), FT_Error, (FTC_ImageCache, FTC_ImageType, FT_UInt, Ptr{FT_Glyph}, Ptr{FTC_Node}), cache, type, gindex, aglyph, anode)
end

function FTC_ImageCache_LookupScaler(cache, scaler, load_flags, gindex, aglyph, anode)
    ccall((:FTC_ImageCache_LookupScaler, libfreetypename), FT_Error, (FTC_ImageCache, FTC_Scaler, FT_ULong, FT_UInt, Ptr{FT_Glyph}, Ptr{FTC_Node}), cache, scaler, load_flags, gindex, aglyph, anode)
end

function FTC_SBitCache_New(manager, acache)
    ccall((:FTC_SBitCache_New, libfreetypename), FT_Error, (FTC_Manager, Ptr{FTC_SBitCache}), manager, acache)
end

function FTC_SBitCache_Lookup(cache, type, gindex, sbit, anode)
    ccall((:FTC_SBitCache_Lookup, libfreetypename), FT_Error, (FTC_SBitCache, FTC_ImageType, FT_UInt, Ptr{FTC_SBit}, Ptr{FTC_Node}), cache, type, gindex, sbit, anode)
end

function FTC_SBitCache_LookupScaler(cache, scaler, load_flags, gindex, sbit, anode)
    ccall((:FTC_SBitCache_LookupScaler, libfreetypename), FT_Error, (FTC_SBitCache, FTC_Scaler, FT_ULong, FT_UInt, Ptr{FTC_SBit}, Ptr{FTC_Node}), cache, scaler, load_flags, gindex, sbit, anode)
end
# Julia wrapper for header: ftchapters.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftcid.h
# Automatically generated using Clang.jl


function FT_Get_CID_Registry_Ordering_Supplement(face, registry, ordering, supplement)
    ccall((:FT_Get_CID_Registry_Ordering_Supplement, libfreetypename), FT_Error, (FT_Face, Ptr{Cstring}, Ptr{Cstring}, Ptr{FT_Int}), face, registry, ordering, supplement)
end

function FT_Get_CID_Is_Internally_CID_Keyed(face, is_cid)
    ccall((:FT_Get_CID_Is_Internally_CID_Keyed, libfreetypename), FT_Error, (FT_Face, Ptr{FT_Bool}), face, is_cid)
end

function FT_Get_CID_From_Glyph_Index(face, glyph_index, cid)
    ccall((:FT_Get_CID_From_Glyph_Index, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_UInt}), face, glyph_index, cid)
end
# Julia wrapper for header: ftdriver.h
# Automatically generated using Clang.jl

# Julia wrapper for header: fterrdef.h
# Automatically generated using Clang.jl

# Julia wrapper for header: fterrors.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftfntfmt.h
# Automatically generated using Clang.jl


function FT_Get_Font_Format(face)
    ccall((:FT_Get_Font_Format, libfreetypename), Cstring, (FT_Face,), face)
end

function FT_Get_X11_Font_Format(face)
    ccall((:FT_Get_X11_Font_Format, libfreetypename), Cstring, (FT_Face,), face)
end
# Julia wrapper for header: ftgasp.h
# Automatically generated using Clang.jl


function FT_Get_Gasp(face, ppem)
    ccall((:FT_Get_Gasp, libfreetypename), FT_Int, (FT_Face, FT_UInt), face, ppem)
end
# Julia wrapper for header: ftglyph.h
# Automatically generated using Clang.jl


function FT_Get_Glyph(slot, aglyph)
    ccall((:FT_Get_Glyph, libfreetypename), FT_Error, (FT_GlyphSlot, Ptr{FT_Glyph}), slot, aglyph)
end

function FT_Glyph_Copy(source, target)
    ccall((:FT_Glyph_Copy, libfreetypename), FT_Error, (FT_Glyph, Ptr{FT_Glyph}), source, target)
end

function FT_Glyph_Transform(glyph, matrix, delta)
    ccall((:FT_Glyph_Transform, libfreetypename), FT_Error, (FT_Glyph, Ptr{FT_Matrix}, Ptr{FT_Vector}), glyph, matrix, delta)
end

function FT_Glyph_Get_CBox(glyph, bbox_mode, acbox)
    ccall((:FT_Glyph_Get_CBox, libfreetypename), Cvoid, (FT_Glyph, FT_UInt, Ptr{FT_BBox}), glyph, bbox_mode, acbox)
end

function FT_Glyph_To_Bitmap(the_glyph, render_mode, origin, destroy)
    ccall((:FT_Glyph_To_Bitmap, libfreetypename), FT_Error, (Ptr{FT_Glyph}, FT_Render_Mode, Ptr{FT_Vector}, FT_Bool), the_glyph, render_mode, origin, destroy)
end

function FT_Done_Glyph(glyph)
    ccall((:FT_Done_Glyph, libfreetypename), Cvoid, (FT_Glyph,), glyph)
end

function FT_Matrix_Multiply(a, b)
    ccall((:FT_Matrix_Multiply, libfreetypename), Cvoid, (Ptr{FT_Matrix}, Ptr{FT_Matrix}), a, b)
end

function FT_Matrix_Invert(matrix)
    ccall((:FT_Matrix_Invert, libfreetypename), FT_Error, (Ptr{FT_Matrix},), matrix)
end
# Julia wrapper for header: ftgxval.h
# Automatically generated using Clang.jl


function FT_TrueTypeGX_Validate(face, validation_flags, tables, table_length)
    ccall((:FT_TrueTypeGX_Validate, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Bytes}, FT_UInt), face, validation_flags, tables, table_length)
end

function FT_TrueTypeGX_Free(face, table)
    ccall((:FT_TrueTypeGX_Free, libfreetypename), Cvoid, (FT_Face, FT_Bytes), face, table)
end

function FT_ClassicKern_Validate(face, validation_flags, ckern_table)
    ccall((:FT_ClassicKern_Validate, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Bytes}), face, validation_flags, ckern_table)
end

function FT_ClassicKern_Free(face, table)
    ccall((:FT_ClassicKern_Free, libfreetypename), Cvoid, (FT_Face, FT_Bytes), face, table)
end
# Julia wrapper for header: ftgzip.h
# Automatically generated using Clang.jl


function FT_Stream_OpenGzip(stream, source)
    ccall((:FT_Stream_OpenGzip, libfreetypename), FT_Error, (FT_Stream, FT_Stream), stream, source)
end

function FT_Gzip_Uncompress(memory, output, output_len, input, input_len)
    ccall((:FT_Gzip_Uncompress, libfreetypename), FT_Error, (FT_Memory, Ptr{FT_Byte}, Ptr{FT_ULong}, Ptr{FT_Byte}, FT_ULong), memory, output, output_len, input, input_len)
end
# Julia wrapper for header: ftimage.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftincrem.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftlcdfil.h
# Automatically generated using Clang.jl


function FT_Library_SetLcdFilter(library, filter)
    ccall((:FT_Library_SetLcdFilter, libfreetypename), FT_Error, (FT_Library, FT_LcdFilter), library, filter)
end

function FT_Library_SetLcdFilterWeights(library, weights)
    ccall((:FT_Library_SetLcdFilterWeights, libfreetypename), FT_Error, (FT_Library, Ptr{Cuchar}), library, weights)
end
# Julia wrapper for header: ftlist.h
# Automatically generated using Clang.jl


function FT_List_Find(list, data)
    ccall((:FT_List_Find, libfreetypename), FT_ListNode, (FT_List, Ptr{Cvoid}), list, data)
end

function FT_List_Add(list, node)
    ccall((:FT_List_Add, libfreetypename), Cvoid, (FT_List, FT_ListNode), list, node)
end

function FT_List_Insert(list, node)
    ccall((:FT_List_Insert, libfreetypename), Cvoid, (FT_List, FT_ListNode), list, node)
end

function FT_List_Remove(list, node)
    ccall((:FT_List_Remove, libfreetypename), Cvoid, (FT_List, FT_ListNode), list, node)
end

function FT_List_Up(list, node)
    ccall((:FT_List_Up, libfreetypename), Cvoid, (FT_List, FT_ListNode), list, node)
end

function FT_List_Iterate(list, iterator, user)
    ccall((:FT_List_Iterate, libfreetypename), FT_Error, (FT_List, FT_List_Iterator, Ptr{Cvoid}), list, iterator, user)
end

function FT_List_Finalize(list, destroy, memory, user)
    ccall((:FT_List_Finalize, libfreetypename), Cvoid, (FT_List, FT_List_Destructor, FT_Memory, Ptr{Cvoid}), list, destroy, memory, user)
end
# Julia wrapper for header: ftlzw.h
# Automatically generated using Clang.jl


function FT_Stream_OpenLZW(stream, source)
    ccall((:FT_Stream_OpenLZW, libfreetypename), FT_Error, (FT_Stream, FT_Stream), stream, source)
end
# Julia wrapper for header: ftmac.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftmm.h
# Automatically generated using Clang.jl


function FT_Get_Multi_Master(face, amaster)
    ccall((:FT_Get_Multi_Master, libfreetypename), FT_Error, (FT_Face, Ptr{FT_Multi_Master}), face, amaster)
end

function FT_Get_MM_Var(face, amaster)
    ccall((:FT_Get_MM_Var, libfreetypename), FT_Error, (FT_Face, Ptr{Ptr{FT_MM_Var}}), face, amaster)
end

function FT_Done_MM_Var(library, amaster)
    ccall((:FT_Done_MM_Var, libfreetypename), FT_Error, (FT_Library, Ptr{FT_MM_Var}), library, amaster)
end

function FT_Set_MM_Design_Coordinates(face, num_coords, coords)
    ccall((:FT_Set_MM_Design_Coordinates, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Long}), face, num_coords, coords)
end

function FT_Set_Var_Design_Coordinates(face, num_coords, coords)
    ccall((:FT_Set_Var_Design_Coordinates, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Fixed}), face, num_coords, coords)
end

function FT_Get_Var_Design_Coordinates(face, num_coords, coords)
    ccall((:FT_Get_Var_Design_Coordinates, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Fixed}), face, num_coords, coords)
end

function FT_Set_MM_Blend_Coordinates(face, num_coords, coords)
    ccall((:FT_Set_MM_Blend_Coordinates, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Fixed}), face, num_coords, coords)
end

function FT_Get_MM_Blend_Coordinates(face, num_coords, coords)
    ccall((:FT_Get_MM_Blend_Coordinates, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Fixed}), face, num_coords, coords)
end

function FT_Set_Var_Blend_Coordinates(face, num_coords, coords)
    ccall((:FT_Set_Var_Blend_Coordinates, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Fixed}), face, num_coords, coords)
end

function FT_Get_Var_Blend_Coordinates(face, num_coords, coords)
    ccall((:FT_Get_Var_Blend_Coordinates, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Fixed}), face, num_coords, coords)
end

function FT_Get_Var_Axis_Flags(master, axis_index, flags)
    ccall((:FT_Get_Var_Axis_Flags, libfreetypename), FT_Error, (Ptr{FT_MM_Var}, FT_UInt, Ptr{FT_UInt}), master, axis_index, flags)
end

function FT_Set_Named_Instance(face, instance_index)
    ccall((:FT_Set_Named_Instance, libfreetypename), FT_Error, (FT_Face, FT_UInt), face, instance_index)
end
# Julia wrapper for header: ftmodapi.h
# Automatically generated using Clang.jl


function FT_Add_Module(library, clazz)
    ccall((:FT_Add_Module, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Module_Class}), library, clazz)
end

function FT_Get_Module(library, module_name)
    ccall((:FT_Get_Module, libfreetypename), FT_Module, (FT_Library, Cstring), library, module_name)
end

function FT_Remove_Module(library, _module)
    ccall((:FT_Remove_Module, libfreetypename), FT_Error, (FT_Library, FT_Module), library, _module)
end

function FT_Property_Set(library, module_name, property_name, value)
    ccall((:FT_Property_Set, libfreetypename), FT_Error, (FT_Library, Ptr{FT_String}, Ptr{FT_String}, Ptr{Cvoid}), library, module_name, property_name, value)
end

function FT_Property_Get(library, module_name, property_name, value)
    ccall((:FT_Property_Get, libfreetypename), FT_Error, (FT_Library, Ptr{FT_String}, Ptr{FT_String}, Ptr{Cvoid}), library, module_name, property_name, value)
end

function FT_Set_Default_Properties(library)
    ccall((:FT_Set_Default_Properties, libfreetypename), Cvoid, (FT_Library,), library)
end

function FT_Reference_Library(library)
    ccall((:FT_Reference_Library, libfreetypename), FT_Error, (FT_Library,), library)
end

function FT_New_Library(memory, alibrary)
    ccall((:FT_New_Library, libfreetypename), FT_Error, (FT_Memory, Ptr{FT_Library}), memory, alibrary)
end

function FT_Done_Library(library)
    ccall((:FT_Done_Library, libfreetypename), FT_Error, (FT_Library,), library)
end

function FT_Set_Debug_Hook(library, hook_index, debug_hook)
    ccall((:FT_Set_Debug_Hook, libfreetypename), Cvoid, (FT_Library, FT_UInt, FT_DebugHook_Func), library, hook_index, debug_hook)
end

function FT_Add_Default_Modules(library)
    ccall((:FT_Add_Default_Modules, libfreetypename), Cvoid, (FT_Library,), library)
end

function FT_Get_TrueType_Engine_Type(library)
    ccall((:FT_Get_TrueType_Engine_Type, libfreetypename), FT_TrueTypeEngineType, (FT_Library,), library)
end
# Julia wrapper for header: ftmoderr.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftotval.h
# Automatically generated using Clang.jl


function FT_OpenType_Validate(face, validation_flags, BASE_table, GDEF_table, GPOS_table, GSUB_table, JSTF_table)
    ccall((:FT_OpenType_Validate, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Bytes}, Ptr{FT_Bytes}, Ptr{FT_Bytes}, Ptr{FT_Bytes}, Ptr{FT_Bytes}), face, validation_flags, BASE_table, GDEF_table, GPOS_table, GSUB_table, JSTF_table)
end

function FT_OpenType_Free(face, table)
    ccall((:FT_OpenType_Free, libfreetypename), Cvoid, (FT_Face, FT_Bytes), face, table)
end
# Julia wrapper for header: ftoutln.h
# Automatically generated using Clang.jl


function FT_Outline_Decompose(outline, func_interface, user)
    ccall((:FT_Outline_Decompose, libfreetypename), FT_Error, (Ptr{FT_Outline}, Ptr{FT_Outline_Funcs}, Ptr{Cvoid}), outline, func_interface, user)
end

function FT_Outline_New(library, numPoints, numContours, anoutline)
    ccall((:FT_Outline_New, libfreetypename), FT_Error, (FT_Library, FT_UInt, FT_Int, Ptr{FT_Outline}), library, numPoints, numContours, anoutline)
end

function FT_Outline_New_Internal(memory, numPoints, numContours, anoutline)
    ccall((:FT_Outline_New_Internal, libfreetypename), FT_Error, (FT_Memory, FT_UInt, FT_Int, Ptr{FT_Outline}), memory, numPoints, numContours, anoutline)
end

function FT_Outline_Done(library, outline)
    ccall((:FT_Outline_Done, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Outline}), library, outline)
end

function FT_Outline_Done_Internal(memory, outline)
    ccall((:FT_Outline_Done_Internal, libfreetypename), FT_Error, (FT_Memory, Ptr{FT_Outline}), memory, outline)
end

function FT_Outline_Check(outline)
    ccall((:FT_Outline_Check, libfreetypename), FT_Error, (Ptr{FT_Outline},), outline)
end

function FT_Outline_Get_CBox(outline, acbox)
    ccall((:FT_Outline_Get_CBox, libfreetypename), Cvoid, (Ptr{FT_Outline}, Ptr{FT_BBox}), outline, acbox)
end

function FT_Outline_Translate(outline, xOffset, yOffset)
    ccall((:FT_Outline_Translate, libfreetypename), Cvoid, (Ptr{FT_Outline}, FT_Pos, FT_Pos), outline, xOffset, yOffset)
end

function FT_Outline_Copy(source, target)
    ccall((:FT_Outline_Copy, libfreetypename), FT_Error, (Ptr{FT_Outline}, Ptr{FT_Outline}), source, target)
end

function FT_Outline_Transform(outline, matrix)
    ccall((:FT_Outline_Transform, libfreetypename), Cvoid, (Ptr{FT_Outline}, Ptr{FT_Matrix}), outline, matrix)
end

function FT_Outline_Embolden(outline, strength)
    ccall((:FT_Outline_Embolden, libfreetypename), FT_Error, (Ptr{FT_Outline}, FT_Pos), outline, strength)
end

function FT_Outline_EmboldenXY(outline, xstrength, ystrength)
    ccall((:FT_Outline_EmboldenXY, libfreetypename), FT_Error, (Ptr{FT_Outline}, FT_Pos, FT_Pos), outline, xstrength, ystrength)
end

function FT_Outline_Reverse(outline)
    ccall((:FT_Outline_Reverse, libfreetypename), Cvoid, (Ptr{FT_Outline},), outline)
end

function FT_Outline_Get_Bitmap(library, outline, abitmap)
    ccall((:FT_Outline_Get_Bitmap, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Outline}, Ptr{FT_Bitmap}), library, outline, abitmap)
end

function FT_Outline_Render(library, outline, params)
    ccall((:FT_Outline_Render, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Outline}, Ptr{FT_Raster_Params}), library, outline, params)
end

function FT_Outline_Get_Orientation(outline)
    ccall((:FT_Outline_Get_Orientation, libfreetypename), FT_Orientation, (Ptr{FT_Outline},), outline)
end
# Julia wrapper for header: ftparams.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftpfr.h
# Automatically generated using Clang.jl


function FT_Get_PFR_Metrics(face, aoutline_resolution, ametrics_resolution, ametrics_x_scale, ametrics_y_scale)
    ccall((:FT_Get_PFR_Metrics, libfreetypename), FT_Error, (FT_Face, Ptr{FT_UInt}, Ptr{FT_UInt}, Ptr{FT_Fixed}, Ptr{FT_Fixed}), face, aoutline_resolution, ametrics_resolution, ametrics_x_scale, ametrics_y_scale)
end

function FT_Get_PFR_Kerning(face, left, right, avector)
    ccall((:FT_Get_PFR_Kerning, libfreetypename), FT_Error, (FT_Face, FT_UInt, FT_UInt, Ptr{FT_Vector}), face, left, right, avector)
end

function FT_Get_PFR_Advance(face, gindex, aadvance)
    ccall((:FT_Get_PFR_Advance, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_Pos}), face, gindex, aadvance)
end
# Julia wrapper for header: ftrender.h
# Automatically generated using Clang.jl


function FT_Get_Renderer(library, format)
    ccall((:FT_Get_Renderer, libfreetypename), FT_Renderer, (FT_Library, FT_Glyph_Format), library, format)
end

function FT_Set_Renderer(library, renderer, num_params, parameters)
    ccall((:FT_Set_Renderer, libfreetypename), FT_Error, (FT_Library, FT_Renderer, FT_UInt, Ptr{FT_Parameter}), library, renderer, num_params, parameters)
end
# Julia wrapper for header: ftsizes.h
# Automatically generated using Clang.jl


function FT_New_Size(face, size)
    ccall((:FT_New_Size, libfreetypename), FT_Error, (FT_Face, Ptr{FT_Size}), face, size)
end

function FT_Done_Size(size)
    ccall((:FT_Done_Size, libfreetypename), FT_Error, (FT_Size,), size)
end

function FT_Activate_Size(size)
    ccall((:FT_Activate_Size, libfreetypename), FT_Error, (FT_Size,), size)
end
# Julia wrapper for header: ftsnames.h
# Automatically generated using Clang.jl


function FT_Get_Sfnt_Name_Count(face)
    ccall((:FT_Get_Sfnt_Name_Count, libfreetypename), FT_UInt, (FT_Face,), face)
end

function FT_Get_Sfnt_Name(face, idx, aname)
    ccall((:FT_Get_Sfnt_Name, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_SfntName}), face, idx, aname)
end

function FT_Get_Sfnt_LangTag(face, langID, alangTag)
    ccall((:FT_Get_Sfnt_LangTag, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_SfntLangTag}), face, langID, alangTag)
end
# Julia wrapper for header: ftstroke.h
# Automatically generated using Clang.jl


function FT_Outline_GetInsideBorder(outline)
    ccall((:FT_Outline_GetInsideBorder, libfreetypename), FT_StrokerBorder, (Ptr{FT_Outline},), outline)
end

function FT_Outline_GetOutsideBorder(outline)
    ccall((:FT_Outline_GetOutsideBorder, libfreetypename), FT_StrokerBorder, (Ptr{FT_Outline},), outline)
end

function FT_Stroker_New(library, astroker)
    ccall((:FT_Stroker_New, libfreetypename), FT_Error, (FT_Library, Ptr{FT_Stroker}), library, astroker)
end

function FT_Stroker_Set(stroker, radius, line_cap, line_join, miter_limit)
    ccall((:FT_Stroker_Set, libfreetypename), Cvoid, (FT_Stroker, FT_Fixed, FT_Stroker_LineCap, FT_Stroker_LineJoin, FT_Fixed), stroker, radius, line_cap, line_join, miter_limit)
end

function FT_Stroker_Rewind(stroker)
    ccall((:FT_Stroker_Rewind, libfreetypename), Cvoid, (FT_Stroker,), stroker)
end

function FT_Stroker_ParseOutline(stroker, outline, opened)
    ccall((:FT_Stroker_ParseOutline, libfreetypename), FT_Error, (FT_Stroker, Ptr{FT_Outline}, FT_Bool), stroker, outline, opened)
end

function FT_Stroker_BeginSubPath(stroker, to, open)
    ccall((:FT_Stroker_BeginSubPath, libfreetypename), FT_Error, (FT_Stroker, Ptr{FT_Vector}, FT_Bool), stroker, to, open)
end

function FT_Stroker_EndSubPath(stroker)
    ccall((:FT_Stroker_EndSubPath, libfreetypename), FT_Error, (FT_Stroker,), stroker)
end

function FT_Stroker_LineTo(stroker, to)
    ccall((:FT_Stroker_LineTo, libfreetypename), FT_Error, (FT_Stroker, Ptr{FT_Vector}), stroker, to)
end

function FT_Stroker_ConicTo(stroker, control, to)
    ccall((:FT_Stroker_ConicTo, libfreetypename), FT_Error, (FT_Stroker, Ptr{FT_Vector}, Ptr{FT_Vector}), stroker, control, to)
end

function FT_Stroker_CubicTo(stroker, control1, control2, to)
    ccall((:FT_Stroker_CubicTo, libfreetypename), FT_Error, (FT_Stroker, Ptr{FT_Vector}, Ptr{FT_Vector}, Ptr{FT_Vector}), stroker, control1, control2, to)
end

function FT_Stroker_GetBorderCounts(stroker, border, anum_points, anum_contours)
    ccall((:FT_Stroker_GetBorderCounts, libfreetypename), FT_Error, (FT_Stroker, FT_StrokerBorder, Ptr{FT_UInt}, Ptr{FT_UInt}), stroker, border, anum_points, anum_contours)
end

function FT_Stroker_ExportBorder(stroker, border, outline)
    ccall((:FT_Stroker_ExportBorder, libfreetypename), Cvoid, (FT_Stroker, FT_StrokerBorder, Ptr{FT_Outline}), stroker, border, outline)
end

function FT_Stroker_GetCounts(stroker, anum_points, anum_contours)
    ccall((:FT_Stroker_GetCounts, libfreetypename), FT_Error, (FT_Stroker, Ptr{FT_UInt}, Ptr{FT_UInt}), stroker, anum_points, anum_contours)
end

function FT_Stroker_Export(stroker, outline)
    ccall((:FT_Stroker_Export, libfreetypename), Cvoid, (FT_Stroker, Ptr{FT_Outline}), stroker, outline)
end

function FT_Stroker_Done(stroker)
    ccall((:FT_Stroker_Done, libfreetypename), Cvoid, (FT_Stroker,), stroker)
end

function FT_Glyph_Stroke(pglyph, stroker, destroy)
    ccall((:FT_Glyph_Stroke, libfreetypename), FT_Error, (Ptr{FT_Glyph}, FT_Stroker, FT_Bool), pglyph, stroker, destroy)
end

function FT_Glyph_StrokeBorder(pglyph, stroker, inside, destroy)
    ccall((:FT_Glyph_StrokeBorder, libfreetypename), FT_Error, (Ptr{FT_Glyph}, FT_Stroker, FT_Bool, FT_Bool), pglyph, stroker, inside, destroy)
end
# Julia wrapper for header: ftsynth.h
# Automatically generated using Clang.jl


function FT_GlyphSlot_Embolden(slot)
    ccall((:FT_GlyphSlot_Embolden, libfreetypename), Cvoid, (FT_GlyphSlot,), slot)
end

function FT_GlyphSlot_Oblique(slot)
    ccall((:FT_GlyphSlot_Oblique, libfreetypename), Cvoid, (FT_GlyphSlot,), slot)
end
# Julia wrapper for header: ftsystem.h
# Automatically generated using Clang.jl

# Julia wrapper for header: fttrigon.h
# Automatically generated using Clang.jl

# Julia wrapper for header: fttypes.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftwinfnt.h
# Automatically generated using Clang.jl


function FT_Get_WinFNT_Header(face, aheader)
    ccall((:FT_Get_WinFNT_Header, libfreetypename), FT_Error, (FT_Face, Ptr{FT_WinFNT_HeaderRec}), face, aheader)
end
# Julia wrapper for header: t1tables.h
# Automatically generated using Clang.jl


function FT_Has_PS_Glyph_Names(face)
    ccall((:FT_Has_PS_Glyph_Names, libfreetypename), FT_Int, (FT_Face,), face)
end

function FT_Get_PS_Font_Info(face, afont_info)
    ccall((:FT_Get_PS_Font_Info, libfreetypename), FT_Error, (FT_Face, PS_FontInfo), face, afont_info)
end

function FT_Get_PS_Font_Private(face, afont_private)
    ccall((:FT_Get_PS_Font_Private, libfreetypename), FT_Error, (FT_Face, PS_Private), face, afont_private)
end

function FT_Get_PS_Font_Value(face, key, idx, value, value_len)
    ccall((:FT_Get_PS_Font_Value, libfreetypename), FT_Long, (FT_Face, PS_Dict_Keys, FT_UInt, Ptr{Cvoid}, FT_Long), face, key, idx, value, value_len)
end
# Julia wrapper for header: ttnameid.h
# Automatically generated using Clang.jl

# Julia wrapper for header: tttables.h
# Automatically generated using Clang.jl


function FT_Get_Sfnt_Table(face, tag)
    ccall((:FT_Get_Sfnt_Table, libfreetypename), Ptr{Cvoid}, (FT_Face, FT_Sfnt_Tag), face, tag)
end

function FT_Load_Sfnt_Table(face, tag, offset, buffer, length)
    ccall((:FT_Load_Sfnt_Table, libfreetypename), FT_Error, (FT_Face, FT_ULong, FT_Long, Ptr{FT_Byte}, Ptr{FT_ULong}), face, tag, offset, buffer, length)
end

function FT_Sfnt_Table_Info(face, table_index, tag, length)
    ccall((:FT_Sfnt_Table_Info, libfreetypename), FT_Error, (FT_Face, FT_UInt, Ptr{FT_ULong}, Ptr{FT_ULong}), face, table_index, tag, length)
end

function FT_Get_CMap_Language_ID(charmap)
    ccall((:FT_Get_CMap_Language_ID, libfreetypename), FT_ULong, (FT_CharMap,), charmap)
end

function FT_Get_CMap_Format(charmap)
    ccall((:FT_Get_CMap_Format, libfreetypename), FT_Long, (FT_CharMap,), charmap)
end
# Julia wrapper for header: tttags.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftconfig.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftheader.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftmodule.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftoption.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ftstdlib.h
# Automatically generated using Clang.jl

