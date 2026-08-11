# Return sequence of hex color codes between two diverging colors

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
Useful to visualize ordered categorical data, for example regions on a
map. The function takes two hex color codes and returns a color sequence
of the desired length where these colors gradually fade into one
another. This could be a transition from a light to a dark shade, or one
color to a different color, see examples. Uses `pal_seq_gradient()` from
the scales package under the hood.

To access the hex color code of a specific color, use the the ROvis
function ro_color.

## Usage

``` r
ro_color_seq(low, high, n)
```

## Arguments

- low:

  Character. The hexadecimal code (#RRGGBB) of the color for 'low'
  values. This color will be the first hex code of the sequence.

- high:

  Character. The hexadecimal code (#RRGGBB) of the color for 'high'
  values. This color will be the last hex code of the sequence.

- n:

  Integer. Desired amount of colors in the sequence (including the
  specified colors).

## Value

sequence of hex color codes sorted from the 'low' to the 'high' color.

## See also

Other ggplotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other plotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other echarts4r:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_seq_named()`](ro_color_seq_named.md)

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_color_validate()`](ro_color_validate.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

## Examples

``` r
ro_color_seq("#F7D9E7", "#CA005D", 5)
#> [1] "#F7D9E7" "#F1AFC2" "#E7839F" "#DA547D" "#CA005D"
ro_color_seq(ro_color("robijnrood_tint15"), ro_color("robijnrood"), 7)
#> [1] "#F7D9E7" "#F3BDCE" "#EEA0B6" "#E7839F" "#DF6588" "#D54272" "#CA005D"
ro_color_seq(ro_color("hemelblauw_tint30"), ro_color("hemelblauw"), 4)
#> [1] "#B2D7EE" "#89B7E1" "#5B98D4" "#007BC7"
ro_color_seq(ro_color("hemelblauw"), ro_color("robijnrood"), 8)
#> [1] "#007BC7" "#5772B7" "#7869A7" "#8F5E98" "#A15189" "#B1427A" "#BE2E6B"
#> [8] "#CA005D"
```
