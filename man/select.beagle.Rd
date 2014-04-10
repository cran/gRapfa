\name{select.beagle}
\alias{select.beagle}
\title{
Select APFA using Beagle
}
\description{
\code{select.beagle} runs Beagle software selection method to build APFA model.
}
\usage{
select.beagle(A, m=4, b=0.2, dir = '', row.marker = FALSE, col.hap = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
a data frame whose variables are factors. Any missing values are regarded as additional factor levels.
}
  \item{m}{
is the scale parameter.
}
  \item{b}{
the shift parameter
}
 \item{dir}{
path of the directory to find the beagle.jar file. The destined path should end with either '\' or '//'.% , this can be specified for example as \code{C:\Users\xyz\Documents\}.
If \code{dir=''}, by default the function considers the beagle.jar is in the same directory as R is running.
}
  \item{row.marker}{
For genotype data, to spcify whether the markers are in rows or columns
}
\item{col.hap}{
For genotype data, to specify whether the haplotypes are in rows or in columns
}
}
\details{
\code{select.beagle} is an interface in R to work with Beagle software.
Beagle is a software package for analysis of large scale genetic data sets. Beagle is written in Java, hence the Java
interpreter needs to needs to be installed. More details on downloading and installing Beagle can be found in
\url{http://faculty.washington.edu/browning/beagle/beagle.html}.
}
\value{
Returns APFA igraph object using Beagle software for the calculations.
}
%\references{
%}
\author{
Smitha Ankinakatte and David Edwards
}

\seealso{
 Browning, S., 2006. Multilocus association mapping using variable-length Markov chains.
The American Journal of Human Genetics 78 (6), 903-913.

 Browning, S., 2008. Missing data imputation and haplotype phase inference for genome
wide association studies. Human Genetics 124 (5), 439-450.
}
\examples{
# you have to have 'beagle.jar' to run the code below,
##library(gRapfa)
##data(Wheeze)
##G <- select.beagle(Wheeze)
}