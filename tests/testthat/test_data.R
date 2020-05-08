test_that(desc = "Test the dates", {
  
  expect_equal(base::class(VirginiaC19$date) == "Date", TRUE)
  expect_equal(base::min(VirginiaC19$date) == as.Date("2020-03-17"), TRUE)
})


test_that(desc = "Test the structure", {
  
  expect_equal(base::ncol(VirginiaC19) == 15, TRUE)
  
})