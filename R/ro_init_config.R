#' Initialize and read the config that holds all huisstijl colors
#' TODO: Add logic for env file determinations.
#' TODO: Add logic for fallback to custom location?
#' @param institute
#' @param config_path
#'
#' @returns config with institute colors.
ro_init_config <- function(
  institute = "RIVM",
  config_path = "inst/extdata/RO_instituten.yaml"
) {
  # TODO: Add extra logic to get and set env, and pick config file / location from there.

  whole_config <- yaml::read_yaml(config_path)
  .ro_env$institute_config <- whole_config[[institute]]
  .ro_env$base_colors <- .ro_env$institute_config$colors$base_colors

  .ro_env$institute_config
}
