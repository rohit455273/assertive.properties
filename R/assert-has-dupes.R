#' @rdname has_duplicates
#' @export
assert_has_duplicates <- function(x)
{                                                                
  msg <- gettextf("%s has no duplicates.", get_name_in_parent(x))
  assert_engine(has_duplicates, x, msg = msg)
}

#' @rdname has_duplicates
#' @export
assert_has_no_duplicates <- function(x)
{                                                                
  msg <- gettextf("%s has duplicates.", get_name_in_parent(x))
  assert_engine(has_no_duplicates, x, msg = msg)
}
