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

test_that("check_font_available aborts for an unavailable custom font", {
  expect_error(
    ro_check_if_font_available("ThisFontDoesNotExist_XYZ"),
    "Can't find"
  )
})
