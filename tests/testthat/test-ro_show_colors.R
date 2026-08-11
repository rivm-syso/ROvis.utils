test_that("ro_show_colors only accepts the right inputs", {
  expect_error(
    ro_show_colors("custom"),
    "If `palette_name` is 'custom', `custom_colors` should be a character"
  )

  expect_error(
    ro_show_colors("custom", c("#007bc7", "#ffb612", "#ca005d", "552c6f")),
    "should be a \\(vector of\\) hex color code"
  )
})

test_that("ro_show_colors returns correct output", {
  # predefined rivm palette
  plot_predef <- ro_show_colors("gender_con")
  expect_snapshot(
    # structure of data underlying the plot (x, y values, colors, text etc.)
    str(plot_predef$x$data)
  )

  # custom named palette
  plot_custom_named <- ro_show_colors(
    "custom",
    c(oranje = ro_color("oranje"), groen = ro_color("groen"), roze = ro_color("roze"))
  )
  expect_snapshot(
    str(plot_custom_named$x$data)
  )

  # custom unnamed palette
  plot_custom_unnamed <- ro_show_colors(
    "custom",
    ro_color_seq(ro_color("hemelblauw_tint15"), ro_color("hemelblauw"), 3)
  )
  expect_snapshot(
    str(plot_custom_unnamed$x$data)
  )

  # edge case: one color
  plot_one_color <- ro_show_colors("custom", "#76d2b6")
  expect_snapshot(
    str(plot_one_color$x$data)
  )
})
