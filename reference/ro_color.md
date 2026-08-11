# Return hex code of RIVM color

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
Returns hex code(s) of color_name. All 18 RIVM colors and their lighter
shades can be accessed with this function. The names of RIVM colors are
listed at the rijkshuisstijl website, or, can be viewed by running
another ROvis function ro_show_colors.

To access a vector of hex color codes of the categorical palette, use
the ROvis

function ro_color_categorical.

## Usage

``` r
ro_color(color_name = "hemelblauw")
```

## Arguments

- color_name:

  Character or vector of characters. Default="hemelblauw". Can be one
  of:

  - The name of an RIVM color, e.g. "robijnrood". All colors come at
    different shades: 'tint15', 'tint30', 'tint45', 'tint60', or
    'tint75'. A color shade can be accessed by combining the color name
    with the suffix "\_tintXX". The seven grey tints are available as
    'grijs_1' (lightest) to 'grijs_7' (darkest).

  - A character vector of RIVM color names. Example: c("hemelblauw",
    "donkergeel")

## Value

returns the (array of) hex color code(s)

## See also

Other ggplot2: [`get_color_palette()`](get_color_palette.md),
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_color_validate()`](ro_color_validate.md),
[`ro_get_color_palette()`](ro_get_color_palette.md),
[`ro_gg_create_palette()`](ro_gg_create_palette.md),
[`ro_show_colors()`](ro_show_colors.md),
[`ro_show_colors_get_df()`](ro_show_colors_get_df.md)

Other ggplotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other plotly:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_palette()`](ro_color_palette.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md),
[`ro_get_color_palette()`](ro_get_color_palette.md)

Other echarts4r:
[`ro_check_if_font_available()`](ro_check_if_font_available.md),
[`ro_color_categorical()`](ro_color_categorical.md),
[`ro_color_seq()`](ro_color_seq.md),
[`ro_color_seq_named()`](ro_color_seq_named.md)

## Examples

``` r
ro_color()
#> [1] "#007bc7"
ro_color("robijnrood")
#> [1] "#ca005d"
ro_color("donkergeel_tint75")
#> [1] "#fdc84d"
ro_color("grijs_3")
#> [1] "#cccccc"
ro_color(c("lintblauw", "robijnrood", "mintgroen_tint30"))
#> [1] "#154273" "#ca005d" "#d5f1e9"
```
