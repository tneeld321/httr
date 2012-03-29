#' Give verbose output.
#' 
#' A verbose connection provides much more information about the flow of
#' information between the client and server.
#'
#' @param x a handle
#' @param value a logical vector of length 1.
#' @export
#' @examples
#' b <- new_bin()
#' GET(handle = b, config = verbose())
verbose <- function() config(verbose = TRUE)