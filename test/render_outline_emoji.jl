using FreeType
using Images
using Test

# Initialize FreeType library
ft_library = Ref{FT_Library}()

@testset "Render Outline Emoji" begin

    function find_font(font_name::String)
        # Common font directories on different platforms
        font_dirs = String[]

        if Sys.islinux()
            append!(font_dirs, [
                "/usr/share/fonts",
                "/usr/local/share/fonts",
                "$(homedir())/.fonts",
                "$(homedir())/.local/share/fonts"
            ])
        elseif Sys.isapple()
            append!(font_dirs, [
                "/Library/Fonts",
                "/System/Library/Fonts",
                "$(homedir())/Library/Fonts"
            ])
        elseif Sys.iswindows()
            append!(font_dirs, [
                "C:\\Windows\\Fonts"
            ])
        end

        # Search for font file
        search_parts = split(lowercase(font_name), r"\W+", keepempty=false)

        best_match = nothing
        best_score = (0, 0)

        for dir in font_dirs
            if !isdir(dir)
                continue
            end

            # Recursively search in font directory
            for (root, dirs, files) in walkdir(dir)
                for file in files
                    # Only check font files
                    if !endswith(lowercase(file), r"\.(ttf|otf|ttc)$")
                        continue
                    end

                    file_lower = lowercase(file)

                    # Score based on matching search parts
                    family_score = sum(length(part) for part in search_parts if occursin(part, file_lower); init=0)

                    if family_score > 0
                        score = (family_score, -length(file))  # Prefer shorter names
                        if score > best_score
                            best_score = score
                            best_match = joinpath(root, file)
                        end
                    end
                end
            end
        end

        if best_match !== nothing
            println("Found font: $best_match")
        else
            @warn "Could not find font matching '$font_name'"
        end

        return best_match
    end

    # Initialize FreeType
    err = FT_Init_FreeType(ft_library)
    if err != 0
        error("Failed to initialize FreeType library: error code $err")
    end

    # Try to find Noto Emoji font
    font_name = "Symbola"
    font_path = find_font(font_name)
    if font_path === nothing
        @error "Could not find $font_name font. Please install it or specify another emoji font."
        return
    end

    face_ref = Ref{FT_Face}()
    FT_New_Face(ft_library[], font_path, 0, face_ref)
    face = face_ref[]

    # Test with various emoji
    test_emoji = ['😀', '🎨', '🚀', '❤', 'Ω']

    for (i, emoji) in enumerate(test_emoji)

        err = FT_Set_Pixel_Sizes(face, Cuint(64), Cuint(64))
        #size = FT_Select_Size(face, 0)  # Select first size

        # Get the glyph index for this character
        glyph_index = FT_Get_Char_Index(face, UInt(emoji))


        load_flags = FT_LOAD_RENDER
        err = FT_Load_Glyph(face, glyph_index, load_flags)
        if err != 0
            error("Failed to load glyph for '$emoji': error code $err")
        end

        # Get the glyph slot (contains bitmap and metrics)
        face_rec = unsafe_load(face)
        glyph_slot = unsafe_load(face_rec.glyph)
        bitmap = glyph_slot.bitmap
        metrics = glyph_slot.metrics

        img = nothing

        if bitmap.pixel_mode == FT_PIXEL_MODE_GRAY
            # Grayscale bitmap (8-bit per pixel)
            width = Int(bitmap.width)
            height = Int(bitmap.rows)
            pitch = Int(bitmap.pitch)

            # Create grayscale image
            img = Matrix{UInt8}(undef, height, width)

            row_ptr = bitmap.buffer
            for r in 1:height
                row_data = unsafe_wrap(Array, row_ptr, width)
                for c in 1:width
                    img[r, c] = row_data[c]
                end
                row_ptr += pitch
            end

            # Convert to Images format
            img = Images.Gray.(img ./ 255)
        else
            @warn "Unsupported pixel mode: $(bitmap.pixel_mode)"
            continue
        end

        if img !== nothing
            output_file = "output/emoji_$(i)_U+$(string(UInt32(emoji), base=16, pad=4)).png"
            Images.save(output_file, img)
        end
    end

    FT_Done_FreeType(ft_library[])
end