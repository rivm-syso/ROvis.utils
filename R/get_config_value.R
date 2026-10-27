#' Get Package Configuration Value
#'
#' This internal helper function retrieves a configuration value of the colors.
#' It checks three levels in the following order of priority:
#' \enumerate{
#'   \item Global R options (\code{options(rovis.style = ...)})
#'   \item System environment variables (\code{Sys.getenv("ROVIS_STYLE")})
#'   \item A default fallback variable defined within the package
#' }
#'
#' @return A character string representing the configuration value.
#' @keywords internal
get_config_value <- function() {

  # options value
  opt_val <- getOption("rovis.style")
  # environment value
  env_val <- Sys.getenv("ROVIS_STYLE")

  # default setting (rijksoverheid)
  style <- "ro"


  # 1. Check environment
  if (env_val != "") {
    style <- env_val
  }
  # 2. Check option
  if (!is.null(opt_val)) {
    style <- opt_val
  }

  # Check if style exists
  if (!file.exists(system.file(file.path("extdata", paste0(style,".yaml")), package = "ROvis.utils"))){
    # non-existing -> ro
    print(paste0(style, " style does not exist. Default (ro) style is used."))
    style <- "ro"
  }
  return(style)
}

