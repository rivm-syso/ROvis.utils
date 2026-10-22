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

  opt_val <- getOption("rovis.style")
  env_val <- Sys.getenv("ROVIS_STYLE")
  style <- "default"


  # 1. Check environment
  if (env_val != "") {
    style <- env_val
  }

  # 2. Check option
  if (!is.null(opt_val)) {
    style <- opt_val
  }

  # Check if style exists
  if (!file.exists(system.file(paste0(style,".yaml"), package = "ROvis.utils"))){
    # non-existing -> default
    print(paste0(style, " style does not exist. Default style is used."))
    style <- "default"
  }

  return(style)
}

#' My Main Package Function
#'
#' This is an example of a user-facing function that utilizes the tiered
#' configuration settings.
#'
#' @param setting The configuration setting to use. Defaults to the value
#'   returned by \code{get_config_value()}.
#'
#' @return Invisibly returns the setting that was used.
#' @export
#'
#' @examples
#' \dontrun{
#' # Uses default value
#' my_package_function()
#'
#' # Uses environment variable if set
#' Sys.setenv(MYPACKAGE_MY_VAR = "env_override")
#' my_package_function()
#' Sys.unsetenv("MYPACKAGE_MY_VAR")
#'
#' # Uses R option (highest priority)
#' options(mypackage.my_var = "option_override")
#' my_package_function()
#' options(mypackage.my_var = NULL) # Reset
#' }
my_package_function <- function(setting = get_config_value()) {
  message("The configuration currently in use is: ", setting)

  # Your actual package logic goes here

  invisible(setting)
}
