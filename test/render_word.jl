"""
Minimal example: Render a word using FreeType.jl
"""

using FreeType
using Images

# Initialize FreeType library
ft_library = Ref{FT_Library}()

@testset "Render Word" begin
    # Load and render a single character
    function render_char(face::FT_Face, char::Char)
        # Get the glyph index for this character
        glyph_index = FT_Get_Char_Index(face, UInt(char))

        if glyph_index == 0
            @warn "Character '$char' not found in font"
            return nothing, nothing
        end

        # Load the glyph with rendering
        err = FT_Load_Glyph(face, glyph_index, FT_LOAD_RENDER)
        if err != 0
            error("Failed to load glyph for '$char': error code $err")
        end

        # Get the glyph slot (contains bitmap and metrics)
        face_rec = unsafe_load(face)
        glyph_slot = unsafe_load(face_rec.glyph)
        bitmap = glyph_slot.bitmap
        metrics = glyph_slot.metrics

        # Copy bitmap data to Julia array
        if bitmap.width == 0 || bitmap.rows == 0
            return zeros(UInt8, 0, 0), metrics
        end

        bmp = Matrix{UInt8}(undef, bitmap.rows, bitmap.width)
        row_ptr = bitmap.buffer

        for r in 1:bitmap.rows
            src = unsafe_wrap(Array, row_ptr, bitmap.width)
            bmp[r, :] = src
            row_ptr += bitmap.pitch
        end

        return bmp, metrics
    end

    # Render a word into a matrix
    function render_word(face::FT_Face, word::String, pixel_size::Int=64)

        err = FT_Set_Pixel_Sizes(face, pixel_size, pixel_size)
        if err != 0
            error("Failed to set pixel size: error code $err")
        end

        # First pass: calculate dimensions
        bitmaps = []
        metrics_list = []
        total_width = 0
        max_bearing_y = 0
        min_bearing_y = 0

        for char in word
            bitmap, metrics = render_char(face, char)
            if bitmap === nothing
                continue
            end

            push!(bitmaps, bitmap)
            push!(metrics_list, metrics)

            # Advance width (in 1/64th pixels)
            advance_x = metrics.horiAdvance ÷ 64
            total_width += advance_x

            # Calculate vertical bounds
            bearing_y = metrics.horiBearingY ÷ 64
            height = metrics.height ÷ 64

            max_bearing_y = max(max_bearing_y, bearing_y)
            min_bearing_y = min(min_bearing_y, bearing_y - height)
        end

        # Calculate canvas height
        canvas_height = max_bearing_y - min_bearing_y
        if canvas_height == 0
            canvas_height = pixel_size
        end

        # Create output canvas (height × width)
        canvas = zeros(UInt8, canvas_height, total_width)

        # Second pass: place glyphs on canvas
        pen_x = 0

        for (i, char) in enumerate(word)
            if i > length(bitmaps)
                break
            end

            bitmap = bitmaps[i]
            metrics = metrics_list[i]

            if isempty(bitmap)
                # Space or empty glyph
                pen_x += metrics.horiAdvance ÷ 64
                continue
            end

            # Calculate position
            bearing_x = metrics.horiBearingX ÷ 64
            bearing_y = metrics.horiBearingY ÷ 64

            # Position on canvas (origin at top-left)
            x_offset = pen_x + bearing_x
            y_offset = max_bearing_y - bearing_y

            # Copy bitmap to canvas
            bmp_height, bmp_width = size(bitmap)
            for r in 1:bmp_height
                for c in 1:bmp_width
                    y = y_offset + r
                    x = x_offset + c

                    # Check bounds
                    if 1 <= y <= canvas_height && 1 <= x <= total_width
                        canvas[y, x] = max(canvas[y, x], bitmap[r, c])
                    end
                end
            end

            # Advance pen position
            pen_x += metrics.horiAdvance ÷ 64
        end

        return canvas
    end

    err = FT_Init_FreeType(ft_library)

    font_path = joinpath(@__DIR__, "hack_regular.ttf")

    face_ref = Ref{FT_Face}()
    err = FT_New_Face(ft_library[], font_path, 0, face_ref)
    if err != 0
        error("Failed to load font '$font_path': error code $err")
    end
    face = face_ref[]

    # Render a word
    word = "FreeType"
    pixel_size = 64

    bitmap = render_word(face, word, pixel_size)

    path = "output/rendered_word.png"
    # Convert bitmap to grayscale image
    img = Gray.(bitmap ./ 255)
    Images.save(path, img)

    # Clean up
    FT_Done_Face(face)
    FT_Done_FreeType(ft_library[])

end

