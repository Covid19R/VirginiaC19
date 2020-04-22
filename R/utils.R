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

url.cases <- "http://www.vdh.virginia.gov/content/uploads/sites/182/2020/03/VDH-COVID-19-PublicUseDataset-Cases.csv"

agg.cases <- readr::read_csv(url.cases)


# Testing
library(tidyverse)

url.cases <- "http://www.vdh.virginia.gov/content/uploads/sites/182/2020/03/VDH-COVID-19-PublicUseDataset-Cases.csv"

base.4.21 <- readr::read_csv(url.cases,
                             col_types =
                               readr::cols(
                                 "Report Date" = readr::col_date(format = "%m/%d/%Y")
                               )
) %>%
  janitor::clean_names() %>%
  dplyr::select(
    date = report_date,
    everything()
  )

test.4.22 <- base.4.21 %>%
  mutate(date = as.Date("2020-4-21"))

new.data <- 