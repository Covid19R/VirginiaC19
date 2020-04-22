#---------------------------
# Code to update VirginiaC19 Datasets
#---------------------------

setwd(here::here())
source("./R/refresh_VirginiaC19.R")
source("./R/utils.R")

VirginiaC19_cases <- refresh_YOURPACKAGENAME()
VirginiaC19_sex <- refresh_YOURPACKAGENAME()
VirginiaC19_race <- refresh_YOURPACKAGENAME()
VirginiaC19_AgeGroup <- refresh_YOURPACKAGENAME()

#check it
head(YOURPACKAGENAME_demo)

#test with testthat

#deploy data
usethis::use_data(YOURPACKAGENAME_demo, overwrite = TRUE)
