% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_R.R
\name{sample_R}
\alias{sample_R}
\title{Get a sample of plausible Reproduction Numbers}
\usage{
sample_R(x, n = 100)
}
\arguments{
\item{x}{An \code{earlyR} object.}

\item{n}{The number of R values to sample.}
}
\description{
This function derives a sample of plausible R values from an \code{earlyR}
object (as returned by \code{\link{get_R}}). The probability of each returned
values of R are directly proportional to their likelihood.
}
\examples{

if (require(incidence)) {
 x <- incidence(c(1, 5, 5, 12, 45, 65))
 plot(x)
 res <- get_R(x, disease = "ebola")
 res
 plot(res)

 sample_R(res, 10)
 hist(sample_R(res, 1000), col = "grey", border = "white")
}

}
\author{
Thibaut Jombart \email{thibautjombart@gmail.com}
}
