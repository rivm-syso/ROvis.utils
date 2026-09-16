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
#' @param target_font_family Character. Font family name to check. No
#'   default: this is a validation function, so a sensible default (e.g.
#'   `"RijksoverheidSansWebText"`) belongs in the calling plotting functions
#'   (e.g. `ro_gg_theme()`, `ro_ply_theme()`), not here.
#' @return The resolved font family name: `target_font_family` itself if
#'   installed; otherwise, for the RO font, the first available font among
#'   `"Verdana"` and `"Arial"`, or (if neither is installed) the first font
#'   found on the system. Aborts for any other unavailable font.
#' @export
ro_check_if_font_available <- function(target_font_family) {
  installed_fonts <- system_fonts()$family

  if (target_font_family %in% installed_fonts) {
    return(target_font_family)
  }

  # The fall-back chain below only exists for the RO font. Any other font
  # the user asked for but that isn't installed is a hard error, since we
  # have no reasonable substitute to guess for an arbitrary font name.
  is_ro_font <- target_font_family == "RijksoverheidSansWebText"
  if (!is_ro_font) {
    cli_abort(
      c(
        "!" = "Can't find the {.var target_font_family} = {.val {target_font_family}} in installed fonts.",
        "i" = "Check installed system fonts with {.code systemfonts::system_fonts()}"
      )
    )
  }

  # RO font requested but not installed: try the preferred fall-back fonts,
  # in order, and use the first one that is actually installed.
  fallback_fonts <- c("Verdana", "Arial")
  available_fallback_fonts <- fallback_fonts[fallback_fonts %in% installed_fonts]

  if (length(available_fallback_fonts) > 0) {
    chosen_font <- available_fallback_fonts[[1]]
    cli_inform(
      c(
        "Can't find the {.var target_font_family} = {.val {target_font_family}} in installed fonts.",
        "i" = "Fall-back font is set to {.val {chosen_font}}."
      )
    )
    return(chosen_font)
  }

  # Neither the RO font nor its fall-backs are installed (e.g. bare
  # Linux/CI images that ship no fonts at all): fall back further to
  # whatever font is actually present, rather than aborting outright.
  if (length(installed_fonts) > 0) {
    chosen_font <- installed_fonts[[1]]
    cli_inform(
      c(
        "!" = "Can't find the {.var target_font_family} = {.val {target_font_family}} in installed fonts, and
        neither fall-back fonts, {.val Verdana} and {.val Arial}, are installed.",
        "i" = "Falling back to {.val {chosen_font}}, the first font found on this system. Check
        installed system fonts with {.code systemfonts::system_fonts()}."
      )
    )
    return(chosen_font)
  }

  # No fonts found on the system at all: there's nothing left to fall back
  # to.
  cli_abort(
    c(
      "!" = "Can't find the {.var target_font_family} = {.val {target_font_family}} in installed fonts, and no
      fonts could be found on this system at all.",
      "i" = "Check installed system fonts with {.code systemfonts::system_fonts()}"
    )
  )
}
