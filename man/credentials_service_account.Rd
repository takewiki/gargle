% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/service-account.R
\name{credentials_service_account}
\alias{credentials_service_account}
\title{Create a token for a Google service account.}
\usage{
credentials_service_account(scopes, path = "", ...)
}
\arguments{
\item{scopes}{List of scopes required for the returned token.}

\item{path}{Path to the downloaded JSON file}

\item{...}{Additional arguments (ignored)}
}
\value{
A \code{httr::TokenServiceAccount} or \code{NULL}.
}
\description{
Create a token for a Google service account.
}
