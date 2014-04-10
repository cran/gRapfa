\name{MergeNodes}
\alias{MergeNodes}
%\alias{merge2nodes}
\title{
Merge given node set of an APFA
}
\description{
Merges two nodes (at the same level) in an APFA, returning the resulting APFA.
}
\usage{
MergeNodes(G, nodeset, NS = NULL, setLayout = TRUE)
}
\arguments{
  \item{G}{
\code{G} is an APFA object.
}
  \item{nodeset}{
  \code{nodeset} is a vector of vertex names or nodes of length two, which are to be merged.
}
  \item{NS}{
\code{NS} is the node by symbol array for G. Supplying this will speed the computations.
}
  \item{setLayout}{
If \code{setLayout=TRUE} sets XY coordinates for the graph
}
}
\details{
 If necessary, more details than the description above.
}	
\value{
Returns the APFA igraph object after merging.
}
\author{
Smitha Ankinakatte and David Edwards
}
\seealso{
 \code{\link{merge2nodes}}
}
\examples{
library(gRapfa)
data(Wheeze)
G <- st(Wheeze)
G.c <- contract.last.level(G)
G.m <- MergeNodes(G.c, c(5,3))
}
