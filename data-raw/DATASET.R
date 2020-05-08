#---------------------------
# Code to update VirginiaC19 Datasets
#---------------------------

setwd(here::here())
source("./R/refresh_VirginiaC19.R")
source("./R/utils.R")

VirginiaC19 <- refresh_VirginiaC19()


#check it
head(VirginiaC19)

#test with testthat

#deploy data
usethis::use_data(VirginiaC19, overwrite = TRUE)
