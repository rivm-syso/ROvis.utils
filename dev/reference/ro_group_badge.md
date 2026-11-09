# Build backend group badge(s) for use in roxygen documentation

Generates Rd markup for badge(s) indicating which plotting/output
backend(s) (ggplot2, echarts4r, plotly, gt, or DT) a function belongs
to. Mirrors the mechanism used by
[badge](https://lifecycle.r-lib.org/reference/badge.html): the HTML help
page shows an SVG badge from `man/figures/`, while non-HTML help (e.g.
the console) falls back to bracketed text. It is a documentation-time
helper (not exported), used via `` `r ro_group_badge("ggplot2")` ``
inside roxygen comments.

## Usage

``` r
ro_group_badge(group)
```

## Arguments

- group:

  Character vector with one or more of `"ggplot2"`, `"echarts4r"`,
  `"plotly"`, `"gt"`, `"DTdevto"`. When more than one is supplied, the
  badges are placed next to each other, sorted alphabetically
  (regardless of the order passed in).

## Value

A string containing Rd markup. Ends with `\cr` so any text following it
in the same roxygen paragraph starts on a new line.
