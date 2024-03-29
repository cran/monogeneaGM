% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/pca2d.R
\name{pca2d}
\alias{pca2d}
\title{Principal component analyis}
\usage{
pca2d(x, a = 1:3, sgn = 1, labcol, bound.x1 = c(-0.15, 0.15),
  bound.x2 = c(-0.15, 0.15), bound.y = c(-0.15, 0.15), pointscale = 1,
  phylo = FALSE, phy, genus = "")
}
\arguments{
\item{x}{a matrix with rows representing samples and columns representing morphometrical variables of
interest}

\item{a}{a vector of length 3 for the principal component ranks specified by the user; defaults to the first three principal components}

\item{sgn}{a numeric constant, either -1 or 1, that controls the sign of the principal component scores; defaults to 1}

\item{labcol}{a character vector giving the color-annotation of the species}

\item{bound.x1}{a numeric vector specifying the range of values on the x-axis for the first plot}

\item{bound.x2}{a numeric vector specifying the range of values on the x-axis for the second plot}

\item{bound.y}{a numeric vector specifying the range of values on the y-axis for both plots}

\item{pointscale}{a constant for the size of species centroids; defaults to 1}

\item{phylo}{if TRUE, coordinates of ancestral nodes from a supplied phylogeny (\code{phy}) are estimated using \code{fastAnc} from the
\code{phytools} package (Revell, 2012), and edges between nodes are joined according to the tree topology specified in \code{phy}}

\item{phy}{an object of class \code{phylo}}

\item{genus}{single character abbreviation for genus}
}
\description{
This function performs principal component analysis (PCA) and produces color-annotated scatter plots of a reference
principal component (typically the first one) against two other principal components (typically the second and third).
}
\details{
To be specific, this function implements an R-mode, covariance-based PCA. When variables differ in their
units of measurement or show large magnitude differences, a correlation-based PCA is more reasonable. In this case,
the data in the input matrix must first be normalized by subtracting mean and dividing by standard deviation.
In R-mode PCA, the principal components can be interpreted contextually by checking the loadings of the variables of interest (graphically
using \code{pcloadhm}). However, this requires that the number of rows exceeds the number of columns (variables). If specimen sample size is small,
Q-mode PCA is possible. In this case, the input data matrix is transposed. Although species clusters can still be visualized,
the principal components do not seem to be interpretable. If a phylogeny of the species is available, it can be superimposed onto the
principal component space to yield a phylomorphospace to provide a graphical complement to formal phylogenetic signal testing.
For the latter, see \code{physignal} in the \code{geomorph} package (Adams & Otarola-Castillo, 2013).
}
\examples{
library(phytools)

data(ligotree)
data(ligophorus_shape)
data(spcolmap)

#PCA plot for the shape variables of the ventral anchors
pca2d(ligophorus_shape[,1:22], labcol=spcolmap$color, phylo=TRUE,
phy=ligotree, genus="L. ", bound.y=c(-0.1, 0.1), bound.x1=c(-0.2,0.2),
bound.x2 = c(-0.2,0.2))
}
\author{
Tsung Fei Khang \email{tfkhang@um.edu.my}
}
\references{
Adams DC, Otarola-Castillo E. (2013). geomorph: an R package for the collection and analysis of geometric morphometric shape data. Methods in Ecology and Evolution 4:393-399.

Khang TF, Soo OYM, Tan WB, Lim LHS. (2016). Monogenean anchor morphometry: systematic value, phylogenetic signal, and evolution. PeerJ 4:e1668.

Revell LJ. (2012). phytools: An R package for phylogenetic comparative biology (and other things). Methods in Ecology and Evolution 3:217-223.
}
\seealso{
\code{\link{pcloadhm}}
}

