#' Initialize and read the config that holds all huisstijl colors
#' TODO: Add logic for env file determinations.
#' TODO: Add logic for fallback to custom location?
#' @param institute
#' @param config_path
#'
#' @returns config with institute colors.
ro_init_config <- function(
  institute = "default",
  config_path = "inst/extdata/RO_instituten.yaml"
) {
  #TODO: Add extra logic to get and set env, and pick config file / location from there.

  whole_config <- yaml::read_yaml(config_path)

  institute_config <- whole_config[[institute]]
  return(institute_config)
}
