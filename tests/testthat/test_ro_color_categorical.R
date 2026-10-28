test_that("colors_categorical returns correct output", {
  expect_identical(
    ro_color_categorical(),
    c(
      "#007bc7",
      "#ffb612",
      "#ca005d",
      "#542b6f",
      "#6abca3",
      "#e17000",
      "#39870c",
      "#673327"
    )
  )
})
