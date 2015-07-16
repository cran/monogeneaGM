#' Maximum likelihood tree for 13 \emph{Ligophorus} species
#'
#' This data set contains the maximum likelihood (Felsenstein, 1981) phylogenetic tree of 13 \emph{Ligophorus} species, 
#' inferred using concatenated 28S rRNA, 18S rRNA and ITS DNA sequences (500 bootstrap replicates). The best DNA substitution 
#' model was GTR+G. Multiple sequence alignment was done using online MAFFT server (Version 7; Katoh, 2013; Katoh & Standley, 2013) 
#' with default parameters. 
#' @docType data
#' @usage data(ligotree)
#' @format A \code{phylo} object, so the \code{ape} package (Paradis et al., 2004) needs to be installed
#' @details The phylogenetic tree comes with bootstrap support for the internal nodes.
#' @keywords datasets
#' @source Khang TF, Soo OYM, Tan WB, Lim LHS. (2015). Monogenean anchor morphometry: systematic value, phylogenetic signal and evolution. 
#' @seealso \code{\link{tpColorPlot2d}}
#' @author Tsung Fei Khang \email{tfkhang@@um.edu.my}
#' @references Felsenstein J. (1981). Evolutionary trees from DNA sequences: A maximum likelihood approach. 
#' Journal of Molecular Evolution 17: 368-376.
#'
#' Katoh K. (2013). MAFFT - a multiple sequence alignment program. Available at http://mafft.cbrc.jp/alignment/server.
#'
#' Katoh K, Standley DM. (2013). MAFFT multiple sequence alignment software version 7: 
#' Improvements in performance and usability. Molecular Biology and Evolution 30: 772-780.
#'
#' Paradis E, Claude J & Strimmer K. (2004). APE: analyses of phylogenetics and evolution in R
#' language. Bioinformatics 20: 289-290.
#' @examples
#' library(ape)
#'
#' data(ligotree)
#' plot.phylo(ligotree, show.node.label=TRUE)
#'
"ligotree"


