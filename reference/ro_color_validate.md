# Validate hex color codes

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
This function checks if each color in the provided vector is a valid hex
color code in the format `#RRGGBB`. If any invalid color codes are
found, an error message is triggered. It is a helper function (not
exported) used both in ro_color_seq and ro_show_colors

## Usage

``` r
ro_color_validate(colors)
```

## Arguments

- colors:

  A character vector of color codes to validate.

## Value

The input `colors` vector is returned invisibly if all color codes are
valid. If any color code is invalid, an error is triggered.

## See also

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

## Examples

``` r
valid_colors <- c("#FF5733", "#33FF57", "#3357FF")
invalid_colors <- c("#FF5733", "33FF57", "#ZZZZZZ")

# This will pass without errors
ROvis.utils:::ro_color_validate(valid_colors)

# This will trigger an error
if (FALSE) { # \dontrun{
ROvis.utils:::ro_color_validate(invalid_colors)
} # }
```
