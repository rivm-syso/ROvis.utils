# Return a color palette

This function returns a predefined color palette based on the specified
palette name. Custom color palettes can also be provided using
hexadecimal color codes. If `custom_colors` is unnamed, this function
names the colors by position (from 1 to `length(custom_colors)`).

## Usage

``` r
get_color_palette(palette_name, custom_colors = NULL)
```

## Arguments

- palette_name:

  A string specifying the name of the palette. Valid options are "full",
  "categorical", "gender_con", "gender_unc", "greys", and "custom".

- custom_colors:

  An optional character vector of hexadecimal color codes. This
  parameter is required if `palette_name` is "custom".

## Value

A named character vector of hexadecimal color codes representing the
selected color palette.

## See also

Other ggplot2:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
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

## Examples

``` r
# Examples with a predefined palette
(ROvis.utils:::get_color_palette("full"))
#>          lintblauw              paars       paars_tint90             violet 
#>          "#154273"          "#42145f"          "#552c6f"          "#a90061" 
#>         robijnrood               roze       roze_tint110               rood 
#>          "#ca005d"          "#f092cd"          "#d883b9"          "#d52b1e" 
#>             oranje         donkergeel               geel        donkerbruin 
#>          "#e17000"          "#ffb612"          "#f9e11e"          "#673327" 
#>              bruin        donkergroen              groen           mosgroen 
#>          "#94710a"          "#275937"          "#39870c"          "#777b00" 
#>          mintgroen  mintgroen_tint110        donkerblauw         hemelblauw 
#>          "#76d2b6"          "#6abda4"          "#01689b"          "#007bc7" 
#>         lichtblauw lichtblauw_tint110 
#>          "#8fcae7"          "#81b6d0" 
(ROvis.utils:::get_color_palette("gender_unc"))
#>      paars_tint90        donkergeel mintgroen_tint110 
#>         "#552c6f"         "#ffb612"         "#6abda4" 

# Example with a custom palette using hexcodes directly
(ROvis.utils:::get_color_palette("custom", c("#FF5733", "#33FF57", "#3357FF")))
#>         1         2         3 
#> "#FF5733" "#33FF57" "#3357FF" 

# Example using 'ro_color()'
(ROvis.utils:::get_color_palette("custom", ro_color_seq(ro_color("robijnrood_tint15"),
ro_color("robijnrood"), 12)))
#>         1         2         3         4         5         6         7         8 
#> "#F7D9E7" "#F5CADA" "#F3BACC" "#F0ABBF" "#ED9BB2" "#E98BA5" "#E57B99" "#E16A8C" 
#>         9        10        11        12 
#> "#DC5980" "#D64574" "#D02E68" "#CA005D" 
```
