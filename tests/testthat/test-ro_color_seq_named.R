test_that("color_seq_named return the right output", {
  # Standard values
  cat_names_vec <- c("<=99", "100 t/m 199", "200 t/m 299", "300 t/m 399", "400+", "Geen meldingen")
  low_col <- "robijnrood"
  high_col <- "robijnrood_tint15"

  # nolint start: expect_length_linter
  # Checks output length
  expect_identical(
    length(cat_names_vec),
    length(ro_color_seq(ro_color(low_col), ro_color(high_col), length(unique(cat_names_vec))))
  )
  # nolint end: expect_length_linter

  # Check if it throws an error when wrong color is provided
  expect_error(
    ro_color_seq_named(cat_names = cat_names_vec, low_col = "BLOO")
  )

  expect_error(
    # Expect error that at least 2 categories are needed
    ro_color_seq_named(c("category_1"))
  )
})
