% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pnpp_experiment-classify.R
\name{has_signif_negative_cluster}
\alias{has_signif_negative_cluster}
\title{Does a well have a statistically significant number of negative droplets?}
\usage{
has_signif_negative_cluster(plate, neg, pos)
}
\arguments{
\item{plate}{A ddPCR plate}

\item{neg}{Number of negative (or mutant) drops}

\item{pos}{Number of positive (or wildtype) drops}
}
\value{
\code{TRUE} if the number of negative drops is statistically
significant, \code{FALSE} otherwise.
}
\description{
Classify a well as having a significant negative cluster (eg. a mutant well)
or not using a binomial test.\cr\cr
We can call a well as mutant if it is statistically significantly more than
1% with a p-val < 0.01. For example, if there are 500 total drops and 7
mutant drops, then the mutant frequency is 1.4%, but is it statistically
significantly more than 1%?
P(x >= 7)
  = 1 - P(x <= 7) + P(x = 7)
  = 1 - pbinom(7, 500, .01) + dbinom(7, 500, .01)
  = 0.237
  > 0.01
So not statistically significantly enough, so we say it's a wildtype well.
But if there are 5000 drops and 70 mutant drops (same 1.4% frequency but
with higher absolute numbers), then
P(x >= 70) = 1 - pbinom(70, 5000, .01) + dbinom(70, 5000, .01) = 0.004
So this is indeed significant, and this well would be deemed mutant.
}
\keyword{internal}
