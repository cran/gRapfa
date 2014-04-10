\name{getXY}
\alias{getXY}
\title{
To get XY co-ordinates for the igraph plots.
}
\description{
Sets XY co-ordinates for the igraph plots.
}
\usage{
getXY(G)
}
\arguments{
  \item{G}{
 \code{G} an apfa igraph object.
}
}
\details{
The function uses the igraph layout.sugiyama function. For large graphs the layout.drl function is more efficient.}
\value{
An array containing a set of co-ordinates for the graph.
}
\author{
Smitha Ankinakatte and David Edwards
}
\seealso{
\code{igraph.plot}
}
