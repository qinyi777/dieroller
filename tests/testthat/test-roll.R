context("Check roll arguments")

#roll
test_that("check_times with ok vectors", {
  expect_true(check_times(times = 500))
})
