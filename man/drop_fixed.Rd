% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary.R
\name{drop_fixed}
\alias{drop_fixed}
\alias{add_fixed}
\title{Drop or Add Fixed Dimensions for Multinomial Probabilities/Frequencies}
\usage{
drop_fixed(x, options = 2)

add_fixed(x, options = 2, sum = 1)
}
\arguments{
\item{x}{a vector (typically \code{k}, \code{n}, or \code{prior}) or
a matrix (typically \code{A} or \code{V}), in which case the fixed dimensions
are dropped/added column-wise.}

\item{options}{number of observable categories/probabilities for each item
type/multinomial distribution, e.g., \code{c(3,2)} for a ternary and binary item.}

\item{sum}{a vector that determines the fixed sum in each multinomial condition.
By default, probabilities are assumed that sum to one.
If frequencies \code{n} are provided, use \code{sum=n}.}
}
\description{
Switches between two representation of polytopes for multinomial probabilities
(whether the fixed parameters are included).
}
\examples{
######## bi- and trinomial (a1,a2, b1,b2,b3)
# vectors with frequencies:
drop_fixed(c(3, 7, 4, 1, 5), options = c(2, 3))
add_fixed(c(3, 4, 1),
  options = c(2, 3),
  sum = c(10, 10)
)

# matrices with probabilities:
V <- matrix(c(
  1, 0, 0,
  1, .5, .5,
  0, 1, 0
), 3, byrow = TRUE)
V2 <- add_fixed(V, options = c(2, 3))
V2
drop_fixed(V2, c(2, 3))
}
