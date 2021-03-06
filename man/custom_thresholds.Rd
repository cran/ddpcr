% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/type-custom_thresholds.R
\name{custom_thresholds}
\alias{custom_thresholds}
\title{Plate type: custom thresholds}
\description{
The \code{custom_thresholds} plate type is used when you want to gate ddPCR
droplet data into four quadrants according to HEX and FAM values that you
manually set. All wells in the plate will use the same threshold values.
}
\details{
Plates with this type have only three analysis steps: \code{INITIALIZE},
\code{REMOVE_OUTLIERS}, and \code{CLASSIFY} (according to the custom thresholds).

Plates with this type have the following droplet clusters:
\code{UNDEFINED}, \code{OUTLIER}, \code{EMPTY} (bottom-left quadrant),
\code{X_POSITIVE} (bottom-right quadrant), \code{Y_POSITIVE} (top-left quadrant),
\code{BOTH_POSITIVE} (top-right quadrant).

\href{https://github.com/daattali/ddpcr#advanced-topic-3-creating-new-plate-types}{See the README} for
more information on plate types.
}
\examples{
\dontrun{
plate <- new_plate(sample_data_dir(), type = plate_types$custom_thresholds)
type(plate)
plate \%>\% analyze \%>\% plot
}
}
\seealso{
\code{\link[ddpcr]{plate_types}}\cr
\code{\link[ddpcr]{x_threshold}}\cr
\code{\link[ddpcr]{y_threshold}}\cr
\code{\link[ddpcr]{thresholds}}\cr
\code{\link[ddpcr]{analyze}} \cr
\code{\link[ddpcr]{remove_outliers}}\cr
\code{\link[ddpcr]{classify_thresholds}}
}
