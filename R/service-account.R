#' Create a token for a Google service account.
#'
#' @param scopes List of scopes required for the returned token.
#' @param path Path to the downloaded JSON file
#' @param ... Additional arguments (ignored)
#' @return A `httr::TokenServiceAccount` or `NULL`.
#' @export
credentials_service_account <- function(scopes, path = "", ...) {
  "!DEBUG trying credentials_service account"
  if (!endsWith(path, ".json")) {
    stop("Path must end in .json")
  }
  info <- jsonlite::fromJSON(path)
  token <- httr::TokenServiceAccount$new(
    endpoint = NULL,
    secrets = info,
    params = list(scope = scopes)
  )
  if (is.null(token$credentials$access_token) ||
      !nzchar(token$credentials$access_token)) {
    NULL
  } else {
    message("email: ", info[["client_email"]])
    token
  }
}
