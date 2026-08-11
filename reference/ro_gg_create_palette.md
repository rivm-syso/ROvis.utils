# Create a tile plot of a palette with ggplot

Create a tile plot of a palette with ggplot

## Usage

``` r
ro_gg_create_palette(df, palette_name, palette)
```

## Arguments

- df:

  dataframe with 3 character columns: number, name and hex

- palette_name:

  Character. Name of the palette to use in plot title

- palette:

  named character vector with hex values to use in scale_fill_manual

## Value

ggplot object

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
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

## Examples

``` r
if (FALSE) { # \dontrun{
palette_name <- "categorical"
palette <- ROvis.utils:::get_color_palette(palette_name)
df <- ROvis.utils:::ro_show_colors_get_df(palette)
ROvis.utils:::ro_gg_create_palette(df, palette_name, palette)
} # }
```
