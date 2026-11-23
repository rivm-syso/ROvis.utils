#' Return hex code of selected theme color names
#'
#'Accepts base color names such as `"hemelblauw"` and tint names such as
#'   `"hemelblauw_tint75"`  By default, base colors are read from the package
#' configuration. You can optionally supply `base_colors` to override them,
#' which is useful for testing. Also accepts valid R color names (e.g. `"red"`,
#' `"steelblue"`) and hex codes (e.g. "#FF0000"), optionally with a `_tintXX`
#' suffix, e.g. `"red_tint50"`
#'
#' @param color_name Character vector of color names.
#' @param base_colors Optional named character vector of base colors. If `NULL`,
#'   colors are read from the package configuration.
#'
#' @return A named character vector of hex colour codes.
#' @export
ro_color <- function(color_name = "hemelblauw", base_colors = NULL) {
  check_character(color_name)
  check_character(base_colors, allow_null = TRUE)

  # If no manual overwrite colors have been given, use the config instead.
  if (is.null(base_colors)) {
    base_colors <- .ro_env$base_colors
  }

  # Named vector of all built-in R colors as hex
  r_colors <- stats::setNames(
    vapply(
      grDevices::colors(),
      function(x) {
        rgb <- grDevices::col2rgb(x)
        tolower(grDevices::rgb(rgb[1], rgb[2], rgb[3], maxColorValue = 255))
      },
      character(1)
    ),
    grDevices::colors()
  )

  # Combine institute palette with base R colors
  all_base_colors <- c(base_colors, r_colors)

  # Strip optional _tintXX suffix
  pattern <- "^(.+)_tint([0-9]+)$"
  has_tint <- grepl(pattern, color_name)
  base_name <- ifelse(
    has_tint,
    sub(pattern, "\\1", color_name),
    color_name
  )

  # Detect valid hex colors
  is_hex_color <- grepl("^#(?:[A-Fa-f0-9]{3}|[A-Fa-f0-9]{6})$", base_name)

  # If input consists only of plain hex colors without tint, return them directly
  if (all(is_hex_color & !has_tint)) {
    return(unname(tolower(base_name)))
  }

  # Add supplied hex colors as named colors so tint_from_names() can use them
  if (any(is_hex_color)) {
    hex_colors <- stats::setNames(
      base_name[is_hex_color],
      base_name[is_hex_color]
    )
    all_base_colors <- c(all_base_colors, hex_colors)
  }

  call_loc <- rlang::current_env()

  tryCatch(
    {
      for (color in base_name) {
        rlang::arg_match(color, names(all_base_colors))
      }
    },
    error = function(x) {
      cli_abort(
        c(
          "!" = "{.arg color_name} must be one of, or a (combined) list of, {length(base_colors)} institute- or {length(r_colors)} base R color names or valid hex codes, optionally followed by a `_tintXX` suffix."
        ),
        call = call_loc
      )
    }
  )

  tint_from_names(color_name, base_colors = all_base_colors)
}

#' Resolve color names to hex codes
#'
#' @param palette_names Character vector of color names, with or without a
#'   `_tint<number>` suffix.
#' @param base_colors Optional named character vector of base colors. If `NULL`,
#'   colors are read from the package configuration.
#'
#' @return A named character vector of hex colors.
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

  tolower(grDevices::rgb(mixed[1], mixed[2], mixed[3], maxColorValue = 255))
}
