
<!-- README.md is generated from README.Rmd. Please edit that file -->
descriptr
=========

[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/descriptr)](https://cran.r-project.org/package=descriptr) [![Travis-CI Build Status](https://travis-ci.org/rsquaredacademy/descriptr.svg?branch=master)](https://travis-ci.org/rsquaredacademy/descriptr) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/rsquaredacademy/descriptr?branch=master&svg=true)](https://ci.appveyor.com/project/rsquaredacademy/descriptr) [![Coverage Status](https://img.shields.io/codecov/c/github/rsquaredacademy/descriptr/master.svg)](https://codecov.io/github/rsquaredacademy/descriptr?branch=master)

Overview
--------

The goal of descriptr is to ease the process of generating descriptive statistics and exploring statistical distributions.

Installation
------------

``` r
# install descriptr from CRAN
install.packages("descriptr")

# the development version from github
# install.packages("devtools")
devtools::install_github("rsquaredacademy/descriptr")
```

Usage
-----

### Descriptive Statistics

The following functions are available for generating descriptive statistics:

-   `summary_stats`
-   `cross_table`
-   `freq_table`
-   `freq_cont`
-   `group_summary`
-   `oway_tables`
-   `tway_tables`

### Explore Distributions

Functions have been defined to visualize and compute percentiles/probabilities for the following distributions:

-   Normal
-   Binomial
-   Chi Square
-   F
-   t

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
