#' Pipe operator
#'
#' See \code{magrittr::\link[magrittr:pipe]{\%>\%}} for details.
#'
#' @name %>%
#' @rdname pipe
#' @keywords internal
#' @export
#' @importFrom magrittr %>%
#' @usage lhs \%>\% rhs
NULL

url <- "https://www.vdh.virginia.gov/content/uploads/sites/182/2020/03/VDH-COVID-19-PublicUseDataset-Cases.csv"

read_data <- function() {
  suppressWarnings(
    readr::read_csv(
      url,
      col_types =
        readr::cols(
          "Report Date" = readr::col_date(format = "%m/%d/%Y")
        )
    ) %>%
    janitor::clean_names()
  )
}

clean_data <- function(tbl) {
  suppressWarnings(
    tbl %>%
      dplyr::select(
        date = report_date,
        location_code = fips,
        location = locality,
        vdh_health_district,
        value = total_cases,
        deaths,
        hospitalizations
      ) %>%
      dplyr::mutate(
        location_type = "county",
        data_type = "cases_total",
        data_url = "https://www.vdh.virginia.gov/coronavirus/",
        data_set_name = 'virginia_cases',
        package_name = 'VirginiaC19',
        function_to_get_data = 'refresh_VirginiaC19()',
        has_geospatial_info = FALSE,
        location_code_type = 'fips_code'
      ) %>%
      dplyr::arrange(
        date
      ) 
  )
}
