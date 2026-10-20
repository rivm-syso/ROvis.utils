test_that("colors_categorical returns correct output", {
  expect_identical(
    ro_color_categorical(),
    c("#984ea3", "#ff7f00", "#ffff33")
  )
})
