\name{http_condition}
\alias{http_condition}
\title{Generate a classed http condition.}
\usage{
http_condition(x, type, message = NULL, call = sys.call(-1))
}
\arguments{
  \item{x}{a response, or numeric http code (or other
  object with \code{status_code} method)}

  \item{type}{type of condition to generate. Must be one of
  error, warning or message.}

  \item{message}{The text of the message. If \code{NULL},
  the default, will use \code{\link{http_status}} to
  generate the message.}

  \item{call}{The call stored in the condition object.}
}
\value{
An S3 object that inherits from (e.g.) condition,
\code{type}, http_error, http_400 and http_404.
}
\description{
This function generate S3 condition objects which are
passed to \code{\link{stop}} or \code{\link{warning}} to
generate classes warnings and error. These can be used in
conjunction with \code{\link{tryCatch}} to respond
differently to different type of failure.
}
\examples{
# You can use tryCatch to take different actions based on the type
# of error. Note that tryCatch will call the first handler that
# matches any classes of the condition, not the best matching, so
# always list handlers from most specific to least specific
f <- function(url) {
  tryCatch(stop_for_status(GET(url)),
    http_404 = function(c) "That url doesn't exist",
    http_403 = function(c) "You need to authenticate!",
    http_400 = function(c) "You made a mistake!",
    http_500 = function(c) "The server screwed up"
  )
}
f("http://httpbin.org/status/404")
f("http://httpbin.org/status/403")
f("http://httpbin.org/status/505")
}
\seealso{
\url{http://adv-r.had.co.nz/Exceptions-Debugging.html#condition-handling}
for more details about R's condition handling model
}
\keyword{internal}

