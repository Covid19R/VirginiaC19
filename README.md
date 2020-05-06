
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!--badges: start -->

[![Travis build
status](https://travis-ci.com/debusklaneml/VirginiaC19.svg?branch=master)](https://travis-ci.com/debusklaneml/VirginiaC19)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/VirginiaC19)](https://cran.r-project.org/package=VirginiaC19)
[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![License:
MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![GitHub
commit](https://img.shields.io/github/last-commit/debusklaneml/VirginiaC19)](https://github.com/debusklaneml/VirginiaC19/commit/master)

<!--badges: end -->

## VirginiaC19

The VirginiaC19 package harvests the data from the [Virginia Department
of Health](https://www.vdh.virginia.gov/coronavirus/). This package is
currently a component to the [Covid19R
project](https://github.com/Covid19R).

Get the latest development version from
[github](https://github.com/debusklaneml/VirginiaC19)

``` r
devtools::install_github("debusklaneml/VirginiaC19")
```

## Getting the Most Up to Date Data

To get the most updated data, run the following functions

``` r
new_data <- refresh_VirginiaC19()
```

## Columns

The data follows the [covid19R standard for tidy Covid-19
data](https://covid19r.github.io/documentation/data-format-standard.html).
