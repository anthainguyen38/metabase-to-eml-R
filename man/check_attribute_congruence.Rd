% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_attributes_congruence.R
\name{check_attribute_congruence}
\alias{check_attribute_congruence}
\title{Check metadata-data congruence for attributes.}
\usage{
check_attribute_congruence(
  meta_list,
  dataset_id,
  entity,
  file_dir = getwd(),
  filename = ""
)
}
\arguments{
\item{meta_list}{(character) A list of dataframes containing metadata returned by \code{\link{get_meta}}.}

\item{dataset_id}{(numeric) A dataset ID.}

\item{entity}{(numeric) An entity number.}

\item{file_dir}{(character) Path to directory containing flat files (data files). Defaults to current R working directory.}

\item{filename}{(character) Filename. Defaults to "", in which case the entity metadata will be read to find filename.}
}
\value{
(character) Character vector of warnings to be used in a stop() or warning() call.
}
\description{
Check for congruence between metadata and data in attribute names, enumeration, and missing value codes. \code{\link{create_entity}} uses this function to check for congruence and issues warnings. Note that the checks are written in order, and if one fails other checks down the line will not be performed, since for example, it's difficult to check for enumeration congruence if attribute names do not match up in data and metadata. Note that some checks are not yet implemented: (1) check whether a missing code present in data is not present in metadata -- this one is challenging because naturally many data values will not be listed in a missing codes list. The function might throw a warning if you use a numeric code for a character column, since R will read the entire data column as character and 9999 != "9999.00".
}
