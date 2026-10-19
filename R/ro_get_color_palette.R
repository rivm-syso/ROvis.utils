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
#' ROvis.utils::ro_get_color_palette("categorical")
ro_get_color_palette <- function(palette_name = "categorical") {
  ro_init_config() # this should probably be moved to a zzz.R file
  palette_list <- institute_config$colors$pallettes

  palette_name <- arg_match(
    palette_name,
    names(palette_list),
    error_call = caller_env()
  )

  # return named vector with hex color codes
  set_names(
    ro_color(palette_list[[palette_name]]),
    palette_list[[palette_name]]
  )
}
