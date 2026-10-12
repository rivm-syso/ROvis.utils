# fmt: skip file
#' Return hex code of RIVM color
#'
#' @description
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' Returns hex code(s) of color_name. All 18 RIVM colors and their
#' lighter shades can be accessed with this function. The names of
#' RIVM colors are listed at the  rijkshuisstijl website, or, can be viewed by
#' running another function, \link{ro_show_colors}.
#'
#' To access a vector of hex color codes of the categorical palette, use the ROvis
#'
#' function \link{ro_color_categorical}.
#'
#' @param color_name Character or vector of characters. Default="hemelblauw".
#' Can be one of:
#' * The name of an RIVM color, e.g. "robijnrood". All colors come at different
#' shades: 'tint15', 'tint30', 'tint45', 'tint60', or 'tint75'. A color shade can
#' be accessed by combining the color name with the suffix "_tintXX". The seven
#' grey tints are available as 'grijs_1' (lightest) to 'grijs_7' (darkest).
#' * A character vector of RIVM color names. Example: c("hemelblauw", "donkergeel")
#'
#' @examples
#' ro_color()
#' ro_color("robijnrood")
#' ro_color("donkergeel_tint75")
#' ro_color("grijs_3")
#' ro_color(c("lintblauw", "robijnrood", "mintgroen_tint30"))
#' @family ggplot2
#' @family ggplotly
#' @family plotly
#' @family echarts4r
#' @return returns the (array of) hex color code(s)
#' @export
ro_color <- function(color_name = "hemelblauw") {
  ro_init_config()
  tint_list <- c(0.75, 0.6, 0.45, 0.3, 0.15)

  base_colors <- institute_config$colors$base_colors

  all_tints <- unlist(
    lapply(tint_list, function(tf) {
      tint_colors(base_colors, tint = tf)
    })
  )

  color_list <- c(base_colors, all_tints)

  tryCatch(
    {
      call_loc <- current_env()
      for (color in color_name) {
        arg_match(color, names(color_list))
      }
    },
    error = function(x) {
      # use the "did you mean 'x' error info message from arg_match"
      cli_abort(
        c(
          "!" = "{.arg color_name} must be one of,
      or a list of, {length(color_list)} options.",
          x$body, # the info message, if present
          i = "Run {.run ro_show_colors()} to visualise the colors for
      each palette ('full', 'categorical', 'gender_con', 'gender_unc', or 'greys')."
        ),
        call = call_loc
      )
    }
  )


  # return hex color code
  unlist(color_list[color_name], use.names = FALSE)
}


#' Tint colors (helper)
#'
#' @param colors named or unnamed character vector of hex colors
#' @param tint_color color to "tint" to, default white.
#' @param tint fraction of percentage of tint that should be added
#'
#' @returns list of tintes colors.
tint_colors <- function(colors,
                        tint_color = "#FFFFFF",
                        tint = 0.8) {
  # NOTE: chat geeft terrecht aan dat wij onze tintnummers verkeerd noemen.
  # tint75 , is eigenlijk 75% richting de tint, dus 75% tintkleur (wit) en 25% orgineel
  # Wij doen het andersom: tint75 is 75% orginele kleur & 25% tintkleur
  # TODO: dit bespreken / nakijken

  # NOTE: tints might defiate 1 point in each color bracket due to rounding issues
  # when forcing correct rounding on frac 0.75, it might differ again in frac 0.4.
  # Leaving this for now due to it not being visible to the human eye.


  # If colors have names, drop any that look like tint variants
  if (!is.null(names(colors))) {
    is_tint <- grepl("_tint[0-9]+$", names(colors))
    colors  <- colors[!is_tint]
  }

  if (length(colors) == 0) return(colors)

  base_rgb <- col2rgb(colors)             # 3 x N
  tint_rgb <- col2rgb(tint_color)         # 3 x 1

  tint_rgb_rep <- matrix(tint_rgb, nrow = 3, ncol = ncol(base_rgb))

  # Interne fractie voor de kleurberekening:
  mix_fraction <- 1 - tint

  # Mix: (1 - mix_fraction)*base + mix_fraction*tint_color
  mixed_rgb <- (1 - mix_fraction) * base_rgb + mix_fraction * tint_rgb_rep

  mixed_hex <- apply(mixed_rgb, 2, function(x) {
    rgb(x[1]/255, x[2]/255, x[3]/255)
  })

  tint_pct <- round(tint * 100)          # 0.8 → 80
  suffix   <- paste0("_tint", tint_pct)

  if (!is.null(names(colors))) {
    names(mixed_hex) <- paste0(names(colors), suffix)
  } else {
    names(mixed_hex) <- paste0(colors, suffix)
  }

  mixed_hex
}
