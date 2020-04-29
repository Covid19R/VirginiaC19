#' Refresh the Virginia COVID-19 Data.
#'
#' @description Updates the Virginia COVID-19 cases.
#'
#' @details This package scrapes the state of Virginia reported cases. 
#'
#' @param verbose Should messages be displayed? 
#'
#' @source \href{https://github.com/debusklaneml/VirginiaC19}{VirginiaC19}
#' @source \href{https://github.com/Covid19R/documentation}{covid19R documentation}
#'
#' @return A tibble object
#' * date - The date in YYYY-MM-DD form
#' * location - The name of the location as provided by the data source. XXXXX
#' * location_type - The type of location using the covid19R controlled vocabulary. SAY MORE ABOUT THIS
#' * location_code - A standardized location code using a national or international standard. ADD MORE
#' * location_code_type The type of standardized location code being used according to the covid19R controlled vocabulary. Here we use `XXXX`
#' * data_type - the type of data in that given row using the covid19R controlled vocabulary. Includes WHAT DATA TYPES ARE HERE?
#' * value - number of cases of each data type
#' @export 
#'
#' @examples
#' \dontrun{
#' refresh_VirginiaC19()
#' }

refresh_VirginiaC19 <- function(verbose = TRUE) {
  if (verbose) message(glue::glue("Downloading raw data from {url}."))
  
  read_data() %>%
    clean_data()
}


