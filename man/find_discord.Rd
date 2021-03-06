% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find-discord.R
\name{find_discord}
\alias{find_discord}
\alias{find_discord.MatrixProfile}
\title{Search for Discord}
\usage{
find_discord(.mp, ...)

\method{find_discord}{MatrixProfile}(.mp, data, n_discords = 1,
  n_neighbors = 3, radius = 3, exclusion_zone = NULL, ...)
}
\arguments{
\item{.mp}{a TSMP object of class \code{MatrixProfile}}

\item{...}{further arguments to be passed to class specific function.}

\item{data}{the data used to build the Matrix Profile, if not embedded.}

\item{n_discords}{an \code{int}. Number of discords to find. (Default is \code{1}).}

\item{n_neighbors}{an \code{int}. Number of neighbors to find. (Default is \code{3}).}

\item{radius}{an \code{int}. Set a threshold to exclude matching neighbors with distance > current
discord distance * \code{radius}. (Default is \code{3}).}

\item{exclusion_zone}{if a \code{number} will be used instead of embedded value. (Default is \code{NULL}).}
}
\value{
For class \code{MatrixProfile}, returns the input \code{.mp} object with a new name \code{discord}. It contains: \code{discord_idx}, a \code{vector}
of discords found
}
\description{
Search for Discord
}
\examples{
# Single dimension data
w <- 50
data <- mp_gait_data
mp <- tsmp(data, window_size = w, exclusion_zone = 1 / 4, verbose = 0)
mp <- find_discord(mp)
}
