\name{upload_file}
\alias{upload_file}
\title{Upload a file with \code{\link{POST}} or \code{\link{PUT}}.}
\usage{
upload_file(path)
}
\arguments{
  \item{path}{path to file}
}
\description{
This is a tiny wrapper for \pkg{RCurl}'s
\code{\link[RCurl]{fileUpload}}.
}
\examples{
POST("http://httpbin.org/post",
  body = list(y = upload_file(system.file("CITATION"))))
}

