% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getOptimum.R
\name{getOptimum}
\alias{getOptimum}
\title{Extract a set of genes that are both highly specific for and highly 
expressed in a tissue of interest.}
\usage{
getOptimum(x, y, z)
}
\arguments{
\item{x}{output from getMart()}

\item{y}{output from getTissue()}

\item{z}{number of genes}
}
\value{
Returns a list of 2 objects: a dataframe and a ggplot barplot. The dataframe is a 
subset of the output of getTissue(), containing only the optimum gene set.
The barplot shows only the tissues in which the optimum genes are expressed 
and the specificity of those genes for those tissues. Red dotted line: 0.85 
tau expression fraction threshold for high tissue specificity
}
\description{
This function ranks genes by their score (as calculated in 
getTissue()) and extracts the highest scoring genes that are highly specific
to the tissue of interest (>=0.85 tau expression fraction). The number of 
genes extracted is defined by the user (z). This function is ideal for 
selecting a gene set that has little expression outside the tissue of 
interest, while also enough expression in the tissue of interest to 
facilitate bench work in the laboratory.
}
\examples{
optimum <- getOptimum(tauAnno, tissueA, 5)
optimum$dataframe
optimum$barplot
}
