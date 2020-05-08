test_that(desc = "Test the dates", {
  
  expect_equal(base::class(VirginiaC19$date) == "Date", TRUE)
  expect_equal(base::min(VirginiaC19$date) == as.Date("2020-03-17"), TRUE)
})


test_that(desc = "Test the structure", {
  
  expect_equal(base::ncol(VirginiaC19) == 15, TRUE)
  
})

test_that(desc = "Test get_info function", {
  
  info <- get_info_VirginiaC19()
  
  expect_equal(base::ncol(info) == 10, TRUE)
})

test_that(desc = "Test refresh function", {
  
  info <- refresh_VirginiaC19()
  
  expect_equal(base::ncol(info) == 15, TRUE)
})
