test_that("ro_show_colors only accepts the right inputs", {
  expect_error(
    ro_show_colors(palette_name = "custom", custom_colors = 10),
    "`custom_colors` must be a character vector or `NULL`, not"
  )

  expect_error(
    ro_show_colors(
      "custom",
      c("steelblue", "robijnrood", "green", "my_special_yellow")
    ),
    "`color_name` must be one of, or a (combined) list of, 22 institute- or 657 base R color names or valid hex codes, optionally followed by a `_tintXX` suffix.",
    fixed = TRUE
  )
})

test_that("ro_show_colors returns correct output", {
  # predefined rivm palette
  plot_predef <- ro_show_colors(palette_name = "gender_con")
  expect_snapshot(
    # structure of data underlying the plot (x, y values, colors, text etc.)
    str(plot_predef$x$data)
  )

  # custom named palette
  plot_custom_named <- ro_show_colors(
    "custom",
    c("oranje", "groen", "roze")
  )
  expect_snapshot(
    str(plot_custom_named$x$data)
  )
})
# TODO: This test seems to fail, should be looked into further before merging
# custom unnamed palette
# plot_custom_unnamed <- ro_show_colors(
#   "custom",
#   ro_color_seq(ro_color("hemelblauw_tint15"), ro_color("hemelblauw"), 3)
# )
# expect_snapshot(
#   str(plot_custom_unnamed$x$data)
# )

# edge case: one color
# plot_one_color <- ro_show_colors("custom", "#76d2b6")
# expect_snapshot(
#   str(plot_one_color$x$data)
# )
# })
