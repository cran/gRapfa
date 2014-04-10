\name{apfa2NS}
\alias{apfa2NS}
\title{
APFA to node symbol array
}
\description{
Derives a node by symbol array from an APFA.
}
\usage{
apfa2NS(G)
}
\arguments{
  \item{G}{
\code{G} is an APFA igraph object.
}
}
\details{
A node by symbol array represents the APFA in a convenient form for computation. The rows correspond to nodes, the columns correspond to edge symbols
(twice). The first $k$ columns contain the ids of the target nodes for an edge from the node with the corresponding symbol. Zeroes mean that there is no
corresponding edge. The last $k$ columns contain the corresponding edge counts.
}
\value{
\code{output}: Derived node by symbol array.
}
\author{
Smitha Ankinakatte and David Edwards
}
\examples{
library(gRapfa)
data(Wheeze)
G <- st(Wheeze)
G.c <- contract.last.level(G)
ns.array <- apfa2NS(G.c)
}
