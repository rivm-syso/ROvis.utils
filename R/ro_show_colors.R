#' Show RIVM color palette
#' @section Dependencies:
#'  * \link{ro_color_palette}
#'
#' @description
#' `r ro_group_badge(c('DT', 'echarts4r', 'ggplot2', 'gt', 'plotly'))`
#' Plots the full RIVM color palette, a specified RIVM color palette, or a custom color palette.
#' Hoover over the palette to view the hex color codes.
#'
#' @param palette_name Character. Default="full".
#' Can be one of:
#' * The name of an RIVM palette. Available palettes are:
#'   * `full`: all 18 RIVM colors (full color, 100% tint)
#'   * `categorical`: best palette for visualizing categories (no variation in tint, good contrast differences)
#'   * `gender_con`: gender conventional
#'   * `gender_unc`: gender unconventional
#'   * `greys`: all 7 grey tints
#' * 'custom'. use this if you want to specify your own custom_colors.
#' @param custom_colors Character or vector of characters. Should be hexadecimal code(s) (#RRGGBB).
#'
#' It is advised to use the other ROvis color functions. To access the hex color
#' code of a specific color, use the \link{ro_color} function.
#' To access a vector of hex color codes of the categorical palette, use the ROvis
#' function \link{ro_color_categorical}.
#' @family ggplot2
#' @examples
#' \dontrun{
#' ro_show_colors()
#' ro_show_colors("categorical")
#' ro_show_colors("custom", c(ro_color("donkergeel"), ro_color("paars_tint90"), ro_color("mosgroen")))
#' ro_show_colors("custom", "#76d2b6")
#' ro_show_colors("custom", c(
#'   donkergeel = ro_color("donkergeel"), paars_tint90 = ro_color("paars_tint90"),
#'   mosgroen = ro_color("mosgroen")
#' ))
#' ro_show_colors("custom", ro_color_seq(ro_color("hemelblauw_tint15"), ro_color("hemelblauw"), 5))
#' ro_show_colors("custom", ro_color_seq(ro_color("robijnrood_tint15"), ro_color("robijnrood"), 12))
#' }
#'
#' @return Color palette in the Viewer pane.
#' @export
ro_show_colors <- function(palette_name = "full", custom_colors = NULL) {
  check_installed("plotly")

  palette_list <- get_color_palette(palette_name, custom_colors)

  palette_df <- ro_show_colors_get_df(palette_list)

  fig_ggplot <- ro_gg_create_palette(palette_df, palette_name, palette_list)

  fig_ggplot |>
    ggplotly(tooltip = "text")
}

### HELPERS --------------------------------------------------------------------

#' Return a color palette
#'
#' @description This function returns a predefined color palette based on the specified palette name.
#' Custom color palettes can also be provided using hexadecimal color codes. If `custom_colors`
#' is unnamed, this function names the colors by position (from 1 to `length(custom_colors)`).
#'
#' @param palette_name A string specifying the name of the palette. Valid options
#' are "full", "categorical", "gender_con", "gender_unc", "greys", and "custom".
#' @param custom_colors An optional character vector of hexadecimal color codes.
#' This parameter is required if `palette_name` is "custom".
#'
#' @return A named character vector of hexadecimal color codes representing the selected color palette.
#'
#' @keywords internal
#' @family ggplot2
#' @examples
#' # Examples with a predefined palette
#' (ROvis.utils:::get_color_palette("full"))
#' (ROvis.utils:::get_color_palette("gender_unc"))
#'
#' # Example with a custom palette using hexcodes directly
#' (ROvis.utils:::get_color_palette("custom", c("#FF5733", "#33FF57", "#3357FF")))
#'
#' # Example using 'ro_color()'
#' (ROvis.utils:::get_color_palette("custom", ro_color_seq(ro_color("robijnrood_tint15"),
#' ro_color("robijnrood"), 12)))
#'
get_color_palette <- function(palette_name, custom_colors = NULL) {
  palette_name <- arg_match(
    palette_name,
    c(
      "full",
      "categorical",
      "gender_con",
      "gender_unc",
      "greys",
      "custom"
    ),
    error_call = caller_env()
  )

  if (palette_name == "custom") {
    # Error message when one of custom_colors is not a hex code
    if (!is_null(custom_colors)) {
      ro_color_validate(custom_colors)
    } else {
      # Error message when palette_name = "custom", but custom_colors is empty
      cli_abort(c(
        "If {.var palette_name} is 'custom', {.var custom_colors} should be a
        character (vector) with hexadecimal code(s), for example '#007bc7' or {.code ro_color('hemelblauw')}."
      ))
    }

    if (is_named(custom_colors)) {
      palette_color <- custom_colors
    } else {
      palette_color <- custom_colors
      names(palette_color) <- seq_along(custom_colors)
    }
  } else {
    if (!is_null(custom_colors)) {
      cli_abort(c(
        "Use {.code palette_name = 'custom'} if you would like to show a custom palette."
      ))
    }

    palette_color <- ro_color_palette(palette_name)
  }

  return(palette_color)
}


#' Create a data frame from a color palette
#'
#' @description This function takes a color palette and returns a data frame containing the
#' color names and their corresponding hex values. If the palette has named colors,
#' the data frame will include these names and ensure the correct order.
#' If the palette is unnamed, it will generate a sequence of numbers to label the colors.
#'
#' @param palette A named character vector of hex color codes.
#'
#' @return A tibble (data frame) with columns `number`, `name` and `hex`.
#'
#' @keywords internal
#' @family ggplot2
#' @examples
#' ROvis.utils:::ro_show_colors_get_df(c(red = "#FF0000", green = "#00FF00", blue = "#0000FF"))
#' ROvis.utils:::ro_show_colors_get_df(c("1" = ro_color("donkerblauw"), "2" = ro_color("robijnrood"),
#'  "3" = ro_color("mintgroen")))
ro_show_colors_get_df <- function(palette) {
  palette_df <- tibble(
    name = names(palette),
    hex = unname(palette)
  ) |>
    rowid_to_column("number") |>
    mutate(number = .data$number |> as.character())

  return(palette_df)
}


#' Create a tile plot of a palette with ggplot
#'
#' @param df dataframe with 3 character columns: number, name and hex
#' @param palette_name Character. Name of the palette to use in plot title
#' @param palette named character vector with hex values to use in scale_fill_manual
#'
#' @return ggplot object
#'
#' @keywords internal
#' @family ggplot2
#' @examples
#' \dontrun{
#' palette_name <- "categorical"
#' palette <- ROvis.utils:::get_color_palette(palette_name)
#' df <- ROvis.utils:::ro_show_colors_get_df(palette)
#' ROvis.utils:::ro_gg_create_palette(df, palette_name, palette)
#' }
ro_gg_create_palette <- function(df, palette_name, palette) {
  plot_palette <- ggplot(
    df,
    aes(
      x = 1,
      y = .data$number,
      fill = .data$name,
      label = .data$name,
      text = str_c("<b> Color number ", .data$number, ": ", .data$name, " (", .data$hex, ")</b>")
    )
  ) +
    geom_tile() +
    geom_text(color = "#FFFFFF") +
    labs(title = str_c("Palette: ", palette_name)) +
    # reorder y-axis so color 1 is the top tile instead of bottom one
    scale_y_discrete(limits = rev) +
    scale_fill_manual(values = palette) +
    # remove all graph elements, except for the tiles
    theme(
      legend.position = "none",
      axis.line = element_blank(),
      axis.ticks = element_blank(),
      axis.text = element_blank(),
      axis.title = element_blank(),
      axis.title.x = element_blank(),
      panel.grid.major.y = element_blank(),
      plot.title = element_text(hjust = 0.5)
    )

  return(plot_palette)
}
