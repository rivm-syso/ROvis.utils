test_that("ro_color only accepts existing color_name", {
  expect_error(
    ro_color("robijndrood"),
    'Did you mean "robijnrood"?'
  )

  expect_identical(
    ro_color("donkergeel"),
    "#ffb612"
  )
})
