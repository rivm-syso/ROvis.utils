# Create a data frame from a color palette

This function takes a color palette and returns a data frame containing
the color names and their corresponding hex values. If the palette has
named colors, the data frame will include these names and ensure the
correct order. If the palette is unnamed, it will generate a sequence of
numbers to label the colors.

## Usage

``` r
ro_show_colors_get_df(palette)
```

## Arguments

- palette:

  A named character vector of hex color codes.

## Value

A tibble (data frame) with columns `number`, `name` and `hex`.

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
[`ro_show_colors()`](ro_show_colors.md)

## Examples

``` r
ROvis.utils:::ro_show_colors_get_df(c(red = "#FF0000", green = "#00FF00", blue = "#0000FF"))
#> # A tibble: 3 × 3
#>   number name  hex    
#>   <chr>  <chr> <chr>  
#> 1 1      red   #FF0000
#> 2 2      green #00FF00
#> 3 3      blue  #0000FF
ROvis.utils:::ro_show_colors_get_df(c("1" = ro_color("donkerblauw"), "2" = ro_color("robijnrood"),
 "3" = ro_color("mintgroen")))
#> # A tibble: 3 × 3
#>   number name  hex    
#>   <chr>  <chr> <chr>  
#> 1 1      1     #01689b
#> 2 2      2     #ca005d
#> 3 3      3     #76d2b6
```
