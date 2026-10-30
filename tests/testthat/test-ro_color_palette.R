test_that("ro_color_palette only accepts accepts the right inputs", {
  # only an existing rivm color palette
  expect_error(
    ro_color_palette("greysss"),
    'Did you mean "greys"?'
  )

  expect_error(
    ro_color_palette("purple"),
    '`palette_name` must be one of "full", "categorical", "gender_con", "gender_unc", or "greys", not "purple".'
  )
})

### no color names anymore
test_that("ro_color_palette returns correct output", {
  expect_identical(
    ro_color_palette("categorical"),
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
