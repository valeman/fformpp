##' Check if a square matrix is computational singular
##'
##' @author Feng Li, Department of Statistics, Stockholm University, Sweden.
##' @note Created: Mon Jan 02 17:58:12 CET 2012;
##'       Current: Mon Jan 02 17:58:37 CET 2012.
##' @export
is.singular <- function(X, tol = .Machine$double.eps*1e3)
{
  if(is.matrix(X))
  {
    rcond.out <- rcond(X)
  }
  else
  {
    rcond.out <- Matrix::rcond(X)
  }

  if(rcond.out < tol)
  {
    singular = TRUE
  }
  else
  {
    singular  = FALSE
  }
  return(singular)
}
