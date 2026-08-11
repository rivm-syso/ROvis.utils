#' Set RIVM colors to specific levels to use in scale_color_manual for maps or other visualizations.
#'
#' @description
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' A wrapper function that maps RIVM colors to specific levels/classes to use
#' in scale_color_manual for maps or other visualizations.
#' Note that this function is dependent on the functions `ro_color()` and `ro_color_seq()`.
#'
#' @param cat_names Character. Vector that holds categories.
#' @param low_col Character. The hexadecimal code (#RRGGBB) of the color for 'low' values.
#' This color will be the first hex code of the sequence. Default: "robijnrood".
#' @param high_col Character. The hexadecimal code (#RRGGBB) of the color for 'high' values.
#' This color will be the last hex code of the sequence. Default: "robijnrood_tint15".
#' @param NA_cat_name Character, specified 'no-record' category to search for.
#' Default: "Geen meldingen".
#' @param  NA_cat_col Character: sets the hexadecimal code (#RRGGBB) for the 'no_record' category.
#' Default: "grijs_5".
#' @examples
#'
#'
#' ro_color_seq_named(
#'   cat_names = c("<=99", "100 t/m 399", "400+", "Geen meldingen"),
#'   NA_cat_name = "Geen meldingen"
#' )
#'
#' ro_color_seq_named(
#'   cat_names = c("<10", "10-15", "16+", "NA"),
#'   low_col = "lichtblauw",
#'   high_col = "hemelblauw",
#'   NA_cat_col = "rood"
#' )
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @family ggplot2
#' @export
ro_color_seq_named <- function(cat_names,
                               low_col = "robijnrood",
                               high_col = "robijnrood_tint15",
                               NA_cat_name = "NA",
                               NA_cat_col = "grijs_5") {
  if (length(cat_names) < 2) {
    cli_abort("{.var cat_names} should be a vector of at least 2 categories to generate a gradient!")
  }

  if (any(cat_names == NA_cat_name)) {
    custom_colors <- ro_color_seq(ro_color(low_col), ro_color(high_col), length(unique(cat_names)) - 1)
    custom_colors <- c(custom_colors, ro_color(NA_cat_col))
  } else {
    custom_colors <- ro_color_seq(ro_color(low_col), ro_color(high_col), length(unique(cat_names)))
  }

  names(custom_colors) <- cat_names
  return(custom_colors)
}
