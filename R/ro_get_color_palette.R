#' Return named list with hexcodes for selected palette
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
#' @param custom_colrs default = NULL, only used when custom palette_name is defined. handy for `ro_show_colors()`.
#' @family ggplot2
#' @family ggplotly
#' @family plotly
#' @return named vector with hex color codes
#' @export
#' @examples
#' ROvis.utils::ro_get_color_palette("categorical")
ro_get_color_palette <- function(
  palette_name = "categorical",
  custom_colors = NULL
) {
  palette_list <- .ro_env$palettes
  check_character(palette_name)
  check_character(custom_colors, allow_null = TRUE)

  # TODO: Discuss
  palette_name <- arg_match(
    palette_name,
    c(names(palette_list), "custom", "Custom", "CUSTOM"), # would prefer tolower logic, but arg_match() doesnt accept
    error_call = caller_env()
  )

  if (palette_name == "custom") {
    if (is.null(custom_colors)) {
      custom_colors <- c("red", "green", "blue")
    }

    set_names(
      ro_color(custom_colors),
      custom_colors
    )
  } else {
    # return named vector with hex color codes
    set_names(
      ro_color(palette_list[[palette_name]]),
      palette_list[[palette_name]]
    )
  }
}
