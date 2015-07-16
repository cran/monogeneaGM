#' Shape variable data for 13 \emph{Ligophorus} species
#'
#' This data set contains shape variable data for samples from 13 \emph{Ligophorus} species.
#' @docType data
#' @usage data(ligophorus_shape)
#' @format A matrix containing 443 rows (samples) and 44 columns (shape variables). 
#' The shape variables are the GPA-coordinates of the 11 landmarks for both ventral and dorsal anchors. 
#' GPA was performed using the \code{geomorph} R package (Adams & Otarola-Castillo, 2013; Version 2.1.1 or higher).
#' @details All specimens in this data set have quality score above 10.
#' @keywords datasets
#' @source Khang TF, Soo OYM, Tan WB, Lim LHS. (2015). Monogenean anchor morphometry: systematic value, phylogenetic signal and evolution. 
#' @references Adams DC, Otarola-Castillo E. (2013). geomorph: an R package for the collection and analysis of geometric morphometric shape data. 
#' Methods in Ecology and Evolution 4:393-399.
#' @seealso \code{\link{Qscore}}
#' @author Tsung Fei Khang \email{tfkhang@@um.edu.my}
#' @examples
#' library(gplots)
#'
#' data(ligophorus_shape)
#' data(spcolmap)
#'
#' #shape variables unsorted 
#' heatmapAnnot(ligophorus_shape,labcol=spcolmap$color,xlab="Specimens",genus="L. ")
#'
"ligophorus_shape"
