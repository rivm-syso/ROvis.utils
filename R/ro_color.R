#' Return hex code of RIVM colour names
#'
#' Accepts base colour names such as `"hemelblauw"` and tint names such as
#' `"hemelblauw_tint75"`. By default, base colours are read from the package
#' configuration. You can optionally supply `base_colors` to override them,
#' which is useful for testing.
#'
#' @param color_name Character vector of colour names.
#' @param base_colors Optional named character vector of base colours. If `NULL`,
#'   colours are read from the package configuration.
#'
#' @return A named character vector of hex colour codes.
#' @export
ro_color <- function(color_name = "hemelblauw", base_colors = NULL) {
  # If no manual overwrite colors have been given, use the config instead.
  if (is.null(base_colors)) {
    base_colors <- .ro_env$base_colors
  }

  pattern <- "^(.+)_tint([0-9]+)$"
  base_name <- ifelse(
    grepl(pattern, color_name),
    sub(pattern, "\\1", color_name),
    color_name
  )

  tryCatch(
    {
      call_loc <- current_env()
      for (color in base_name) {
        arg_match(color, names(base_colors))
      }
    },
    error = function(x) {
      cli_abort(
        c(
          "!" = "{.arg color_name} must be one of, or a list of,
          {length(base_colors)} base colour options,
          optionally followed by a `_tintXX` suffix.",
          x$body,
          i = "Run {.run ro_show_colors()} to visualise the colors for each palette
          ('full', 'categorical', 'gender_con', 'gender_unc', or 'greys')."
        ),
        call = call_loc
      )
    }
  )

  tint_from_names(color_name, base_colors = base_colors)
}

#' Resolve colour names to hex codes
#'
#' @param palette_names Character vector of colour names, with or without a
#'   `_tint<number>` suffix.
#' @param base_colors Optional named character vector of base colours. If `NULL`,
#'   colours are read from the package configuration.
#'
#' @return A named character vector of hex colours.
tint_from_names <- function(palette_names, base_colors) {
  pattern <- "^(.+)_tint([0-9]+)$"
  is_tint <- grepl(pattern, palette_names)

  base_names <- ifelse(
    is_tint,
    sub(pattern, "\\1", palette_names),
    palette_names
  )
  tint_values <- suppressWarnings(
    ifelse(
      is_tint,
      as.numeric(sub(pattern, "\\2", palette_names)) / 100,
      1
    )
  )

  unknown <- setdiff(unique(base_names), names(base_colors))
  if (length(unknown) > 0) {
    cli::cli_abort(c(
      "!" = "Unknown colour name(s): {unknown}.",
      "i" = "Run {.run ro_show_colors()} to view available colours."
    ))
  }

  hex_codes <- vapply(
    seq_along(palette_names),
    function(i) {
      if (!is_tint[i]) {
        base_colors[[base_names[i]]]
      } else {
        tint_color(base_colors[[base_names[i]]], tint_values[i])
      }
    },
    character(1)
  )

  names(hex_codes) <- palette_names
  hex_codes
}

#' Tint a single colour lighter or darker
#'
#' @param color A single colour value understood by [grDevices::col2rgb()].
#' @param tint A single number between 0 and 2.
#'
#' @return A single hex colour value.
tint_color <- function(color, tint) {
  if (length(color) != 1 || is.na(color)) {
    cli::cli_abort("`color` must be a single valid colour value.")
  }

  if (
    !is.numeric(tint) ||
      length(tint) != 1 ||
      is.na(tint) ||
      tint < 0 ||
      tint > 2
  ) {
    cli::cli_abort("`tint` must be a single number between 0 and 2.")
  }

  rgb_in <- grDevices::col2rgb(color)[, 1]
  target <- if (tint < 1) 255 else 0
  amount <- abs(tint - 1)

  mixed <- (1 - amount) * rgb_in + amount * target

  grDevices::rgb(mixed[1], mixed[2], mixed[3], maxColorValue = 255)
}
