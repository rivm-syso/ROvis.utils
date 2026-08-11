#' Validate hex color codes
#'
#' @description
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' This function checks if each color in the provided vector is a valid hex color
#' code in the format `#RRGGBB`.
#' If any invalid color codes are found, an error message is triggered.
#' It is a helper function (not exported) used both in \link[ROvis]{ro_color_seq} and
#' \link[ROvis]{ro_show_colors}
#'
#' @param colors A character vector of color codes to validate.
#'
#' @return The input `colors` vector is returned invisibly if all color codes
#' are valid. If any color code is invalid, an error is triggered.
#'
#' @keywords internal
#' @family ggplot2
#' @examples
#' valid_colors <- c("#FF5733", "#33FF57", "#3357FF")
#' invalid_colors <- c("#FF5733", "33FF57", "#ZZZZZZ")
#'
#' # This will pass without errors
#' ROvis.utils:::ro_color_validate(valid_colors)
#'
#' # This will trigger an error
#' \dontrun{
#' ROvis.utils:::ro_color_validate(invalid_colors)
#' }
ro_color_validate <- function(colors) {
  hex_pattern <- "^#[a-fA-F0-9]{6}$"
  invalid_colors <- colors[!grepl(hex_pattern, colors)]

  if (length(invalid_colors) > 0) {
    cli_abort(c(
      "{.var {colors}} should be a (vector of) hex color code(s) (#RRGGBB).",
      "i" = "Use {.run color()} to return the hex code of a specified RIVM color."
    ))
  }

  invisible(colors) # Return colors invisibly if all are valid
}
