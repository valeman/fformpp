% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locate.knots.R
\name{locate.knots}
\alias{locate.knots}
\title{Locate knots in a m-space using Villani(2009)'s algorithm.}
\usage{
locate.knots(x, e, RadiusShrink)
}
\arguments{
\item{x}{"matrix".
The data matrix without intercept.}

\item{e}{"numeric".
The radius for the Mahalanobis e-ball.}

\item{RadiusShrink}{"numeric".
The radius shrinkage factor for the Mahalanobis e-ball}
}
\value{
"list"
}
\description{
Locate knots in a m-space using Villani(2009)'s algorithm.
}
\details{
This is the algorithm for determining the knots locations for a give global radius e>0
and a local radius skrinkage factor. The details can be foudn in Villani (2009)
}
\note{
First version:  Wed Mar 10 14:03:31  CET 2010;
      Current:        Sat Sep 18 18:57:24 CEST 2010.
}
\references{
Appendix C. in Villani et al (2009)
}
\author{
Feng Li, Department of Statistics, Stockholm University, Sweden.
}
