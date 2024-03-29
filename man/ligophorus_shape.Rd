% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/ligophorus_shape.R
\docType{data}
\name{ligophorus_shape}
\alias{ligophorus_shape}
\title{Shape variable data for 13 \emph{Ligophorus} species}
\format{A matrix containing 437 rows (samples) and 44 columns (shape variables).
The shape variables are the GPA-coordinates of the 11 landmarks for both ventral and dorsal anchors.
GPA was performed using the \code{geomorph} R package (Adams & Otarola-Castillo, 2013; Version 3.0.0).}
\source{
Khang TF, Soo OYM, Tan WB, Lim LHS. (2016). Monogenean anchor morphometry: systematic value, phylogenetic signal, and evolution. PeerJ 4:e1668.
}
\usage{
data(ligophorus_shape)
}
\description{
This data set contains shape variable data for samples from 13 \emph{Ligophorus} species.
}
\details{
All specimens in this data set have quality score above 10.
}
\examples{
library(gplots)

data(ligophorus_shape)
data(spcolmap)

#shape variables unsorted
heatmapAnnot(ligophorus_shape,labcol=spcolmap$color,xlab="Specimens",genus="L. ")
}
\author{
Tsung Fei Khang \email{tfkhang@um.edu.my}
}
\references{
Adams DC, Otarola-Castillo E. (2013). geomorph: an R package for the collection and analysis of geometric morphometric shape data.
Methods in Ecology and Evolution 4:393-399.
}
\seealso{
\code{\link{Qscore}}
}
\keyword{datasets}

