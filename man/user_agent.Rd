\name{user_agent}
\alias{user_agent}
\title{Set user agent.}
\usage{
user_agent(agent)
}
\arguments{
  \item{agent}{string giving user agent}
}
\description{
Override the default RCurl user agent of \code{NULL}
}
\examples{
GET("http://httpbin.org/user-agent")
GET("http://httpbin.org/user-agent", user_agent("httr"))
}
\seealso{
Other config: \code{\link{accept_json}},
\code{\link{accept_xml}}, \code{\link{add_headers}},
\code{\link{authenticate}}, \code{\link{config}},
\code{\link{set_cookies}}, \code{\link{timeout}},
\code{\link{use_proxy}}, \code{\link{verbose}}
}

