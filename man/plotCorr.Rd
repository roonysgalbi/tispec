% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotCorr.R
\name{plotCorr}
\alias{plotCorr}
\title{Plot correlation between expression and specificity}
\usage{
plotCorr(x, y)
}
\arguments{
\item{x}{output from getTissue()}

\item{y}{optional vector of user defined genes for highlighting}
}
\value{
Returns a list object containing 3 objects: tauPlot, fracPlot, inputGeneSet. 
TauPlot is the result of plotting QN expression v the overall specificity of 
each gene for ANY tissue (tau). FracPlot is the result of plotting QN 
expression v the specificity of each gene for the tissue being plotted (tau 
expression fraction). InputGeneSet is the subset of rows from x containing 
only the genes listed by the user in y.

Yellow: tau expression fraction >= 0.85. 

Orange: tau expression fraction = 1.

Pink: user defined input gene set of interest 

Red: generalised additive model trend line

Swatch: 0.99 confidence interval

r: correlation coefficient
}
\description{
This function plots quantile normalised expression values versus
tissue specificity values of all genes in all tissues to visualise 
correlation.
}
\examples{
# Choose Input
corrPlots <- plotCorr(tissueA) # without user genes of interest
corrPlots <- plotCorr(tissueA, c('Col4a3', 'Mboat7')) # vector of genes
corrPlots <- plotCorr(tissueA, optimum$dataframe$external_gene_name) # output from getOptimum

# View results
#corrPlots$tauPlot
#corrPlots$fracPlot
#corrPlots$inputGeneSet
}
