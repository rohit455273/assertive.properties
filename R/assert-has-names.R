#' @rdname has_names
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_colnames <- function(x)
{                                       
  msg <- gettextf("%s has no column names.", get_name_in_parent(x))
  assert_engine(has_colnames, x, msg = msg)
}

#' @rdname has_names
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_dimnames <- function(x)
{                                       
  msg <- gettextf("%s has no dimension names.", get_name_in_parent(x))
  assert_engine(has_dimnames, x, msg = msg)
}

#' @rdname has_names
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_names <- function(x)
{                                                             
  msg <- gettextf("%s has no names.", get_name_in_parent(x))
  assert_engine(has_names, x, msg = msg)
}

#' @rdname has_names
#' @importFrom assertive.base get_name_in_parent
#' @importFrom assertive.base assert_engine
#' @export
assert_has_rownames <- function(x)
{                                                             
  msg <- gettextf("%s has no row names.", get_name_in_parent(x))
  assert_engine(has_rownames, x, msg = msg)
}
