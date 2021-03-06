% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/formats.R
\name{guess_format_id}
\alias{guess_format_id}
\title{Guess format from filename}
\usage{
guess_format_id(filenames)
}
\arguments{
\item{filenames}{(character) A vector of filenames.}
}
\value{
(character) DataONE format IDs.
}
\description{
Guess format from filename for a vector of filenames.
}
\examples{
formatid <- guess_format_id("temperature_data.csv")
}
