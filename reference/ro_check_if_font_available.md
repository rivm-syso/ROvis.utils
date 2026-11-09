# Check whether a font family is available on the system

![\[DT\]](figures/group-DT.svg)![\[echarts4r\]](figures/group-echarts4r.svg)![\[ggplot2\]](figures/group-ggplot2.svg)![\[gt\]](figures/group-gt.svg)![\[plotly\]](figures/group-plotly.svg)  
  
Used by ro_gg_theme and ro_e_theme to resolve the font family before
building a chart. When the RijksoverheidSansWebText font is requested
but not installed, the function tries `"Verdana"`, then `"Arial"`, and
only uses one that is actually installed. If neither is available either
(for example on Linux/CI images that ship none of them), the function
informs the user and falls back to the first font it can find on the
system. When any other font is requested but not installed, the function
aborts with an actionable error message.

## Usage

``` r
ro_check_if_font_available(
  target_font_family,
  arg = caller_arg(target_font_family),
  call = caller_env()
)
```

## Arguments

- target_font_family:

  Character. Font family name to check. No default: this is a validation
  function, so a sensible default (e.g. `"RijksoverheidSansWebText"`)
  belongs in the calling plotting functions (e.g. `ro_gg_theme()`,
  `ro_ply_theme()`), not here.

- arg, call:

  Passed on to
  [`rlang::abort()`](https://rlang.r-lib.org/reference/abort.html)/[`cli::cli_abort()`](https://cli.r-lib.org/reference/cli_abort.html)
  so that messages cite the argument name used by the calling function
  (e.g. `base_family` in `ro_gg_theme()`) instead of this function's own
  `target_font_family` parameter. Only relevant for programmatic callers
  that want to override the automatically detected argument name.

## Value

The resolved font family name: `target_font_family` itself if installed;
otherwise, for the RO font, the first available font among `"Verdana"`
and `"Arial"`, or (if neither is installed) the first font found on the
system. Aborts for any other unavailable font.

## See also

Other ggplot2:
[`get_color_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/get_color_palette.md),
[`ro_color()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color.md),
[`ro_color_categorical()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_categorical.md),
[`ro_color_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_palette.md),
[`ro_color_seq()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq.md),
[`ro_color_seq_named()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq_named.md),
[`ro_color_validate()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_validate.md),
[`ro_get_color_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_get_color_palette.md),
[`ro_gg_create_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_gg_create_palette.md),
[`ro_show_colors()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_show_colors.md),
[`ro_show_colors_get_df()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_show_colors_get_df.md)

Other ggplotly:
[`ro_color()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color.md),
[`ro_color_categorical()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_categorical.md),
[`ro_color_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_palette.md),
[`ro_color_seq()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq.md),
[`ro_color_seq_named()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq_named.md),
[`ro_get_color_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_get_color_palette.md)

Other plotly:
[`ro_color()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color.md),
[`ro_color_categorical()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_categorical.md),
[`ro_color_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_palette.md),
[`ro_color_seq()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq.md),
[`ro_color_seq_named()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq_named.md),
[`ro_get_color_palette()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_get_color_palette.md)

Other echarts4r:
[`ro_color()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color.md),
[`ro_color_categorical()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_categorical.md),
[`ro_color_seq()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq.md),
[`ro_color_seq_named()`](https://rivm-syso.github.io/ROvis.utils/reference/ro_color_seq_named.md)
