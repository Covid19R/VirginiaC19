refresh_col_names <-
  c("date",
    "location_code",
    "location",
    "vdh_health_district",
    "value",
    "deaths",
    "hospitalizations",
    "location_type",
    "data_type",
    "data_url",
    "data_set_name",
    "package_name",
    "function_to_get_data",
    "has_geospatial_info",
    "location_code_type"
  )

test_that("Check if columns still populate!", {
  
  res <- refresh_VirginiaC19()
  
  expect_named(res, refresh_col_names)
  
  expect_true(
    "Chesterfield" %in% unique(res$location)
  )  
})
