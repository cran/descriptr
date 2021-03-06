% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ds-group-summary-interact.R
\name{ds_group_summary_interact}
\alias{ds_group_summary_interact}
\title{Category wise descriptive statistics}
\usage{
ds_group_summary_interact(data, cvar, ...)
}
\arguments{
\item{data}{A \code{data.frame} or a \code{tibble}.}

\item{cvar}{Column in \code{data}; continuous variable.}

\item{...}{Columns in \code{data}; categorical variables.}
}
\description{
Descriptive statistics of a continuous variable for the combination of levels
of two or more categorical variables.
}
\examples{
ds_group_summary_interact(mtcarz, mpg, cyl, gear)

}
\seealso{
\code{\link{ds_group_summary}}
}
