\name{fit.APFA}
\alias{fit.APFA}
\title{
Fitting an APFA igraph object to data
}
\description{
Fits the APFA igraph object \code{G} to a commensurate dataset, i.e., the edge probabilities are calculated using the data.

}
\usage{
fit.APFA(G, dat)
}
\arguments{
  \item{G}{
An APFA object.
  }
\item{dat}{
The data for which the APFA models from \code{G} has to be fit.
}
}
\value{
Returns fitted APFA igraph object for the given data.
}
\details{
Any observations not in the sample space of \code{G} are ignored.
}
\author{
Smitha Ankinakatte and David Edwards
}

%\seealso{
% \code{\link{LogLike.APFA}}, \code{\link{simulate.APFA}}
%}
\examples{
library(gRapfa)
data(Wheeze)
samp <- sample(1:537, 250)
G <- select.IC(Wheeze[samp,])
G.fit  <- fit.APFA(G, Wheeze[-samp,])
}
