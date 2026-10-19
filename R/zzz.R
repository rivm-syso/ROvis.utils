.ro_env <- new.env(parent = emptyenv())

.onLoad <- function(libname, pkgname) {
  ro_init_config()
}
