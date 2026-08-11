# Check whether a font family is available on the system

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
Used by ro_gg_theme and ro_e_theme to resolve the font family before
building a chart. When the RijksoverheidSansWebText font is requested
but not installed, the function informs the user and silently falls back
to Verdana. When any other font is requested but not installed, the
function aborts with an actionable error message.

## Usage

``` r
ro_check_if_font_available(base_family)
```

## Arguments

- base_family:

  Character. Font family name to check.

## Value

The resolved font family name (invisibly falls back to `"Verdana"` for
the RO font; aborts for any other unavailable font).

## See also

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_color_validate()`](ro_color_validate.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

Other ggplotly: [`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other plotly: [`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other echarts4r: [`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md)
