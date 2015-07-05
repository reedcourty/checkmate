context("checkInt")

test_that("checkInt", {
  myobj = 1L
  expect_succ(Int, myobj)
  myobj = 1.1
  expect_fail(Int, myobj)

  expect_false(testInt(integer(0)))
  expect_false(testInt(NULL))

  expect_true(testInt(1L))
  expect_true(testInt(1.))
  expect_false(testInt(NA))
  expect_true(testInt(NA_real_, na.ok = TRUE))
  expect_false(testInt(1:2))
  expect_false(testInt(""))

  expect_error(assertInt(2+3i), "integerish")
})


test_that("bounds of vectors with only missings are not checked", {
  expect_true(checkInt(NA, na.ok = TRUE, lower = 1))
  expect_true(checkInt(NA_character_, na.ok = TRUE, upper = 10))
  expect_fail(Int, 0L, lower = 1L)
  expect_fail(Int, 100L, upper = 10L)
})
