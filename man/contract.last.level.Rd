\name{contract.last.level}
\alias{contract.last.level}
\title{
Contract last level
}
\description{
\code{contract.last.level} merges all nodes at the last level of a sample tree or other APFA igraph object.
}
\usage{
contract.last.level(G)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{G}{
\code{G} is a sample tree or other APFA igraph object.
}
}
\value{
An APFA igraph object.
}
%\references{Put references to the literature/web site here }
\author{
Smitha Ankinakatte and David Edwards
}
%\note{
%further notes
%}
%\seealso{
%\code{\link{merge.nodes}},\code{\link{merge2nodes}}
%}
\examples{
library(gRapfa)
data(Wheeze)
G <- st(Wheeze)
G.c <- contract.last.level(G)
plot(G.c)
}
