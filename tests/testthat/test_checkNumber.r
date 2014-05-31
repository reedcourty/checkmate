context("checkNumber")

test_that("checkNumber", {
  expect_false(testNumber(integer(0)))
  expect_false(testNumber(NULL))

  expect_true(testNumber(1L))
  expect_true(testNumber(1.))
  expect_false(testNumber(NA))
  expect_true(testNumber(NA_real_, na.ok = TRUE))
  expect_false(testNumber(1:2))
  expect_false(testNumber(""))

  expect_true(assertNumber(1))
  expect_error(assertNumber(2+3i), "number")
})