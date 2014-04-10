\name{LogLike.APFA}
\alias{LogLike.APFA}
\title{
Log likelihood for an APFA model
}
\description{
Uses the edge probabilities from \code{G} to calculate the log likelihood of the model.
}
\usage{
LogLike.APFA(G, dat, complete.cases=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{G}{
 a fitted APFA
}
  \item{dat}{
 a data frame that contains the same variables that G is based on.
}
 \item{complete.cases}{
a Boolean that determines whether incomplete cases are included in the calculations (see Details).
}
}
\details{
An observation in the data may not be in the sample space of the APFA, i.e. there may not a root-to-sink path in the APFA generating
the observation. However, there will be a partial path, that is, generating the initial part of the observation.
If \code{complete.cases} is true, such observations are excluded from the calculations, otherwise contributions from the partial path are included.

See the reference below for the per-symbol log-likelihood.
 }
\value{
Returns the log-likelihood and the per-symbol log-likelihood.
}
\references{
Thollard, F.; Dupont, P. & de la Higuera, C. Probabilistic DFA Inference using Kullback-Leibler Divergence and Minimality 17th International Conference on Machine Learning., 2000, 975-982;

Ankinakatte, S. and Edwards, D. Modelling discrete longitudinal data using acyclic probabilistic finite automata. Submitted to Computational Statistica and Data Analysis.
}

\author{
Smitha Ankinakatte and David Edwards
}



\seealso{
\code{\link{add.stats}}
}
\examples{
library(gRapfa)
data(Wheeze)
G <- st(Wheeze)
samp <- sample(1:537, 250)
G <- select.IC(Wheeze[samp,])
G.LL  <- LogLike.APFA(G, Wheeze[-samp,])
}
