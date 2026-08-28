#' Return named list with hexcodes RIVM palette
#'
#' `r ro_group_badge(c('echarts4r', 'ggplot2', 'plotly'))`
#'
#' @section Dependencies:
#'  * \link{ro_color}
#'
#' @param palette_name one of:
#' * "full": all 18 RIVM colors (full color, 100% tint)
#' * "categorical": best palette for visualizing categories (no variation in tint, good contrast differences)
#' * "gender_con": gender conventional
#' * "gender_unc": gender unconventional
#' * "greys": all 7 grey tints
#' @family ggplot2
#' @family ggplotly
#' @family plotly
#' @return named vector with hex color codes
#' @export
#' @examples
#' ro_color_palette("categorical")
ro_color_palette <- function(palette_name) {
  palette_list <- list(
    full = c(
      "lintblauw",
      "paars",
      "paars_tint90",
      "violet",
      "robijnrood",
      "roze",
      "roze_tint110",
      "rood",
      "oranje",
      "donkergeel",
      "geel",
      "donkerbruin",
      "bruin",
      "donkergroen",
      "groen",
      "mosgroen",
      "mintgroen",
      "mintgroen_tint110",
      "donkerblauw",
      "hemelblauw",
      "lichtblauw",
      "lichtblauw_tint110"
    ),
    categorical = c(
      "hemelblauw",
      "donkergeel",
      "robijnrood",
      "paars_tint90",
      "mintgroen_tint110",
      "oranje",
      "groen",
      "donkerbruin"
    ),
    gender_con = c(
      "hemelblauw",
      "robijnrood",
      "paars_tint90"
    ),
    gender_unc = c(
      "paars_tint90",
      "donkergeel",
      "mintgroen_tint110"
    ),
    greys = c(
      "grijs_1",
      "grijs_2",
      "grijs_3",
      "grijs_4",
      "grijs_5",
      "grijs_6",
      "grijs_7"
    )
  )

  palette_name <- arg_match(palette_name, names(palette_list), error_call = caller_env())

  # return named vector with hex color codes
  set_names(ro_color(palette_list[[palette_name]]), palette_list[[palette_name]])
}
