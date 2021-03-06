context("failures")

test_that("is_well_success works", {
  plate <- new_plate(sample_data_dir())
  
  expect_true(is_well_success(plate, "A01"))
  expect_true(is_well_success(plate, "A05"))
  expect_true(is_well_success(plate, "C01"))
  expect_true(is_well_success(plate, "F05"))
  expect_false(is_well_success(plate, "C05"))
})