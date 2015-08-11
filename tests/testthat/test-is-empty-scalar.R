test_that("test.is_empty.empty_list.returns_true", {
  expect_true(is_empty(list()))
})

test_that("test.is_empty.empty_vector.returns_true", {
  expect_true(is_empty(numeric()))
})

test_that("test.is_empty.non_empty_vector.returns_false", {
  expect_false(is_empty(1))
})

test_that("test.is_empty.null.returns_true", {
  expect_true(is_empty(NULL))
})

test_that("test.is_non_empty.empty_list.returns_false", {
  expect_false(is_non_empty(list()))
})

test_that("test.is_non_empty.empty_vector.returns_false", {
  expect_false(is_non_empty(numeric()))
})

test_that("test.is_non_empty.non_empty_vector.returns_true", {
  expect_true(is_non_empty(1))
})

test_that("test.is_non_empty.null.returns_false", {
  expect_false(is_non_empty(NULL))
})

test_that("test.is_scalar.a_scalar.returns_true", {
  expect_true(is_scalar(1))
})

test_that("test.is_scalar.a_vector.returns_false", {
  expect_false(is_scalar(1:2))
})

test_that("test.is_scalar.empty.returns_false", {
  expect_false(is_scalar(numeric()))
}) 
