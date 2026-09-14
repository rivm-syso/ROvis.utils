#' Check whether a font family is available on the system
#'
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' Used by ro_gg_theme and ro_e_theme to resolve the font family before
#' building a chart. When the RijksoverheidSansWebText font is requested but
#' not installed, the function tries `"Verdana"`, then `"Arial"`, and only
#' uses one that is actually installed. If neither is available either (for
#' example on Linux/CI images that ship none of them), the function informs
#' the user and falls back to the first font it can find on the system. When
#' any other font is requested but not installed, the function aborts with
#' an actionable error message.
#'
#' @family ggplot2
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @family DT
#' @param base_family Character. Font family name to check.
#' @return The resolved font family name: `base_family` itself if installed;
#'   otherwise, for the RO font, the first available font among `"Verdana"`
#'   and `"Arial"`, or (if neither is installed) the first font found on the
#'   system. Aborts for any other unavailable font.
#' @export
ro_check_if_font_available <- function(base_family) {
  fonts <- system_fonts()$family

  if (base_family %in% fonts) {
    return(base_family)
  }

  # When the user requests a font other than RO, it doesn't follow the fall-back chain,
  # instead it aborts. The fall-back chain is only designed for RO, not for other fonts.
  if (base_family != "RijksoverheidSansWebText") {
    cli_abort(
      c(
        "!" = "Can't find the {.var base_family} = {.val {base_family}} in installed fonts.",
        "i" = "Check installed system fonts with {.code systemfonts::system_fonts()}"
      )
    )
  }

  # Fall-back chain
  fallback_fonts <- c("Verdana", "Arial")
  available_fallback <- fallback_fonts[fallback_fonts %in% fonts]

  if (length(available_fallback) > 0) {
    chosen <- available_fallback[[1]]
    cli_inform(
      c(
        "Can't find the {.var base_family} = {.val {base_family}} in installed fonts.",
        "i" = "Fall-back font is set to {.val {chosen}}."
      )
    )
    return(chosen)
  }

  if (length(fonts) > 0) {
    chosen <- fonts[[1]]
    cli_inform(
      c(
        "!" = "Can't find the {.var base_family} = {.val {base_family}} in installed fonts, and
        neither fall-back fonts, {.val Verdana} and {.val Arial}, are installed.",
        "i" = "Falling back to {.val {chosen}}, the first font found on this system. Check
        installed system fonts with {.code systemfonts::system_fonts()}."
      )
    )
    return(chosen)
  }

  cli_abort(
    c(
      "!" = "Can't find the {.var base_family} = {.val {base_family}} in installed fonts, and no
      fonts could be found on this system at all.",
      "i" = "Check installed system fonts with {.code systemfonts::system_fonts()}"
    )
  )
}
