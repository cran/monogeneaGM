#' Physical distance between landmarks in ventral and dorsal anchors of 13 \emph{Ligophorus} species
#'
#' This data set contains all pairwise physical distance between landmarks in
#' ventral and dorsal anchors of samples from 13 \emph{Ligophorus species}.
#' @docType data
#' @usage data(pwed_pd)
#' @format a matrix containing 443 rows (samples) and 110 columns (physical distance)
#' @details The pairwise physical distances are estimated from a subset (n=97) of the 443 samples based on a regression equation, 
#' using physical distances between landmarks 1 to 3 and landmarks 1 to 5 and corresponding distances computed from \code{pwdist},
#' which have arbitrary units.
#' @seealso \code{\link{pwdist}}
#' @keywords datasets
#' @source Khang TF, Soo OYM, Tan WB, Lim LHS. (2015). Monogenean anchor morphometry: systematic value, phylogenetic signal and evolution. 
#' @author Tsung Fei Khang \email{tfkhang@@um.edu.my}
"pwed_pd"