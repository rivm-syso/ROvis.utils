# Show hex codes of RIVM categorical color palette

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
Returns a vector of hex color codes of the categorical RIVM color
palette. This is especially useful when you don't need to assign a
specific color to a specific category. If you do, for example for
male/female, we recommend to assign the colors explicitly using the
ro_color function.

## Usage

``` r
ro_color_categorical()
```

## Value

Returns a character vector of hex color codes of the categorical
palette.

## See also

Other ggplotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other plotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other echarts4r:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md), [`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md)

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_color_validate()`](ro_color_validate.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

## Examples

``` r
ro_color_categorical()
#> [1] "#007bc7" "#ffb612" "#ca005d" "#552c6f" "#6abda4" "#e17000" "#39870c"
#> [8] "#673327"
```
