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
  color_list <- list(
    lintblauw          = "#154273",
    paars              = "#42145f",
    paars_tint90       = "#552c6f",
    violet             = "#a90061",
    robijnrood         = "#ca005d",
    roze               = "#f092cd",
    roze_tint110       = "#d883b9",
    rood               = "#d52b1e",
    oranje             = "#e17000",
    donkergeel         = "#ffb612",
    geel               = "#f9e11e",
    donkerbruin        = "#673327",
    bruin              = "#94710a",
    donkergroen        = "#275937",
    groen              = "#39870c",
    mosgroen           = "#777b00",
    mintgroen          = "#76d2b6",
    mintgroen_tint110  = "#6abda4",
    donkerblauw        = "#01689b",
    hemelblauw         = "#007bc7",
    lichtblauw         = "#8fcae7",
    lichtblauw_tint110 = "#81b6d0",

    # greys
    grijs_1            = "#f3f3f3",
    grijs_2            = "#e6e6e6",
    grijs_3            = "#cccccc",
    grijs_4            = "#b4b4b4",
    grijs_5            = "#999999",
    grijs_6            = "#696969",
    grijs_7            = "#535353",
    grijs_8            = "#3c3c3c",

    # tint 75%
    lintblauw_tint75   = "#4f7196",
    paars_tint75       = "#714f87",
    violet_tint75      = "#be4088",
    robijnrood_tint75  = "#d74085",
    roze_tint75        = "#f4add9",
    rood_tint75        = "#df6056",
    oranje_tint75      = "#e89440",
    donkergeel_tint75  = "#fdc84d",
    geel_tint75        = "#fae856",
    donkerbruin_tint75 = "#8d665d",
    bruin_tint75       = "#af9447",
    donkergroen_tint75 = "#5d8269",
    groen_tint75       = "#6aa549",
    mosgroen_tint75    = "#999c40",
    mintgroen_tint75   = "#98ddc8",
    donkerblauw_tint75 = "#408eb4",
    hemelblauw_tint75  = "#409cd5",
    lichtblauw_tint75  = "#abd7ed",

    # tint 60%
    lintblauw_tint60   = "#738eab",
    paars_tint60       = "#8d729f",
    violet_tint60      = "#cb66a0",
    robijnrood_tint60  = "#df669d",
    roze_tint60        = "#f6bde1",
    rood_tint60        = "#e67f78",
    oranje_tint60      = "#eda966",
    donkergeel_tint60  = "#fdd370",
    geel_tint60        = "#fbed78",
    donkerbruin_tint60 = "#a3847d",
    bruin_tint60       = "#bfa96c",
    donkergroen_tint60 = "#7d9b87",
    groen_tint60       = "#88b76d",
    mosgroen_tint60    = "#adaf66",
    mintgroen_tint60   = "#ace4d3",
    donkerblauw_tint60 = "#66a4c3",
    hemelblauw_tint60  = "#66afdd",
    lichtblauw_tint60  = "#bcdff0",

    # tint 45%
    lintblauw_tint45   = "#95a9c0",
    paars_tint45       = "#a995b7",
    violet_tint45      = "#d88cb7",
    robijnrood_tint45  = "#e78cb6",
    roze_tint45        = "#f8cee8",
    rood_tint45        = "#ec9f99",
    oranje_tint45      = "#f1be8c",
    donkergeel_tint45  = "#fdde94",
    geel_tint45        = "#fcf199",
    donkerbruin_tint45 = "#baa39d",
    bruin_tint45       = "#cfbf90",
    donkergroen_tint45 = "#9db4a4",
    groen_tint45       = "#a5c991",
    mosgroen_tint45    = "#c1c38c",
    mintgroen_tint45   = "#c1ebde",
    donkerblauw_tint45 = "#8cbbd2",
    hemelblauw_tint45  = "#8cc3e6",
    lichtblauw_tint45  = "#cce7f4",

    # tint 30%
    lintblauw_tint30   = "#b8c6d5",
    paars_tint30       = "#c6b8ce",
    violet_tint30      = "#e5b2cf",
    robijnrood_tint30  = "#efb2ce",
    roze_tint30        = "#fbdef0",
    rood_tint30        = "#f2bfbb",
    oranje_tint30      = "#f6d4b2",
    donkergeel_tint30  = "#fee9b7",
    geel_tint30        = "#fdf6bb",
    donkerbruin_tint30 = "#d1c1bd",
    bruin_tint30       = "#dfd4b5",
    donkergroen_tint30 = "#bdcdc2",
    groen_tint30       = "#c3dbb5",
    mosgroen_tint30    = "#d6d7b2",
    mintgroen_tint30   = "#d5f1e9",
    donkerblauw_tint30 = "#b2d1e1",
    hemelblauw_tint30  = "#b2d7ee",
    lichtblauw_tint30  = "#ddeff8",

    # tint 15%
    lintblauw_tint15   = "#dce3ea",
    paars_tint15       = "#e3dce7",
    violet_tint15      = "#f2d9e7",
    robijnrood_tint15  = "#f7d9e7",
    roze_tint15        = "#fdeff8",
    rood_tint15        = "#f9dfdd",
    oranje_tint15      = "#fbead9",
    donkergeel_tint15  = "#fef4db",
    geel_tint15        = "#fefbdd",
    donkerbruin_tint15 = "#e8e0df",
    bruin_tint15       = "#efeada",
    donkergroen_tint15 = "#dee6e1",
    groen_tint15       = "#e1edda",
    mosgroen_tint15    = "#ebebd9",
    mintgroen_tint15   = "#eaf8f4",
    donkerblauw_tint15 = "#d9e8f0",
    hemelblauw_tint15  = "#d9ebf7",
    lichtblauw_tint15  = "#eef7fc"
  )


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
