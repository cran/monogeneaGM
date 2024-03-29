% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/anglePolygon.R
\name{anglePolygon}
\alias{anglePolygon}
\title{Internal angles of a polygon}
\usage{
anglePolygon(point, degree = FALSE)
}
\arguments{
\item{point}{a list containing coordinates of the polygon vertices in either clockwise or anti-clockwise direction}

\item{degree}{if TRUE, returns the internal angles in degrees instead of radians}
}
\value{
A list with two components:
\item{angle}{a matrix; the rows represents the vertices and the columns contain the latters' geometrical information:
first column for x coordinate, second column for y coordinate, and third column for the assocaited internal angle (in radians)}
\item{orientation}{a character indicating the direction of ordering the vertices: \code{m} for anti-clockwise and \code{p} for clockwise}
}
\description{
This function computes the internal angles of a polygon, given the coordinates of its vertices.
}
\details{
The sum of all the internal angles of a polygon with \emph{n}-vertices must be equal to the product of
\emph{n-2} with 180 (degrees) or pi (radians).
This function is useful for detecting tps data files that contain errors (e.g. wrong sequence of digitizing landmarks, missing landmarks)
so that corrective steps can be taken.
}
\examples{
#internal angles of a right-angled triangle in degrees
anglePolygon(list(c(0,1),c(0,0),c(1,0)),degree=TRUE)

data(ligophorus_tpsdata)

#polygonal approximation of anchor shape
#the right ventral anchor
anchorpolygon <- anglePolygon(matrix2list(ligophorus_tpsdata$bantingensis[[1]][1:11,]), degree=TRUE)

#there are 11 landmarks, do the sum of internal angles should be (11-2)x180 = 1620
sum(anchorpolygon$angle[,3])

#does this make sense?
polyVis(1, havelist=TRUE, listdata=ligophorus_tpsdata$bantingensis)
}
\author{
Thian Liang Cheow \email{Tl2cheow@yahoo.com}
}
\references{
Khang TF, Soo OYM, Tan WB, Lim LHS. (2016). Monogenean anchor morphometry: systematic value, phylogenetic signal, and evolution. PeerJ 4:e1668.
}

