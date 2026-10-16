#' Return named list with hexcodes RIVM palette
#'
#' `r ro_group_badge(c('echarts4r', 'ggplot2', 'plotly'))`
#'
#' @section Dependencies:
#'  * \link[ROvis.utils]{ro_color}
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
#' ROvis.utils::ro_color_palette("categorical")
ro_color_palette <- function(palette_name) {
  palette <- yaml::read_yaml("/inst/rivm.yaml")
  palette_list <- list(
    full = palette$palette
    , categorical = palette$categorical
    , gender_con = palette$gender_con
    , gender_unc = palette$gender_unc
    , greys = palette$greys
  )
}
