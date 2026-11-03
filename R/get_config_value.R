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
  opt_val_path <- getOption("rovis.style.path")
  # environment value
  env_val <- Sys.getenv("ROVIS_STYLE")
  env_val_path <- Sys.getenv("ROVIS_STYLE_PATH")

  # default setting (rijksoverheid)
  style <- "ro"
  stylePath_local <- NULL

  # 1. Check environment
  if (env_val != "") {
    style <- env_val
  }
  # 2. Check option
  if (!is.null(opt_val)) {
    style <- opt_val
  }

  # 1. Check environment local style
  if (env_val_path != "") {
    stylePath_local <- env_val_path
  }
  # 2. Check option
  if (!is.null(opt_val_path)) {
    stylePath_local <- opt_val_path
  }

  # set stylePath
  if (style == "local"){
    stylePath <- stylePath_local
  } else {
    # path to styling
    stylePath <- system.file(file.path("extdata", paste0(style,".yaml")), package = "ROvis.utils")
  }

  # Check if style exists
  if (style == "local" & is.null(stylePath)){
    print("No path is set for local style. Default (ro) style is used.")
    style <- "ro"
    stylePath <- system.file(file.path("extdata", paste0(style,".yaml")), package = "ROvis.utils")
  } else if (style == "local" & !file.exists(stylePath)){
    # non-existing -> ro
    print(paste0(stylePath, " does not exist. Default (ro) style is used."))
    style <- "ro"
    stylePath <- system.file(file.path("extdata", paste0(style,".yaml")), package = "ROvis.utils")
  } else if (style != "local" & !file.exists(stylePath)){
    # non-existing -> ro
    print(paste0(style, " style does not exist. Default (ro) style is used."))
    style <- "ro"
    stylePath <- system.file(file.path("extdata", paste0(style,".yaml")), package = "ROvis.utils")
  }

  style_list <- list(style = style, stylePath = stylePath)

  return(style_list)
}

