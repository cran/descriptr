% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ds-describe.R
\name{ds_hmean}
\alias{ds_hmean}
\title{Harmonic Mean}
\usage{
ds_hmean(x, data = NULL, na.rm = FALSE, ...)
}
\arguments{
\item{x}{a numeric vector.}

\item{data}{a \code{data.frame} or \code{tibble}.}

\item{na.rm}{a logical value indicating whether NA values should be stripped before the computation proceeds.}

\item{...}{further arguments passed to or from other methods}
}
\description{
Computes the harmonic mean
}
\examples{
ds_hmean(mtcars$mpg)
ds_hmean(mpg, mtcars)
}
\seealso{
\code{\link{ds_gmean}} \code{\link[base]{mean}}
}
