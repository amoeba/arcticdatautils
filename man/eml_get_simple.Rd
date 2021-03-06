% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eml.R
\name{eml_get_simple}
\alias{eml_get_simple}
\title{Get a simple list output from EML::eml_get()}
\usage{
eml_get_simple(doc, element)
}
\arguments{
\item{doc}{(list) An EML object or child/descendant object}

\item{element}{(character) Name of the element to be extracted. If
multiple occurrences are found, will extract all.}
}
\value{
out (vector) A list of values contained in element given
}
\description{
This function is a convenience wrapper around EML::eml_get() which
returns the output as a simple list as opposed to an object of type
\code{emld} by removing the attributes and context from the object. If an
element containing children is returned all of it's children will be
flattened into a named character vector. This function is best used
to extract values from elements that have no children.
}
\examples{
\dontrun{
cn <- dataone::CNode('PROD')
adc <- dataone::getMNode(cn,'urn:node:ARCTIC')

doc <- EML::read_eml(dataone::getObject(adc, 'doi:10.18739/A2S17SS1M'))

datatable_names <- eml_get_simple(doc$dataset$dataTable, element = "entityName")
}

}
