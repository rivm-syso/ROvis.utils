test_that("ro_get_color_palette only accepts accepts the right inputs", {
  # only an existing rivm color palette
  expect_error(
    ro_get_color_palette("greysss"),
    'Did you mean "greys"?'
  )

  expect_error(
    ro_get_color_palette("purple"),
    '`palette_name` must be one of "full", "categorical", "gender_con", "gender_uncon", "greys", "custom", "Custom", or "CUSTOM", not "purple"'
  )
})

test_that("ro_get_color_palette returns correct output", {
  expect_identical(
    ro_get_color_palette("categorical"),
    c(
      hemelblauw = "#007bc7",
      donkergeel = "#ffb612",
      robijnrood = "#ca005d",
      paars_tint90 = "#542b6f",
      mintgroen_tint110 = "#6abca3",
      oranje = "#e17000",
      groen = "#39870c",
      donkerbruin = "#673327"
    )
  )
})
