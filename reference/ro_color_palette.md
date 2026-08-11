# Return named list with hexcodes RIVM palette

![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[plotly\]](figures/group-plotly.svg)  
  

## Usage

``` r
ro_color_palette(palette_name)
```

## Arguments

- palette_name:

  one of:

  - "full": all 18 RIVM colors (full color, 100% tint)

  - "categorical": best palette for visualizing categories (no variation
    in tint, good contrast differences)

  - "gender_con": gender conventional

  - "gender_unc": gender unconventional

  - "greys": all 7 grey tints

## Value

named vector with hex color codes

## Dependencies

- ro_color

## See also

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_color_validate()`](ro_color_validate.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

Other ggplotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other plotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

## Examples

``` r
ro_color_palette("categorical")
#>        hemelblauw        donkergeel        robijnrood      paars_tint90 
#>         "#007bc7"         "#ffb612"         "#ca005d"         "#552c6f" 
#> mintgroen_tint110            oranje             groen       donkerbruin 
#>         "#6abda4"         "#e17000"         "#39870c"         "#673327" 
```
