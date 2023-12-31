% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/motifs.R
\docType{data}
\name{motifs}
\alias{motifs}
\title{Pre-clustered motifs from human and mouse}
\format{
a list of PFMatrixList. The names of the list is the grouop distance.
}
\source{
MotifDb package. Source code for the data generation is in
extdata folder
}
\usage{
data(motifs)
}
\description{
The data were extracted from MotifDb package (v 1.34.0) and grouped by
motifStack package (v 1.37.2). The data were packaged as PFMatrixList
object by TFBSTools (v 1.30.0)
}
\examples{

data(motifs)
names(motifs)
motifs[[1]]
}
\keyword{datasets}
