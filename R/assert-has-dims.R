#' @rdname has_cols
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_cols <- function(x)
{                                       
  msg <- gettextf("%s has no columns.", get_name_in_parent(x))
  assert_engine(has_cols, x, msg = msg)
}

#' @rdname has_dims
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_dims <- function(x)
{                                                                
  msg <- gettextf("%s has no dimensions attribute.", get_name_in_parent(x))
  assert_engine(has_dims, x, msg = msg)
}

#' @rdname has_cols
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_rows <- function(x)
{                                                             
  msg <- gettextf("%s has no rows.", get_name_in_parent(x))
  assert_engine(has_rows, x, msg = msg)
}

