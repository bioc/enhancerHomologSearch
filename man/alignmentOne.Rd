% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alignment.R
\name{alignmentOne}
\alias{alignmentOne}
\title{Get alignment scores}
\usage{
alignmentOne(query, subject, block = 1000, bpparam = bpparam(), ...)
}
\arguments{
\item{query}{An object of DNAStringSet to represent enhancer}

\item{subject}{Output of getENCODEdata. An object of \link{Enhancers}}

\item{block}{The size of sequences to do alignment. Increase the size will
increase the memory cost. Default 1000.}

\item{bpparam}{BiocParallel parameters.}

\item{\dots}{not used.}
}
\value{
An object of \link{Enhancers}.
}
\description{
Do pairwise alignment for query enhancer to target genome
}
\examples{
library(BiocParallel)
bpparam <- MulticoreParam(workers = 1, tasks=200, progressbar=TRUE)
library(BSgenome.Hsapiens.UCSC.hg38)
peaks <- GRanges("chr1", IRanges(seq(5000, 50000, by=1000), width=1000))
peaks$id <- paste(seq_along(peaks), 1, sep="_")
subj <- Enhancers(genome=Hsapiens, peaks=peaks)
q <- getSeq(Hsapiens, GRanges("chr1", IRanges(90000, width=1000)))
ao <- alignmentOne(q, subj, bpparam=bpparam)
}
