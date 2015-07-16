#' Raw landmark coordinate data for 13 \emph{Ligophorus} species
#'
#' This data set contains raw landmark coordinate data for samples from 13 \emph{Ligophorus} species
#' obtained using the TPSDIG2 program (Rohlf, 2013).
#' @docType data
#' @usage data(ligophorus_tpsdata)
#' @format a list of 13 objects; each object is a list containing objects that are matrices with 44 rows
#' (landmarks 1 to 11 of ventral right,ventral left,dorsal right and dorsal left anchors) and 2 columns (xy-coordinates) 
#' @details Quality control via \code{Qscore} has not yet been applied to this data set (n=537), 
#' so examples of good and poor quality specimens can be inspected using \code{polyVis}.
#' @keywords datasets
#' @source Khang TF, Soo OYM, Tan WB, Lim LHS. (2015). Monogenean anchor morphometry: systematic value, phylogenetic signal and evolution. 
#' @seealso \code{\link{Qscore}}, \code{\link{polyVis}}
#' @author Tsung Fei Khang \email{tfkhang@@um.edu.my}
#' @references Rohlf FJ. (2013). Morphometrics at SUNY Stony Brook. Available at http://life.bio.sunysb.edu/morph/soft-dataacq.html
#' @examples
#' library(cluster)
#'
#' data(ligophorus_tpsdata)
#'
#' #A poor quality specimen (dissimilar dorsal anchors)
#' polyVis(5, havelist=TRUE, listdata=ligophorus_tpsdata$bantingensis)
#' #A good quality specimen
#' polyVis(18, havelist=TRUE, listdata=ligophorus_tpsdata$johorensis)
#'
"ligophorus_tpsdata"
