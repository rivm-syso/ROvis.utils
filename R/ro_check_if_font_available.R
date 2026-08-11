#' Check whether a font family is available on the system
#'
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' Used by ro_gg_theme and ro_e_theme to resolve the font family
#' before building a chart. When the RijksoverheidSansWebText font is
#' requested but not installed, the function informs the user and silently
#' falls back to Verdana. When any other font is requested but not installed,
#' the function aborts with an actionable error message.
#'
#' @family ggplot2
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @family DT
#' @param base_family Character. Font family name to check.
#' @return The resolved font family name (invisibly falls back to `"Verdana"`
#'   for the RO font; aborts for any other unavailable font).
#' @export
ro_check_if_font_available <- function(base_family) {
  if (!base_family %in% system_fonts()$family) {
    if (base_family == "RijksoverheidSansWebText") {
      cli_inform(
        "Can't find the {.var base_family} = {.val {base_family}} in installed fonts. Fall-back font is set to Verdana."
      )
      base_family <- "Verdana"
    } else {
      cli_abort(
        c(
          "!" = "Can't find the {.var base_family} = {.val {base_family}} in installed fonts.",
          "i" = "Check installed system fonts with {.code systemfonts::system_fonts()}"
        )
      )
    }
  }
  base_family
}
