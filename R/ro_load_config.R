#' Load config settings
#'
#' This function loads the settings into al list, which are
#' defined in the config yaml file in inst/extdata.
#'
#' @section Dependencies:
#'  * \link[ROvis.utils]{ro_color}
#'  * \link[ROvis.utils]{ro_color_palette}
#' @return A 2-level list with configurations (colors, fonts).
#' @keywords internal
#' @export
#' @examples
#' ROvis.utils::ro_load_config()
ro_load_config <- function() {
  # retrieve style
  style <- get_config_value()

  # CRUCIAL: Use system.file() without the 'inst/' prefix
  yaml_path <- system.file(file.path("extdata", paste0(style,".yaml")), package = "ROvis.utils")
  if (yaml_path == "") {
    stop(paste0("Configuration file '", style,".yaml' not found in the package resources."))
  }

  # load style from yaml
  config <- yaml::read_yaml(yaml_path)
  return(config)
}

