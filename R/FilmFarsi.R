#' @title FilmFarsi
#'
#' @name FilmFarsi
#'
#' @aliases FilmFarsi
#'
#' @param name Name of the selected color palette. Currently the choices are \code{}, \code{}, and \code{}.
#'
#' @param n Number of the desired colors, from the selected color palette.
#'
#' @description The \code{FilmFarsi} provides a vector of colors, selected from the \code{\link[=FilmFarsiList]{FilmFarsiList}} palettes.
#'
#' @details The \code{FilmFarsi} provides a vector of colors.
#'
#' @return This function returns a vector of colors.
#'
#' @seealso \code{\link[=FilmFarsi]{FilmFarsi}}
#'
#' @export FilmFarsi
#'
#' @rdname FilmFarsi
#'
#' @export

FilmFarsi <- function(name, n) {

  palette <- FilmFarsiList[[name]]

  if (is.null(palette))
    stop("The color palette could not be found.")

  if (missing(n)) {
    n <- length(palette)
  }

  if (n > length(palette)) {
    stop("Number of requested colors is higher than number of colors within the pallete.")
  }

  palette <- palette[1:n]
  structure(palette, class = "palette", name = name)

  return(palette)
}
