using Test

@testset "Render COLRv1 Emoji" begin
    using Downloads
    using FreeType
    using Cairo

    function get_transform(paint::FT_COLR_Paint)
        # Get pointer to the beginning of the paint struct, then offset to the union field
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintTransform_}(base_ptr + 8)  # Skip 4-byte format enum + 4-byte padding
        unsafe_load(union_ptr)
    end

    function get_translate(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintTranslate_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_scale(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintScale_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_rotate(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintRotate_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_skew(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintSkew_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_solid(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintSolid_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_linear_gradient(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintLinearGradient_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_radial_gradient(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintRadialGradient_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_sweep_gradient(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintSweepGradient_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_glyph(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintGlyph_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_colr_glyph(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintColrGlyph_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_colr_layers(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintColrLayers_}(base_ptr + 8)
        unsafe_load(union_ptr)
    end

    function get_composite(paint::FT_COLR_Paint)
        base_ptr = pointer_from_objref(Ref(paint))
        union_ptr = Ptr{FT_PaintComposite_}(base_ptr + 8)
        unsafe_load(union_ptr)s
    end

    """
    Render context for COLRv1 emoji rendering.
    """
    mutable struct RenderContext
        cr::CairoContext
        face::FT_Face
        palette::Vector{Tuple{Float64,Float64,Float64,Float64}}  # RGBA colors
    end

    """
    Load the color palette from the font's CPAL table.
    """
    function get_color_palette(face::FT_Face, palette_index::Int=0)
        # Try to get palette from CPAL table
        palette_ptr = Ref{Ptr{FT_Color}}(C_NULL)
        err = FT_Palette_Select(face, UInt16(palette_index), palette_ptr)

        if err == 0 && palette_ptr[] != C_NULL
            # Get palette data to know how many entries
            palette_data = Ref{FT_Palette_Data}()
            err2 = FT_Palette_Data_Get(face, palette_data)

            if err2 == 0
                num_entries = palette_data[].num_palette_entries
                println("  Loaded CPAL palette $palette_index with $num_entries entries")

                # Convert FT_Color array to Julia tuples (RGBA as floats)
                colors = Tuple{Float64,Float64,Float64,Float64}[]
                palette_array = unsafe_wrap(Array, palette_ptr[], num_entries)

                for color in palette_array
                    r = color.red / 255.0
                    g = color.green / 255.0
                    b = color.blue / 255.0
                    a = color.alpha / 255.0
                    push!(colors, (r, g, b, a))
                end

                return colors
            end
        end
    end

    """
    Convert FreeType outline to Cairo path.
    """
    function outline_to_cairo_path(cr::CairoContext, outline::FT_Outline)
        n_contours = outline.n_contours
        if n_contours == 0
            return
        end

        points = unsafe_wrap(Array, outline.points, outline.n_points)
        tags = unsafe_wrap(Array, outline.tags, outline.n_points)
        contours = unsafe_wrap(Array, outline.contours, n_contours)

        point_idx = 1
        for contour_idx in 1:n_contours
            contour_end = contours[contour_idx] + 1  # Convert to 1-indexed

            # Start new sub-path
            if point_idx <= length(points)
                start_point = points[point_idx]
                move_to(cr, start_point.x, start_point.y)
                first_idx = point_idx
                point_idx += 1

                while point_idx <= contour_end && point_idx <= length(points)
                    pt = points[point_idx]
                    tag = tags[point_idx]

                    if (tag & 0x01) != 0  # On-curve point
                        line_to(cr, pt.x, pt.y)
                        point_idx += 1
                    else  # Off-curve (control point)
                        if point_idx + 1 <= contour_end && point_idx + 1 <= length(points)
                            next_pt = points[point_idx+1]
                            prev_pt = point_idx > first_idx ? points[point_idx-1] : start_point

                            # Convert quadratic to cubic Bezier
                            c1_x = prev_pt.x + 2.0 / 3.0 * (pt.x - prev_pt.x)
                            c1_y = prev_pt.y + 2.0 / 3.0 * (pt.y - prev_pt.y)
                            c2_x = next_pt.x + 2.0 / 3.0 * (pt.x - next_pt.x)
                            c2_y = next_pt.y + 2.0 / 3.0 * (pt.y - next_pt.y)

                            curve_to(cr, c1_x, c1_y, c2_x, c2_y, next_pt.x, next_pt.y)
                            point_idx += 2
                        else
                            point_idx += 1
                        end
                    end
                end

                close_path(cr)
            end
        end
    end

    """
    Render functions for different paint types.
    """
    function render_solid(ctx::RenderContext, solid::FT_PaintSolid_)
        palette_idx = solid.color.palette_index + 1  # Julia is 1-indexed
        alpha = solid.color.alpha / 16384.0  # F2Dot14 format

        if palette_idx <= length(ctx.palette)
            r, g, b, a = ctx.palette[palette_idx]
            set_source_rgba(ctx.cr, r, g, b, a * alpha)
        else
            set_source_rgba(ctx.cr, 0.0, 0.0, 0.0, alpha)
        end

        Cairo.fill(ctx.cr)
    end

    function render_glyph(ctx::RenderContext, glyph_paint::FT_PaintGlyph_, depth::Int)
        # Load the glyph outline
        err = FT_Load_Glyph(ctx.face, glyph_paint.glyphID, FT_LOAD_NO_SCALE | FT_LOAD_NO_BITMAP)
        if err != 0
            return
        end

        # Get the glyph slot
        glyph = unsafe_load(ctx.face).glyph
        outline = unsafe_load(glyph).outline

        # Convert outline to Cairo path
        outline_to_cairo_path(ctx.cr, outline)

        # Render the fill paint
        render_paint_tree(ctx, glyph_paint.paint, depth + 1)
    end

    function render_radial_gradient(ctx::RenderContext, gradient::FT_PaintRadialGradient_)
        c0_x = gradient.c0.x / 65536.0
        c0_y = gradient.c0.y / 65536.0
        r0 = gradient.r0 / 65536.0
        c1_x = gradient.c1.x / 65536.0
        c1_y = gradient.c1.y / 65536.0
        r1 = gradient.r1 / 65536.0

        pattern = pattern_create_radial(c0_x, c0_y, r0, c1_x, c1_y, r1)

        # Add color stops
        iter = Ref(gradient.colorline.color_stop_iterator)
        color_stop = Ref{FT_ColorStop}()

        while FT_Get_Colorline_Stops(ctx.face, color_stop, iter) != 0
            stop = color_stop[]
            offset = stop.stop_offset / 65536.0
            # FT_ColorStop has FT_Color (BGRA bytes)
            r = stop.color.red / 255.0
            g = stop.color.green / 255.0
            b = stop.color.blue / 255.0
            a = stop.color.alpha / 255.0
            Cairo.pattern_add_color_stop_rgba(pattern, offset, r, g, b, a)
        end

        set_source(ctx.cr, pattern)
        Cairo.fill(ctx.cr)
        destroy(pattern)
    end

    function render_linear_gradient(ctx::RenderContext, gradient::FT_PaintLinearGradient_)
        p0_x = gradient.p0.x / 65536.0
        p0_y = gradient.p0.y / 65536.0
        p1_x = gradient.p1.x / 65536.0
        p1_y = gradient.p1.y / 65536.0

        pattern = pattern_create_linear(p0_x, p0_y, p1_x, p1_y)

        iter = Ref(gradient.colorline.color_stop_iterator)
        color_stop = Ref{FT_ColorStop}()

        while FT_Get_Colorline_Stops(ctx.face, color_stop, iter) != 0
            stop = color_stop[]
            offset = stop.stop_offset / 65536.0
            # FT_ColorStop has FT_Color (BGRA bytes)
            r = stop.color.red / 255.0
            g = stop.color.green / 255.0
            b = stop.color.blue / 255.0
            a = stop.color.alpha / 255.0
            Cairo.pattern_add_color_stop_rgba(pattern, offset, r, g, b, a)
        end

        set_source(ctx.cr, pattern)
        Cairo.fill(ctx.cr)
        destroy(pattern)
    end

    """
    Render the paint tree (with actual graphics output).
    """
    function render_paint_tree(ctx::RenderContext, opaque_paint::FT_OpaquePaint, depth::Int=0)
        if depth > 20
            return
        end

        paint_ref = Ref{FT_COLR_Paint}()
        result = FT_Get_Paint(ctx.face, opaque_paint, paint_ref)

        if result == 0
            return
        end

        paint = paint_ref[]
        fmt = paint.format

        Cairo.save(ctx.cr)

        try
            if fmt == FT_COLR_PAINTFORMAT_TRANSFORM
                transform = get_transform(paint)
                # Apply affine transform
                xx = transform.affine.xx / 65536.0
                xy = transform.affine.xy / 65536.0
                dx = transform.affine.dx / 65536.0
                yx = transform.affine.yx / 65536.0
                yy = transform.affine.yy / 65536.0
                dy = transform.affine.dy / 65536.0
                # Apply matrix transformation
                current = get_matrix(ctx.cr)
                new_matrix = CairoMatrix(
                    xx * current.xx + yx * current.xy,
                    xx * current.yx + yx * current.yy,
                    xy * current.xx + yy * current.xy,
                    xy * current.yx + yy * current.yy,
                    dx * current.xx + dy * current.xy + current.x0,
                    dx * current.yx + dy * current.yy + current.y0
                )
                set_matrix(ctx.cr, new_matrix)
                render_paint_tree(ctx, transform.paint, depth + 1)

            elseif fmt == FT_COLR_PAINTFORMAT_TRANSLATE
                translate = get_translate(paint)
                Cairo.translate(ctx.cr, translate.dx / 65536.0, translate.dy / 65536.0)
                render_paint_tree(ctx, translate.paint, depth + 1)

            elseif fmt == FT_COLR_PAINTFORMAT_SCALE
                scale_paint = get_scale(paint)
                sx = scale_paint.scale_x / 65536.0
                sy = scale_paint.scale_y / 65536.0
                cx = scale_paint.center_x / 65536.0
                cy = scale_paint.center_y / 65536.0
                Cairo.translate(ctx.cr, cx, cy)
                Cairo.scale(ctx.cr, sx, sy)
                Cairo.translate(ctx.cr, -cx, -cy)
                render_paint_tree(ctx, scale_paint.paint, depth + 1)

            elseif fmt == FT_COLR_PAINTFORMAT_ROTATE
                rotate = get_rotate(paint)
                angle = rotate.angle / 65536.0 * π
                cx = rotate.center_x / 65536.0
                cy = rotate.center_y / 65536.0
                Cairo.translate(ctx.cr, cx, cy)
                Cairo.rotate(ctx.cr, angle)
                Cairo.translate(ctx.cr, -cx, -cy)
                render_paint_tree(ctx, rotate.paint, depth + 1)

            elseif fmt == FT_COLR_PAINTFORMAT_SOLID
                solid = get_solid(paint)
                render_solid(ctx, solid)

            elseif fmt == FT_COLR_PAINTFORMAT_GLYPH
                glyph = get_glyph(paint)
                render_glyph(ctx, glyph, depth)

            elseif fmt == FT_COLR_PAINTFORMAT_LINEAR_GRADIENT
                gradient = get_linear_gradient(paint)
                render_linear_gradient(ctx, gradient)

            elseif fmt == FT_COLR_PAINTFORMAT_RADIAL_GRADIENT
                gradient = get_radial_gradient(paint)
                render_radial_gradient(ctx, gradient)

            elseif fmt == FT_COLR_PAINTFORMAT_COLR_LAYERS
                layers = get_colr_layers(paint)
                layer_paint = Ref{FT_OpaquePaint}()
                iter = Ref(layers.layer_iterator)

                for i in 1:layers.layer_iterator.num_layers
                    if FT_Get_Paint_Layers(ctx.face, iter, layer_paint) != 0
                        render_paint_tree(ctx, layer_paint[], depth + 1)
                    end
                end

            elseif fmt == FT_COLR_PAINTFORMAT_COLR_GLYPH
                colr_glyph = get_colr_glyph(paint)
                sub_opaque = Ref{FT_OpaquePaint}(FT_OpaquePaint_(C_NULL, 0))
                if FT_Get_Color_Glyph_Paint(ctx.face, colr_glyph.glyphID,
                    FT_COLOR_NO_ROOT_TRANSFORM, sub_opaque) != 0
                    render_paint_tree(ctx, sub_opaque[], depth + 1)
                end

            elseif fmt == FT_COLR_PAINTFORMAT_COMPOSITE
                composite = get_composite(paint)
                # Simple compositing - render backdrop then source
                render_paint_tree(ctx, composite.backdrop_paint, depth + 1)
                render_paint_tree(ctx, composite.source_paint, depth + 1)
            end
        finally
            Cairo.restore(ctx.cr)
        end
    end

    """
    Recursively traverse and print the paint tree structure with full union extraction!
    """
    function walk_paint_tree(face::FT_Face, opaque_paint::FT_OpaquePaint, depth::Int=0)
        # Safety: prevent infinite recursion
        if depth > 128
            @warn "Reached maximum paint tree depth, stopping recursion to prevent infinite loop"
            return
        end

        # Get the paint data
        paint_ref = Ref{FT_COLR_Paint}()
        result = FT_Get_Paint(face, opaque_paint, paint_ref)

        if result == 0
            error("Failed to get paint data at depth $depth")
            return
        end

        paint = paint_ref[]
        fmt = paint.format

        # Extract union data and recurse into children
        if fmt == FT_COLR_PAINTFORMAT_TRANSFORM
            transform = get_transform(paint)

            # Convert fixed-point to float for display
            xx = transform.affine.xx / 65536.0
            xy = transform.affine.xy / 65536.0
            dx = transform.affine.dx / 65536.0
            yx = transform.affine.yx / 65536.0
            yy = transform.affine.yy / 65536.0
            dy = transform.affine.dy / 65536.0


            walk_paint_tree(face, transform.paint, depth + 2)

        elseif fmt == FT_COLR_PAINTFORMAT_TRANSLATE
            translate = get_translate(paint)
            dx = translate.dx / 65536.0
            dy = translate.dy / 65536.0

            walk_paint_tree(face, translate.paint, depth + 2)

        elseif fmt == FT_COLR_PAINTFORMAT_SCALE
            scale = get_scale(paint)
            sx = scale.scale_x / 65536.0
            sy = scale.scale_y / 65536.0
            cx = scale.center_x / 65536.0
            cy = scale.center_y / 65536.0

            walk_paint_tree(face, scale.paint, depth + 2)

        elseif fmt == FT_COLR_PAINTFORMAT_ROTATE
            rotate = get_rotate(paint)
            angle = rotate.angle / 65536.0 * 180.0  # Convert to degrees
            cx = rotate.center_x / 65536.0
            cy = rotate.center_y / 65536.0

            walk_paint_tree(face, rotate.paint, depth + 2)

        elseif fmt == FT_COLR_PAINTFORMAT_SKEW
            skew = get_skew(paint)
            x_angle = skew.x_skew_angle / 65536.0 * 180.0
            y_angle = skew.y_skew_angle / 65536.0 * 180.0
            cx = skew.center_x / 65536.0
            cy = skew.center_y / 65536.0

            walk_paint_tree(face, skew.paint, depth + 2)

        elseif fmt == FT_COLR_PAINTFORMAT_SOLID
            solid = get_solid(paint)

        elseif fmt == FT_COLR_PAINTFORMAT_GLYPH
            glyph = get_glyph(paint)
            walk_paint_tree(face, glyph.paint, depth + 2)

        elseif fmt == FT_COLR_PAINTFORMAT_COLR_GLYPH
            colr_glyph = get_colr_glyph(paint)

        elseif fmt == FT_COLR_PAINTFORMAT_LINEAR_GRADIENT
            gradient = get_linear_gradient(paint)

        elseif fmt == FT_COLR_PAINTFORMAT_RADIAL_GRADIENT
            gradient = get_radial_gradient(paint)

        elseif fmt == FT_COLR_PAINTFORMAT_SWEEP_GRADIENT
            gradient = get_sweep_gradient(paint)
            start_angle = gradient.start_angle / 65536.0 * 180.0
            end_angle = gradient.end_angle / 65536.0 * 180.0


        elseif fmt == FT_COLR_PAINTFORMAT_COLR_LAYERS
            layers = get_colr_layers(paint)
            # Iterate through layers
            layer_paint = Ref{FT_OpaquePaint}()
            iter = Ref(layers.layer_iterator)
            for i in 1:layers.layer_iterator.num_layers
                if FT_Get_Paint_Layers(face, iter, layer_paint) != 0
                    walk_paint_tree(face, layer_paint[], depth + 2)
                end
            end

        elseif fmt == FT_COLR_PAINTFORMAT_COMPOSITE
            composite = get_composite(paint)
            walk_paint_tree(face, composite.source_paint, depth + 2)
            walk_paint_tree(face, composite.backdrop_paint, depth + 2)
        end
    end

    # Main rendering function
    function render_color_emoji(emoji::Char, output_path::String; size::Int=512, debug::Bool=true)
        # Initialize FreeType
        ft_library = Ref{FT_Library}()
        err = FT_Init_FreeType(ft_library)
        if err != 0
            error("Failed to initialize FreeType: $err")
        end

        font_path = joinpath(@__DIR__, "output/Noto-COLRv1.ttf")
        if !isfile(font_path)
            @warn "Font not found: $font_path. Downloading Noto-COLRv1.ttf..."
            Downloads.download("https://github.com/googlefonts/noto-emoji/raw/refs/heads/main/fonts/Noto-COLRv1.ttf", "output/Noto-COLRv1.ttf")
        end

        face_ref = Ref{FT_Face}()
        err = FT_New_Face(ft_library[], font_path, 0, face_ref)
        if err != 0
            error("Failed to load font: $err")
        end
        face = face_ref[]

        # Set size
        err = FT_Set_Pixel_Sizes(face, size, size)
        if err != 0
            error("Failed to set pixel size: $err")
        end

        # Get glyph index
        glyph_index = FT_Get_Char_Index(face, UInt(emoji))
        if glyph_index == 0
            error("Glyph not found for character: $emoji")
        end

        # Load glyph to get metrics
        scale_factor = 1.0
        horiAdvance_px = 0.0
        baseline_offset = 0.0

        err = FT_Load_Glyph(face, glyph_index, FT_LOAD_DEFAULT)
        if err == 0
            glyph_slot = unsafe_load(unsafe_load(face).glyph)
            metrics = glyph_slot.metrics

            # Convert from 1/64th pixel units to pixels
            horiAdvance_px = metrics.horiAdvance / 64.0

            # Calculate scale factor based on horizontal advance
            if horiAdvance_px > 0
                scale_factor = size / horiAdvance_px
            end

            # Hacky centering of emoji. Simple 20% offset
            canvas_height_font_units = size / scale_factor
            baseline_offset = canvas_height_font_units * 0.20
        end

        opaque_paint = Ref{FT_OpaquePaint}(FT_OpaquePaint_(C_NULL, 0))
        result = FT_Get_Color_Glyph_Paint(
            face,
            glyph_index,
            FT_COLOR_INCLUDE_ROOT_TRANSFORM,
            opaque_paint
        )
        if result == 0
            error("No COLRv1 paint found for this glyph")
        end

        # Create Cairo surface
        surface = CairoARGBSurface(size, size)
        cr = CairoContext(surface)

        # White background
        set_source_rgb(cr, 1.0, 1.0, 1.0)
        rectangle(cr, 0, 0, size, size)
        fill(cr)

        # Flip Y axis (FreeType uses bottom-left origin, Cairo uses top-left)
        translate(cr, 0, size)
        scale(cr, 1, -1)

        # Apply scale factor to fit emoji based on horizontal advance
        scale(cr, scale_factor, scale_factor)

        # Center the glyph vertically by positioning the baseline
        if baseline_offset != 0.0
            translate(cr, 0, baseline_offset)
        end

        # Load color palette
        palette = get_color_palette(face, 0)

        # Create render context
        ctx = RenderContext(cr, face, palette)

        # Render the paint tree
        render_paint_tree(ctx, opaque_paint[], 0)

        # Write to file
        write_to_png(surface, output_path)

        # Cleanup
        destroy(cr)
        destroy(surface)
        FT_Done_Face(face)
        FT_Done_FreeType(ft_library[])
    end

    render_color_emoji('🙅', "output/emoji_crossed_arms.png", size=512, debug=false)
    render_color_emoji('🎨', "output/emoji_artist_palette.png", size=512, debug=false)
    render_color_emoji('🚀', "output/emoji_rocket.png", size=512, debug=false)
end
