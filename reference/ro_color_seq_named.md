# Set RIVM colors to specific levels to use in scale_color_manual for maps or other visualizations.

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
A wrapper function that maps RIVM colors to specific levels/classes to
use in scale_color_manual for maps or other visualizations. Note that
this function is dependent on the functions [`ro_color()`](ro_color.md)
and [`ro_color_seq()`](ro_color_seq.md).

## Usage

``` r
ro_color_seq_named(
  cat_names,
  low_col = "robijnrood",
  high_col = "robijnrood_tint15",
  NA_cat_name = "NA",
  NA_cat_col = "grijs_5"
)
```

## Arguments

- cat_names:

  Character. Vector that holds categories.

- low_col:

  Character. The hexadecimal code (#RRGGBB) of the color for 'low'
  values. This color will be the first hex code of the sequence.
  Default: "robijnrood".

- high_col:

  Character. The hexadecimal code (#RRGGBB) of the color for 'high'
  values. This color will be the last hex code of the sequence. Default:
  "robijnrood_tint15".

- NA_cat_name:

  Character, specified 'no-record' category to search for. Default:
  "Geen meldingen".

- NA_cat_col:

  Character: sets the hexadecimal code (#RRGGBB) for the 'no_record'
  category. Default: "grijs_5".

## See also

Other ggplotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other plotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other echarts4r:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_seq()`](ro_color_seq.md)

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color()`](ro_color.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_validate()`](ro_color_validate.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

## Examples

``` r


ro_color_seq_named(
  cat_names = c("<=99", "100 t/m 399", "400+", "Geen meldingen"),
  NA_cat_name = "Geen meldingen"
)
#>           <=99    100 t/m 399           400+ Geen meldingen 
#>      "#CA005D"      "#E7839F"      "#F7D9E7"      "#999999" 

ro_color_seq_named(
  cat_names = c("<10", "10-15", "16+", "NA"),
  low_col = "lichtblauw",
  high_col = "hemelblauw",
  NA_cat_col = "rood"
)
#>       <10     10-15       16+        NA 
#> "#8FCAE7" "#5EA1D7" "#007BC7" "#d52b1e" 
```
