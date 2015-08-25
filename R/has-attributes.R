#' Does the input have any attributes?
#'
#' Checks to see if the input has any attributes.
#'
#' @param x Input to check.
#' @param .xname Not intended to be used directly.
#' @return \code{has_any_attributes} returns \code{TRUE} if \code{attributes(x)}
#' has length greater than zero. \code{has_attributes} returns a logical vector
#' that is \code{TRUE} whenever the specified attribute is not \code{NULL}.
#' 
#' \code{assert_has_all_attributes} and \code{assert_has_all_attributes} return
#' nothing but throw an error if \code{has_attributes} is not \code{TRUE}.
#' @examples
#' has_any_attributes(matrix(1:12, nrow = 3))
#' @export
has_any_attributes <- function(x, .xname = get_name_in_parent(x))
{
  if(!is_empty(attributes(x)))
  {
    return(false("%s has attributes.", .xname))
  }
  TRUE
}

#' Does the input have the specified attributes?
#'
#' Checks to see if the input has the specifed attributes.
#'
#' @param x Input to check.
#' @param attrs Desired attributes.
#' @param .xname Not intended to be used directly.
#' @param severity How severe should the consequences of the assertion be?  
#' Either \code{"stop"}, \code{"warning"}, \code{"message"}, or \code{"none"}.
#' @return \code{has_attributes} returns \code{TRUE} where \code{x} has
#' the attributes specified in \code{attrs}. \code{assert_has_terms} returns 
#' nothing but throws an error if \code{has_terms} is not \code{TRUE}.
#' @examples
#' x <- structure(c(a = 1), b = 2)
#' assert_has_all_attributes(x, c("names", "b"))
#' assert_has_any_attributes(x, c("names", "c"))
#' #These examples should fail.
#' assertive.base::dont_stop(assert_has_all_attributes(x, c("names", "c")))
#' @importFrom assertive.base bapply
#' @export
has_attributes <- function(x, attrs, .xname = get_name_in_parent(x))
{
  if(is_empty(attrs)) return(logical())
  bapply(
    attrs,
    function(at) is_not_null(attr(x, at))
  )
}
