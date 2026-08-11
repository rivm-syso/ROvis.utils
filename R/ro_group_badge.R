#' Build backend group badge(s) for use in roxygen documentation
#'
#' @description Generates Rd markup for badge(s) indicating which plotting/output
#' backend(s) (ggplot2, echarts4r, plotly, gt, or DT) a function belongs to.
#' Mirrors the mechanism used by \link[lifecycle]{badge}: the HTML help page
#' shows an SVG badge from `man/figures/`, while non-HTML help (e.g. the
#' console) falls back to bracketed text. It is a documentation-time helper
#' (not exported), used via `` `r ro_group_badge("ggplot2")` `` inside roxygen
#' comments.
#'
#' @param group Character vector with one or more of `"ggplot2"`,
#' `"echarts4r"`, `"plotly"`, `"gt"`, `"DTdevto"`. When more than one is supplied,
#' the badges are placed next to each other, sorted alphabetically
#' (regardless of the order passed in).
#'
#' @return A string containing Rd markup. Ends with `\cr` so any text
#' following it in the same roxygen paragraph starts on a new line.
#'
#' @export
ro_group_badge <- function(group) {
  valid <- c("ggplot2", "echarts4r", "plotly", "gt", "DT", "toegankelijkheid", "huisstijl")
  group <- vapply(
    group,
    rlang::arg_match0,
    FUN.VALUE = character(1),
    values = valid
  )
  group <- sort(group)

  badges <- vapply(
    group,
    function(g) {
      html <- sprintf(
        "\\figure{%s}{options: alt='[%s]'}",
        sprintf("group-%s.svg", g),
        g
      )
      badge_text <- sprintf("\\strong{[%s]}", g)
      sprintf("\\ifelse{html}{%s}{%s}", html, badge_text)
    },
    FUN.VALUE = character(1)
  )

  paste0(paste(badges, collapse = ""), "\\cr\\cr")
}
