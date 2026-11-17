test_that("check_font_available returns the font when it is installed", {
  expect_identical(ro_check_if_font_available("Verdana"), "Verdana")
})

test_that("check_font_available returns Verdana when the RO font is absent", {
  local_mocked_bindings(
    system_fonts = function() {
      data.frame(family = "Verdana", stringsAsFactors = FALSE)
    }
  )
  expect_message(
    ro_check_if_font_available("RijksoverheidSansWebText"),
    "Fall-back font"
  )
  result <- suppressMessages(ro_check_if_font_available("RijksoverheidSansWebText"))
  expect_identical(result, "Verdana")
})

test_that("check_font_available falls back to Arial when RO font and Verdana are absent", {
  local_mocked_bindings(
    system_fonts = function() {
      data.frame(family = "Arial", stringsAsFactors = FALSE)
    }
  )
  expect_message(
    ro_check_if_font_available("RijksoverheidSansWebText"),
    "Fall-back font"
  )
  result <- suppressMessages(ro_check_if_font_available("RijksoverheidSansWebText"))
  expect_identical(result, "Arial")
})

test_that("check_font_available falls back to the first system font when RO, Verdana, and Arial are absent", {
  local_mocked_bindings(
    system_fonts = function() {
      data.frame(family = c("DejaVu Sans", "Liberation Sans"), stringsAsFactors = FALSE)
    }
  )
  expect_message(
    ro_check_if_font_available("RijksoverheidSansWebText"),
    "neither.*Verdana.*Arial"
  )
  result <- suppressMessages(ro_check_if_font_available("RijksoverheidSansWebText"))
  expect_identical(result, "DejaVu Sans")
})

test_that("check_font_available aborts when the RO font is absent and no font at all is installed", {
  local_mocked_bindings(
    system_fonts = function() {
      data.frame(family = character(0), stringsAsFactors = FALSE)
    }
  )
  expect_error(
    ro_check_if_font_available("RijksoverheidSansWebText"),
    "Can't find"
  )
})

test_that("check_font_available aborts for an unavailable non-RO font", {
  expect_error(
    ro_check_if_font_available("ThisFontDoesNotExist_XYZ"),
    "Can't find"
  )
})
