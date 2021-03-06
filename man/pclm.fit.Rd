% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pclm_fit.R
\name{pclm.fit}
\alias{pclm.fit}
\title{Fit PCLM Models}
\usage{
pclm.fit(
  x,
  y,
  nlast,
  offset,
  out.step,
  verbose,
  lambda,
  kr,
  deg,
  diff,
  max.iter,
  tol,
  type
)
}
\arguments{
\item{x}{Vector containing the starting values of the input intervals/bins.
For example: if we have 3 bins \code{[0,5), [5,10) and [10, 15)},
\code{x} will be defined by the vector: \code{c(0, 5, 10)}.}

\item{y}{Vector with counts to be ungrouped. It must have the same dimension 
as \code{x}.}

\item{nlast}{Length of the last interval. In the example above \code{nlast} 
would be 5.}

\item{offset}{Optional offset term to calculate smooth mortality rates. 
A vector of the same length as x and y. See 
\insertCite{rizzi2015;textual}{ungroup} for further details.}

\item{out.step}{Length of estimated intervals in output. 
Values between 0.1 and 1 are accepted. Default: 1.}

\item{verbose}{Logical value. Indicates whether a progress bar should be 
shown or not.
Default: \code{FALSE}.}

\item{lambda}{Smoothing parameter to be used in pclm estimation.
If \code{lambda = NA} an algorithm will find the optimal values.}

\item{kr}{Knot ratio. Number of internal intervals used for defining 1 knot in 
B-spline basis construction. See \code{\link{MortSmooth_bbase}}.}

\item{deg}{Degree of the splines needed to create equally-spaced B-splines 
basis over an abscissa of data.}

\item{diff}{An integer indicating the order of differences of the components 
of PCLM coefficients. Default value: 2.}

\item{max.iter}{Maximal number of iterations used in fitting procedure.}

\item{tol}{Relative tolerance in PCLM fitting procedure. Default: 0.1\% i.e. 
the estimated aggregate bins should be in the 0.1\% error margin.}

\item{type}{Type of PCLM model. Options: \code{"1D", "2D"} for 
univariate and two-dimensional model respectively.}
}
\description{
This is an internal function used to estimate PCLM model. It is used by 
\code{\link{pclm}} and \code{\link{pclm2D}} functions
}
\keyword{internal}
