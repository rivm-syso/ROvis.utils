#' Return list with hexcodes palette
#'
#' colors are defined in a yaml in inst/
#'
#' `r ro_group_badge(c('echarts4r', 'ggplot2', 'plotly'))`
#'
#' @section Dependencies:
#'  * \link[ROvis.utils]{ro_color}
#'
#' @param palette_name one of:
#' * "full": full color palette (full color)
#' * "categorical": best palette for visualizing categories (no variation in tint, good contrast differences)
#' * "gender_con": gender conventional
#' * "gender_unc": gender unconventional
#' * "greys": all grey tints
#' @family ggplot2
#' @family ggplotly
#' @family plotly
#' @return named vector with hex color codes
#' @export
#' @examples
#' ROvis.utils::ro_color_palette("categorical")
ro_color_palette <- function(palette_name) {
  # retrieve style
  style <- get_config_value()

  # CRUCIAL: Use system.file() without the 'inst/' prefix
  yaml_path <- system.file(paste0(style,".yaml"), package = "ROvis.utils")
  if (yaml_path == "") {
    stop("Configuration file 'config.yml' not found in the package resources.")
  }

  # load style from yaml
  palette <- yaml::read_yaml(yaml_path)
  #create palette_list
  palette_list <- list(
    full = palette$palette
    , categorical = palette$categorical
    , gender_con = palette$gender_con
    , gender_unc = palette$gender_unc
    , greys = palette$greys
  )
  palette_name <- arg_match(palette_name, names(palette_list), error_call = caller_env())

  return(palette_list[[palette_name]] |> unlist())
}

