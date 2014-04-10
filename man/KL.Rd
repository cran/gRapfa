\name{KL}
\alias{KL}
\title{
Kullback-Leibler divergence for APFA models
}
\description{
The Kullback-Leibler divergence measures the similarity between two APFA models. If the two models are identical then it is zero.
}
\usage{
KL(A,B)
}
\arguments{
  \item{A}{
  APFA igraph object
}
  \item{B}{
APFA igraph object
}
}
\details{
A and B must be commensurate, i.e., defined on the same variable set. Note that the KL-divergence is not a true distance measure, since it is not
not symmetric in A and B. For large APFA the computation of the KL-divergence may be prohibitive in both time and memory.
}
\value{
Returns the KL-divergence.
}
\references{
Thollard, F.; Dupont, P. & de la Higuera, C. Probabilistic DFA Inference using Kullback-Leibler Divergence and Minimality 17th International Conference on Machine Learning., 2000, 975-982
}
\author{
Smitha Akinakatte and David Edwards
}
\examples{
library(gRapfa)
data(Wheeze)
samp <- sample(1:537, 250)
G <- select.IC(Wheeze[samp,])
G.fit  <- fit.APFA(G, Wheeze[-samp,])
kl <- KL(G, G.fit)
}
