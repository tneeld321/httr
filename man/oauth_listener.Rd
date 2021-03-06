\name{oauth_listener}
\alias{oauth_listener}
\title{Create a webserver to listen for OAuth callback.}
\usage{
oauth_listener(request_url)
}
\arguments{
  \item{request_url}{the url to send the browser to}
}
\description{
This opens a web browser pointing to \code{request_url},
and opens a webserver on port 1410 to listen to the
reponse.  The redirect url for should be either set
previously (during the OAuth authentication) dance or
supplied as a parameter to the url.  See
\code{\link{oauth1.0_token}} and
\code{\link{oauth2.0_token}} for examples of both
techniques.
}
\details{
This function should not normally be called directly by the
user.
}
\keyword{internal}

