% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_hilbig2014_heck2017.R
\docType{data}
\name{heck2017}
\alias{heck2017}
\title{Data: Multiattribute Decisions (Heck, Hilbig & Moshagen, 2017)}
\format{
A data frame 4 variables:
\describe{
  \item{\code{B1}}{Frequency of choosing Option B for Item Type 1}
  \item{\code{B2}}{Frequency of choosing Option B for Item Type 2}
  \item{\code{B3}}{Frequency of choosing Option B for Item Type 3}
  \item{\code{B4}}{Frequency of choosing Option B for Item Type 4}
}
}
\usage{
heck2017
}
\description{
Choice frequencies with multiattribute decisions across 4 item types (Heck, Hilbig & Moshagen, 2017).
}
\details{
Each participant made 40 choices for each of 4 item types with four cues
(with validities .9, .8, .7, and .6).
The pattern of cue values of Option A and and B was as follows:
\describe{
  \item{Item Type 1: }{A = (-1, 1, 1, -1) vs. B = (-1, -1, -1, -1)}
  \item{Item Type 2: }{A = (1, -1, -1, 1) vs. B = (-1, 1, -1, 1)}
  \item{Item Type 3: }{A = (-1, 1, 1, 1) vs. B = (-1, 1, 1, -1)}
  \item{Item Type 4: }{A = (1, -1, -1, -1) vs. B = (-1, 1, 1, -1)}
}
Raw data are available as \code{\link{heck2017_raw}}
}
\examples{
data(heck2017)
head(heck2017)
n <- rep(40, 4)

# cue validities and values
v <- c(.9, .8, .7, .6)
cueA <- matrix(
  c(
    -1, 1, 1, -1,
    1, -1, -1, 1,
    -1, 1, 1, 1,
    1, -1, -1, -1
  ),
  ncol = 4, byrow = TRUE
)
cueB <- matrix(
  c(
    -1, -1, -1, -1,
    -1, 1, -1, 1,
    -1, 1, 1, -1,
    -1, 1, 1, -1
  ),
  ncol = 4, byrow = TRUE
)

# get predictions
strategies <- c(
  "baseline", "WADDprob", "WADD",
  "TTBprob", "TTB", "EQW", "GUESS"
)
strats <- strategy_multiattribute(cueA, cueB, v, strategies)

# strategy classification with Bayes factor
strategy_postprob(heck2017[1:4, ], n, strats)
}
\references{
Heck, D. W., Hilbig, B. E., & Moshagen, M. (2017). From information processing to decisions: Formalizing and comparing probabilistic choice models. Cognitive Psychology, 96, 26-40. \doi{10.1016/j.cogpsych.2017.05.003}
}
\keyword{datasets}
