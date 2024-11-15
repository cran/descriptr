test_that("output from ds_cross_table matches expected results", {
  k <- ds_cross_table(hsb, ses, female)

  expect_equal(k$utility$obs, 200)

  expect_equal(k$utility$var2_levels, c("0", "1"))

  expect_equal(k$utility$var1_levels, c("1", "2", "3"))

  expect_equal(k$utility$varnames, c("ses", "female"))

  expect_equal(k$utility$twowaytable[, 1], c("1", "2", "3"))

  expect_equal(k$utility$twowaytable[, 2], c("15", "47", "29"))

  expect_equal(k$utility$twowaytable[, 3], c("32", "48", "29"))

  expect_equal(k$utility$twowaytable[, 4], c("47", "95", "58"))

  expect_equal(colnames(k$utility$twowaytable), c("", "0", "1", "rowtotal"))

  expect_equal(k$utility$percent_table[, 1], c(0.075, 0.235, 0.145, 0.455), ignore_attr = TRUE)

  expect_equal(k$utility$percent_table[, 2], c(0.160, 0.240, 0.145, 0.545), ignore_attr = TRUE)

  expect_equal(k$utility$percent_table[, 3], c(0.235, 0.475, 0.290, 1.000), ignore_attr = TRUE)

  expect_equal(colnames(k$utility$percent_table), c("0", "1", "row_pct"))

  expect_equal(rownames(k$utility$percent_table), c("", "", "", "col_pct"))

  expect_equal(k$utility$row_percent[, 1], c(0.32, 0.49, 0.50))

  expect_equal(k$utility$row_percent[, 2], c(0.68, 0.51, 0.50))

  expect_equal(k$utility$row_percent[3, 3], c(0.29), ignore_attr = TRUE)

  expect_equal(k$utility$column_percent[, 1], c(0.16, 0.52, 0.32))

  expect_equal(k$utility$column_percent[, 2], c(0.29, 0.44, 0.27))

  expect_equal(unname(k$utility$column_totals), c(91, 109))

  expect_equal(unname(k$utility$percent_column), c(0.455, 0.545))
})


test_that("ouput from plot.ds_cross_table matches expected output", {
  skip_on_cran()

  # cross table
  k <- ds_cross_table(mtcarz, cyl, gear)

  # bar plot
  p1 <- plot(k)
  vdiffr::expect_doppelganger("cross_bar", p1$plot)

  # stacked bar plot
  p2 <- plot(k, stacked = TRUE)
  vdiffr::expect_doppelganger("cross_bar_stacked", p2$plot)

  # proportional bar plot
  p3 <- plot(k, proportional = TRUE)
  vdiffr::expect_doppelganger("cross_bar_proportional", p3$plot)
})

test_that("ds_cross_table throws appropriate error", {

  x <- 1:10
  expect_error(ds_cross_table(x), 'data must be a `data.frame` or `tibble`.')
  expect_error(ds_cross_table(mtcarz, mpg, cyl), 'mpg is not a categorical variable. The function expects an object of type `factor` but mpg is of type `numeric`.')
  expect_error(ds_cross_table(mtcarz, cyl, disp), 'disp is not a categorical variable. The function expects an object of type `factor` but disp is of type `numeric`.')

})

test_that("output from ds_twoway_table is as expected", {
  actual <- sum(ds_twoway_table(mtcarz, cyl, gear)[[3]])
  expected <- 32
  expect_equal(actual, expected)
})

test_that("ds_twoway_table throws appropriate error", {

  x <- 1:10
  expect_error(ds_twoway_table(x), 'data must be a `data.frame` or `tibble`.')
  expect_error(ds_twoway_table(mtcarz, mpg, cyl), 'mpg is not a categorical variable. The function expects an object of type `factor` but mpg is of type `numeric`.')
  expect_error(ds_twoway_table(mtcarz, cyl, disp), 'disp is not a categorical variable. The function expects an object of type `factor` but disp is of type `numeric`.')

})


test_that("output from ds_cross_table is as expected", {
  expect_snapshot(ds_cross_table(mtcarz, cyl, gear))
})

test_that("get_names works as expected", {

  mt       <- mtcarz["gear"]
  mt$gear  <- as.character(mt$gear)
  actual   <- get_names(mt$gear)
  expected <- c("3", "4", "5")
  expect_equal(actual, expected)

})
