# Show RIVM color palette

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
Plots the full RIVM color palette, a specified RIVM color palette, or a
custom color palette. Hoover over the palette to view the hex color
codes.

## Usage

``` r
ro_show_colors(palette_name = "full", custom_colors = NULL)
```

## Arguments

- palette_name:

  Character. Default="full". Can be one of:

  - The name of an RIVM palette. Available palettes are:

    - `full`: all 18 RIVM colors (full color, 100% tint)

    - `categorical`: best palette for visualizing categories (no
      variation in tint, good contrast differences)

    - `gender_con`: gender conventional

    - `gender_unc`: gender unconventional

    - `greys`: all 7 grey tints

  - 'custom'. use this if you want to specify your own custom_colors.

- custom_colors:

  Character or vector of characters. Should be hexadecimal code(s)
  (#RRGGBB).

  It is advised to use the other ROvis color functions. To access the
  hex color code of a specific color, use the the ROvis function
  ro_color. To access a vector of hex color codes of the categorical
  palette, use the ROvis function ro_color_categorical.

## Value

Color palette in the Viewer pane.

## Dependencies

- ro_color_palette

## See also

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_color_validate()`](ro_color_validate.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

## Examples

``` r
if (FALSE) { # \dontrun{
ro_show_colors()
ro_show_colors("categorical")
ro_show_colors("custom", c(ro_color("donkergeel"), ro_color("paars_tint90"), ro_color("mosgroen")))
ro_show_colors("custom", "#76d2b6")
ro_show_colors("custom", c(
  donkergeel = ro_color("donkergeel"), paars_tint90 = ro_color("paars_tint90"),
  mosgroen = ro_color("mosgroen")
))
ro_show_colors("custom", ro_color_seq(ro_color("hemelblauw_tint15"), ro_color("hemelblauw"), 5))
ro_show_colors("custom", ro_color_seq(ro_color("robijnrood_tint15"), ro_color("robijnrood"), 12))
} # }
```
