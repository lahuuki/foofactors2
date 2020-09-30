#' Bind multiple factors together
#'
#' @param ... one or more [`factor`][base::factor()]
#'
#' @return a combined `factor()` that merges the unique levels in the `factor`
#' @export
#'
#' @examples
#' #' #' ## Create 2 factors
#' a <- factor(c("character", "hits", "your", "eyeballs"))
#' b <- factor(c("but", "integer", "where it", "counts"))
#' c <- factor(c("always","count","your","eyeballs","too"))
#'
#' ## run fbind
#' fbind(a, b)
#' fbind(a, b, c)
fbind <- function(...) {
  l <- list(...)
  factor(unlist(lapply(l, as.character), use.names = FALSE))
}
