#' @rdname has_attributes
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_all_attributes <- function(x, attrs)
{                                       
  msg <- gettextf(
    "%s does not have all the attributes %s.", 
    get_name_in_parent(x), 
    toString(sQuote(attrs))
  )
  assert_engine(has_attributes, x, attrs = attrs, msg = msg)
}

#' @rdname has_attributes
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_any_attributes <- function(x, attrs)
{                                       
  msg <- gettextf(
    "%s does not have any of the attributes %s.", 
    get_name_in_parent(x), 
    toString(sQuote(attrs))
    )
  assert_engine(has_attributes, x, attrs = attrs, msg = msg, what = "any")
}

