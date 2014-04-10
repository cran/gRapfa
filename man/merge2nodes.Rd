\name{merge2nodes}
\alias{merge2nodes}
%\alias{MergeNodes}
\title{
Merge two nodes
}
\description{
 Calculates various quantities in connection with merging two nodes in a level of a sample tree.
}
\usage{
merge2nodes(NS, mnode, test = TRUE, get.map = FALSE, doMerge = FALSE)
}

\arguments{
  \item{NS}{
\code{NS} is a node by symbol array, the 1st half of the columns are node ids, the 2nd half the edge counts.
        When the corresponding edge is absent, the edge id is set to 0.
}
  \item{mnode}{
\code{mnode} is a vector of nodes to be merged, specified as vertex ids (rather than names). Required to be of length two.
}
  \item{test}{
 If \code{test=TRUE}, the deviance and df associated with the merging are returned.

}
  \item{get.map}{
If \code{get.map=TRUE}, a map is returned.
}
\item{doMerge}{
If \code{doMerge=TRUE}, \code{NS} returned is the node by symbol array after merging (used in \code{MergeNodes})
}
}

\value{
A list of computed quantities
\item{mmat }{An integer matrix containing the nodes to be merged (the original and the induced).}
\item{map}{A integer vector of length vcount(G)) containing the vertex ids of the vertices after merging}
\item{devtest}{A numeric vector of length two containg the degrees of freedom and deviance associated with the merging}
\item{NS}{A node by symbol array representing the result of the merging}
}
\references{
Ankinakatte, S. and Edwards, D. (2014?) Modelling discrete longitudinal data using acyclic probabilistic finite automata. Submitted to C.S.D.A.
}
\author{
Smitha Ankinakatte and David Edwards
}
%%\note{
%%further notes.
%%}

%\seealso{
%\code{link{apfa2NS}, link{MergeNodes}}, \code{\link{merge.select}}
%}
\examples{
library(gRapfa)
data(Wheeze)
G <- st(Wheeze)
G.c <- contract.last.level(G)
NS <- apfa2NS(G.c)
n2n <- merge2nodes(NS, c(5,3))
}
