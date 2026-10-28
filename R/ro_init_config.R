#' Initialize and read ROvis huisstijl (brand) color configuration
#'
#' Initializes the ROvis configuration by reading a YAML file containing
#' institute-specific huisstijl colors. The institute and config file
#' location can be overridden via environment variables, unless
#' `ignore_env = TRUE`.
#'
#' Environment variables used:
#' \itemize{
#'   \item `ROVIS_STYLE` — institute name (e.g. `"Default"`, `"RIVM"`, ...)
#'   \item `ROVIS_STYLE_LOCATION` — path to the YAML config file
#' }
#'
#' @param institute Character string giving the institute name to use.
#'   Defaults to `"Default"`. Overridden by `ROVIS_STYLE` if present and
#'   `ignore_env = FALSE`.
#' @param config_path Character string giving the path to the YAML
#'   configuration file. Defaults to `"inst/extdata/RO_instituten.yaml"`.
#'   Overridden by `ROVIS_STYLE_LOCATION` if present and `ignore_env = FALSE`.
#' @param ignore_env Logical, default `FALSE`. If `TRUE`, environment
#'   variables are ignored and only the function arguments are used.
#'
#' @return Invisibly returns the institute-specific configuration list
#'   (colors, palettes, etc.), and also stores it in the package-level
#'   environment `.ro_env` as:
#'   \itemize{
#'     \item `.ro_env$institute_config`
#'     \item `.ro_env$base_colors`
#'     \item `.ro_env$palettes`
#'   }
#'
#' @examples
#' \dontrun{
#'   # Default institute and default config path
#'   ro_init_config()
#'
#'   # Explicit institute and config path
#'   ro_init_config(institute = "RIVM", config_path = "path/to/config.yaml")
#'
#'   # Ignore environment variables and use only function arguments
#'   ro_init_config(ignore_env = TRUE)
#' }
#'
#' @export
ro_init_config <- function(
  institute = "Default",
  config_path = "inst/extdata/RO_instituten.yaml",
  ignore_env = FALSE
) {
  cli_inform("Initialising ROvis...")

  # TODO: Add extra logic to get and set env, and pick config file / location from there.
  # TODO: Add logic for options chain

  if (ignore_env) {
    cli_inform(
      "{.var ignore_env} has been set to {.val TRUE}, ignoring possible environment variables..."
    )
    env_institute <- NA
    env_config_path <- NA
  } else {
    env_institute <- Sys.getenv("ROVIS_STYLE", unset = NA)
    env_config_path <- Sys.getenv("ROVIS_STYLE_LOCATION", unset = NA)
  }
  # Check if environment variables are detected, if so overwrite function variables.
  if (!is.na(env_config_path)) {
    cli_inform("Environment variable {.var ROVIS_STYLE_LOCATION} detected.")
    config_path <- env_custom_path
  }

  if (!is.na(env_institute)) {
    cli_inform(
      "Environment variable {.var ROVIS_STYLE} detected."
    )
    institute <- env_institute
  }

  tryCatch(
    {
      whole_config <- yaml::read_yaml(config_path)
    },
    error = function(e) {
      cli_abort(
        "Something went wrong whilst trying to read the config file in location {.val {config_path}}"
      )
    }
  )

  local_institute_config <- whole_config[[toupper(institute)]]

  if (is.null(local_institute_config)) {
    cli_inform(
      "{toupper(institute) cannot be found in the list, using DEFAULT instead}"
    )
    local_institute_config <- whole_config[["DEFAULT"]]
  }

  .ro_env$institute_config <- local_institute_config
  .ro_env$base_colors <- .ro_env$institute_config$colors$base_colors
  .ro_env$palettes <- .ro_env$institute_config$colors$palettes

  cli_inform(
    "Successfully initialized ROvis for institute: {.val {institute}}, from location {.file {config_path}}."
  )
  cli_inform(
    "Want to change institute? See documentation for {.fn ro_init_config}."
  )
}


#' Get ROVIS-related environment variables
#'
#' Convenience wrapper around [Sys.getenv()] to fetch
#' `ROVIS_STYLE` and `ROVIS_STYLE_LOCATION` (or any subset).
#'
#' @param var Character vector of environment variable names to fetch.
#'   Defaults to `c("ROVIS_STYLE", "ROVIS_STYLE_LOCATION")`.
#'
#' @return A named character vector with the values of the requested
#'   environment variables. Missing variables are returned as `NA`.
#'
#' To easily update these variables in your `.Renviron` file, you can use:
#' \preformatted{
#' usethis::edit_r_environ()
#' }
#' and then add or edit the lines:
#' \preformatted{
#' ROVIS_STYLE=...
#' ROVIS_STYLE_LOCATION=...
#' }
#' After saving, restart R so the changes take effect.
#'
#' @examples
#' get_rovis_env("ROVIS_STYLE")
#' get_rovis_env(c("ROVIS_STYLE", "ROVIS_STYLE_LOCATION"))
#'
#' @export
ro_get_config_env <- function(var = c("ROVIS_STYLE", "ROVIS_STYLE_LOCATION")) {
  Sys.getenv(var, unset = NA)
}
