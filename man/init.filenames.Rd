% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/init.filenames.R
\name{init.filenames}
\alias{init.filenames}
\title{Init file names for analysis}
\usage{
init.filenames(files.df, dest.folder = ".", sample.folder = TRUE,
  code = NULL, dest.folder.relative.path = TRUE, sub.folder = NULL)
}
\arguments{
\item{files.df}{a data.frame with the information about the files to
use. Columns 'sample' and 'bam' are required.}

\item{dest.folder}{the folder where the files with the bin counts are to
be created.}

\item{sample.folder}{if TRUE (default), a folder is created for each sample
on the specified destination folder.}

\item{code}{if not NULL, a name for the analysis. Useful when PopSV is to be run
several times with different parameters. Default is NULL.}

\item{dest.folder.relative.path}{Is the specified folder defined relatively to
the working directory. Default is TRUE. Set to FALSE if providing absolute
paths (recommended).}

\item{sub.folder}{if non-null, sample folders will be structure into sub folder
defined by the column in 'files.df' named according to 'sub.folder's value. Useful when many samples
from different projects are studied together.}
}
\value{
an updated data.frame with the information about the files.
For example a new column 'bc', 'bc.gz', 'bc.gc' and 'bc.gc.bz' holds the name
of the bin counts (raw/compressed), GC corrected bin counts (raw/compressed) files
to be created later.
}
\description{
Init the names for the files to use in the analysis to come. Specifically the
name of the files with the bin counts and compressed bin counts are created. Normalized bin counts, Z-scores, fold-changes will also be written following the paths created by this function.
}
\author{
Jean Monlong
}
