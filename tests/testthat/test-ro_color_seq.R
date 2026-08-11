test_that("color_seq only accepts the right inputs", {
  expect_error(
    ro_color_seq("#ca005d", 12, 5),
    "`high` must be a character vector, not the number 12"
  )

  expect_error(
    ro_color_seq("ffb612", "#ca005d", 5),
    "should be a \\(vector of\\) hex color code"
  )

  expect_error(
    ro_color_seq("#ffb612", "#ca005d"),
    "`n` must be a whole number, not absent."
  )

  expect_error(
    ro_color_seq(ro_color("hemelblauw"), ro_color("hemelblauw_tint60"), "5"),
    '`n` must be a whole number, not the string "5".'
  )

  expect_error(
    ro_color_seq(ro_color("robijnrood"), ro_color("hemelblauw"), 7.5),
    "`n` must be a whole number, not the number 7.5."
  )
})


test_that("color_seq returns the right output", {
  # nolint start: expect_length_linter
  # length of seq is the same as n
  expect_identical(
    length(ro_color_seq(ro_color("robijnrood"), ro_color("robijnrood_tint30"), n = 7)),
    7L
  )
  # nolint end: expect_length_linter

  # all returned colors in the sequence are hex codes
  color_vec <- ro_color_seq(ro_color("donkergeel"), ro_color("donkergeel_tint15"), n = 5)
  expect_true(
    all(grepl("^#[a-fA-F0-9]{6}$", color_vec))
  )

  # returns correct output
  expect_identical(
    ro_color_seq(ro_color("robijnrood_tint15"), ro_color("robijnrood"), 5),
    c("#F7D9E7", "#F1AFC2", "#E7839F", "#DA547D", "#CA005D")
  )
})
