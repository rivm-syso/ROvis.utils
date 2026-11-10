#' Return list with hexcodes palette
#'
#' colors are defined in a yaml in inst/extdata
#'
#' `r ro_group_badge(c('echarts4r', 'ggplot2', 'plotly'))`
#'
#' @section Dependencies:
#'  * \link[ROvis.utils]{ro_color}
#'
#' @param palette_name one of:
#' * "full": full color palette (full color)
#' * "categorical": best palette for visualizing categories (no variation in tint, good contrast differences)
#' * "gender_con": gender conventional
#' * "gender_unc": gender unconventional
#' * "greys": all grey tints
#' @family ggplot2
#' @family ggplotly
#' @family plotly
#' @return named vector with hex color codes
#' @export
#' @examples
#' ROvis.utils::ro_color_palette("categorical")
ro_color_palette <- function(palette_name) {

  # load palette
  config <- ro_load_config()

  # remove fonts
  config$fonts <- NULL

  # check palette name
  palette_name <- arg_match(palette_name, names(config), error_call = caller_env())

  # return named vector selected palette
  output <- config[[palette_name]] |> unlist()

  return(output)
}

