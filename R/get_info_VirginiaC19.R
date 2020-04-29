#' Get information about the dataset provided by VirginiaC19 package.
#'
#' @description Returns information about the datasets in this package for covid19R harvesting.
#'
#' @return a tibble of information about the datasets in this package.
#' @export get_info_VirginiaC19
#'
#' @examples
#' \dontrun{
#'
#' # get the dataset info from this package
#' get_info_VirginiaC19()
#' }
#'


#' @describeIn get_info_CanadaC19 Basic information about the dataset. 
get_info_VirginiaC19 <- function() {
  latest_data <-
    refresh_CanadaC19_cases(verbose = FALSE)
  
  dplyr::tibble(
    data_set_name = "VirginiaC19",
    package_name = "VirginiaC19",
    function_to_get_data = "refresh_VirginiaC19",
    data_details = "Open Source data from Virginia Department of Health. For more information, see https://www.vdh.virginia.gov/coronavirus/.",
    data_url = "https://www.vdh.virginia.gov/content/uploads/sites/182/2020/03/VDH-COVID-19-PublicUseDataset-Cases.csv",
    license_url = "https://github.com/debusklaneml/VirginiaC19/blob/master/LICENSE",
    data_types =
      latest_data %>%
      tidyr::drop_na(data_type) %>%
      dplyr::pull(data_type) %>%
      unique(),
    location_types =
      latest_data %>%
      tidyr::drop_na(location_type) %>%
      dplyr::pull(location_type) %>%
      unique(),
    spatial_extent = "state",
    has_geospatial_info = FALSE
  )
}



