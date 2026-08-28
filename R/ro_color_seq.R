#' Return sequence of hex color codes between two diverging colors
#'
#' @description
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' Useful to visualize ordered categorical data, for example regions on a map.
#' The function takes two hex color codes and returns a color sequence of the desired
#' length where these colors gradually fade into one another.
#' This could be a transition from a light to a dark shade, or one color to a different color,
#' see examples. Uses \code{pal_seq_gradient()} from the scales package under the hood.
#'
#' To access the hex color code of a specific color, use the \link{ro_color} function.
#'
#' @param low Character. The hexadecimal code (#RRGGBB) of the color for 'low' values.
#' This color will be the first hex code of the sequence.
#' @param high Character. The hexadecimal code (#RRGGBB) of the color for 'high' values.
#' This color will be the last hex code of the sequence.
#' @param n Integer. Desired amount of colors in the sequence (including the specified colors).
#'
#' @return sequence of hex color codes sorted from the 'low' to the 'high' color.
#' @export
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @family ggplot2
#' @examples
#' ro_color_seq("#F7D9E7", "#CA005D", 5)
#' ro_color_seq(ro_color("robijnrood_tint15"), ro_color("robijnrood"), 7)
#' ro_color_seq(ro_color("hemelblauw_tint30"), ro_color("hemelblauw"), 4)
#' ro_color_seq(ro_color("hemelblauw"), ro_color("robijnrood"), 8)
ro_color_seq <- function(low, high, n) {
  check_installed("scales")

  # Error message when low or high is not a character
  check_character(low)
  check_character(high)

  # Error message when low or high is not a hex code
  ro_color_validate(low)
  ro_color_validate(high)

  # Error message when n is not an integer
  check_number_whole(n)

  # use sequence with percentages between 0 and 1 to create the color sequence
  seq_perc <- seq(0, 1, length.out = n)
  color_sequence <- pal_seq_gradient(low = low, high = high)(seq_perc)
  return(color_sequence)
}
