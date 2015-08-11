#' Does the input have duplicates?
#'
#' Checks to see if the input has duplicates.
#'
#' @param x Input to check.
#' @param .xname Not intended to be used directly.
#' @return \code{has_duplicates} returns \code{TRUE} if\code{anyDuplicated} 
#' is \code{TRUE}.  \code{assert_has_duplicates} returns nothing but 
#' throws an error if \code{has_duplicates} is not \code{TRUE}. 
#' \code{has_no_duplicates} is the negation of \code{has_duplicates}.
##' @seealso \code{\link{anyDuplicated}}.
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base false
#' @export
has_duplicates <- function(x, .xname = get_name_in_parent(x))
{
  if(!anyDuplicated(x)) 
  {
    return(false("%s has no duplicates.", .xname))
  }
  TRUE
}

#' @rdname has_duplicates
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base false
#' @export
has_no_duplicates <- function(x, .xname = get_name_in_parent(x))
{
  if(anyDuplicated(x)) 
  {
    return(false("%s has duplicates.", .xname))
  }
  TRUE
}

