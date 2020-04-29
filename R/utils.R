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

# iso.location <- data.frame(
#   location_code = c("CA-AB", "CA-BC", "CA-MB", "CA-NB", "CA-NL", "CA-NS", "CA-ON", "CA-PE", "CA-QC", "CA-SK", "CA-NT", "CA-NU", "CA-YT"),
#   location_code_type = "iso_3166_2",
#   province = c("Alberta", "BC", "Monitoba", "New Brunswick", "NL", "Nova Scotia", "Ontario", "PEI", "Quebec", "Saskatchewan", "NWT", "Repatriated", "Yukon")
# )

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
      dplyr::mutate(
        location_type = "county",
        data_type = "cases_total",
        data_url = "https://www.vdh.virginia.gov/coronavirus/",
        location_code_type = 'fips_code'
      ) %>%
      dplyr::select(
        report_date,
        location_code = fips,
        locality,
        vdh_health_district,
        total_cases,
        hospitalizations,
        deaths
      ) %>%
      dplyr::arrange(
        report_date
      ) 
  )
}

