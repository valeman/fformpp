% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deriv_prior.R
\name{deriv_prior}
\alias{deriv_prior}
\title{Gradient for priors}
\usage{
deriv_prior(B, priorArgs, hessMethod)
}
\arguments{
\item{B}{"matrix".
The paramter that need to be added with a prior. The gradient and hessian are
calculated conditional on B. B should be always an one-column matrix,}

\item{priorArgs}{"list".
priorArgs$prior_type: when prior_type is set to "mvnorm", you have to provide
priorArgs$mean: "matrix", the mean of parameter, mu0 should be always an
one-column matrix;
priorArgs$covariance: "matrix", the covariance matrix. A g-prior can be
constructed by setting it to X'X, where X is the covariates matrix.;
priorArgs$shrinkage: "numeric", the shrinkage for the covariance.}
}
\value{
"list". The gradient and hessian matrix, see below.
}
\description{
A collection of gradient for common priors.
}
\details{
The parameters after "..." should be matched exactly.
}
\note{
First version: Tue Mar 30 09:33:23 CEST 2010;
      Current:       Wed Sep 15 14:39:01 CEST 2010.
TODO:
}
\author{
Feng Li, Department of Statistics, Stockholm University, Sweden.
}
