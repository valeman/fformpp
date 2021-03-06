## Boundary check for the moving knots model

## it is easy to check with in 2D. But how to manage it in >3D space.
## Check if weather each dim if fit.

## The usual way shoud be check if new convex hull is same as the old convex hull by
## adding new data in. But that is always time comsumming. But if we know the boundary of
## each dimmesion,  that can be easier.
##' Description
##'
##' @export
knots_check_boundary <- function(P4X, method = "singular")
  {
    ## Check if the design matrix is singular
    ## Very hight tolerance but efficient.
    if(tolower(method) ==  "singular")
      {
        if(missing(P4X))
          {
            stop("Missing input \"P4X\" (X'X where X is the design matrix)")
          }
        singular <- is.singular(P4X)
        if(any(TRUE  == singular))
          {
            out <- "bad"
          }
        else
          {
            out <- "ok"
          }
      }
    else if (tolower(method) ==  "simple")
      { ## FIXME: This is far from perfect. but very fast.
      }
    else if(tolower(method) == "mv")
      {
        ## Villani's Suggestion
        ## Time consuming
      }

    return(out)
  }
