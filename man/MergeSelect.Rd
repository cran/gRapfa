\name{MergeSelect}
\alias{MergeSelect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Selection of nodes to merged at a level
}
\description{
At a given level of an APFA object, the function performs a greedy search of node pairs to be merged.
}
\usage{
MergeSelect(G, NS = NULL, this.level, crit = "BIC", verbose = FALSE)
}

\arguments{
  \item{G}{
an APFA igraph object
}
  \item{NS}{
a node by symbol array. Supplying this instead of G will speed computations.
}
  \item{this.level}{
The level in which nodes are searched to be merged.
}
  \item{crit}{
The criterion for the model selection, either AIC or BIC.
}
  \item{verbose}{
If \code{verbose} is TRUE, then the all the information on the merge selection of nodes at each level are printed in the output.
}
}
\details{
The function performs greedy selection at the given level. That is to say, the delta ICs for all nodes pairs at the given level are computed, the pair
leading to the greatest reduction are merged, the delta ICs are recomputed as necessary, and the process continues until no further reduction in IC can be made.
}
\value{
Returns the list of \code{G}: resulting APFA and \code{ns}: node-symbol array.
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
Smitha Ankinakatte and David Edwards
}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{dIC}}, \code{\link{MergeNodes}}
}
\examples{
data(Wheeze)
G <- st(Wheeze)
G <- contract.last.level(G)
G1 <- MergeSelect(G, this.level=3)
G <- G1$G
G$layout <- getXY(G)
plot(G)
}
