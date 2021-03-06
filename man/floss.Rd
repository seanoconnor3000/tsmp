% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fluss.R
\name{floss}
\alias{floss}
\title{Fast Low-cost Online Semantic Segmentation (FLOSS)}
\usage{
floss(.mp, new_data, data_window, threshold = 1, exclusion_zone = NULL,
  chunk_size = NULL, keep_cac = TRUE)
}
\arguments{
\item{.mp}{.mp a TSMP object of class \code{MatrixProfile}.}

\item{new_data}{a \code{matrix}or \code{vector} of new observations.}

\item{data_window}{an \code{int}. Sets the size of the buffer used to keep track of semantic changes.}

\item{threshold}{a \code{number}. (Default is \code{1}). Set the maximum value for evaluating semantic changes.
This is data specific. It is advised to check what is 'normal' for your data.}

\item{exclusion_zone}{if a \code{number} will be used instead of embedded value. (Default is \code{NULL}).}

\item{chunk_size}{an \code{int} . (Default is \code{NULL}). Set the size of new data that will be added to
Floss in each iteration if \code{new_data} is large. If \code{NULL}, the size will be 50. This is not needed
if \code{new_data} is small, like 1 observation.}

\item{keep_cac}{a \code{logical}. (Default is \code{TRUE}). If set to \code{FALSE}, the \code{cac_final} will contain
only values within \code{data_window}}
}
\value{
Returns the input \code{.mp} object new names: \code{cac} the corrected arc count, \code{cac_final}the
combination of \code{cac} after repeated calls of \code{floss()}, \code{floss} with the location of semantic
changes and \code{floss_vals} with the normalized arc count value of the semantic change positions.
}
\description{
Fast Low-cost Online Semantic Segmentation (FLOSS)
}
\examples{
data <- mp_fluss_data$tilt_abp$data[1:1000]
new_data <- mp_fluss_data$tilt_abp$data[1001:1010]
new_data2 <- mp_fluss_data$tilt_abp$data[1011:1020]
w <- 80
mp <- tsmp(data, window_size = w, verbose = 0)
data_window <- 1000
mp <- floss(mp, new_data, data_window)
mp <- floss(mp, new_data2, data_window)
}
\references{
\itemize{
\item Gharghabi S, Ding Y, Yeh C-CM, Kamgar K, Ulanova L, Keogh E. Matrix Profile VIII:
Domain Agnostic Online Semantic Segmentation at Superhuman Performance Levels. In: 2017 IEEE
International Conference on Data Mining (ICDM). IEEE; 2017. p. 117–26.
}

Website: \url{https://sites.google.com/site/onlinesemanticsegmentation/}

Website: \url{http://www.cs.ucr.edu/~eamonn/MatrixProfile.html}
}
\seealso{
Other Semantic Segmentations: \code{\link{floss_cac}},
  \code{\link{floss_extract}}, \code{\link{fluss_cac}},
  \code{\link{fluss_extract}}, \code{\link{fluss_score}},
  \code{\link{fluss}}
}
\concept{Semantic Segmentations}
