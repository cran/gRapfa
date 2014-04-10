\name{add.stats}
\alias{add.stats}
\title{
Add attributes to an APFA
}
\description{
Adds edge probabilities, log-likelihood and dimension to an APFA igraph object.
}
\usage{
add.stats(G)
}
\arguments{
  \item{G}{
 \code{G}: An APFA object
}
}
\value{
The input APFA with additional attributes - edge probabilities, log-likelihood and dimension.
}
\author{
Smitha Ankinakatte and David Edwards
}
\examples{
library(gRapfa)
data(Wheeze)
G <- st(Wheeze)
G.as1 <- add.stats(G)
G.c <- contract.last.level(G)
G.as2 <- add.stats(G.c)
}
