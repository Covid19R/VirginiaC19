Sys.setenv("R_TESTS" = "")
library(testthat)
library(VirginiaC19)

test_check("VirginiaC19")
