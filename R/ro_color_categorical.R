#' Show hex codes of RIVM categorical color palette
#'
#' @description
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' Returns a vector of hex color codes of the categorical RIVM color palette.
#' This is especially useful when you don't need to assign a specific color to
#' a specific category. If you do, for example for male/female, we recommend to
#' assign the colors explicitly using the \link[ROvis]{ro_color} function.
#'
#'
#' @return Returns a character vector of hex color codes of the categorical palette.
#'
#' @export
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @family ggplot2
#' @examples
#' ro_color_categorical()
#'
ro_color_categorical <- function() {
  ro_color_palette("categorical") |>
    unname()
}
