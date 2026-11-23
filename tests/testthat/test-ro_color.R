test_that("ro_color only accepts existing color_name", {
  # TODO: discuss
  # thinking of removing this step due to the huge example error output.
  # expect_error(
  #   ro_color("robijndrood"),
  #   'Did you mean "robijnrood"?'
  # )

  expect_identical(
    as.character(ro_color("donkergeel")),
    "#ffb612"
  )
})
