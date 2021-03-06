% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{find_newest_object}
\alias{find_newest_object}
\title{Find the newest object within the given set of objects}
\usage{
find_newest_object(node, identifiers, rows = 1000)
}
\arguments{
\item{node}{(MNode/CNode) The Member Node to query.}

\item{identifiers}{(character) One or more identifiers.}

\item{rows}{(numeric) Optional. Specify the size of the query result set.}
}
\value{
(character) The PID of the newest object. In the case of a tie (very
unlikely) the first element, in natural order, is returned.
}
\description{
Find the newest object, based on dateUploaded, within the given set of objects.
}
\examples{
\dontrun{
mn <- MNode(...)
find_newest_object(mn, c("PIDX", "PIDY", "PIDZ"))
}
}
