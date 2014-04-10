\name{st}
\alias{st}
\title{
Sample tree
}
\description{
Builds the sample tree of a discrete longitudinal dataset.
}
\usage{
st(iD)
}

\arguments{
\item{iD}{
\code{iD} a data frame whose variables are factors. Any missing values are treated as additional factor levels.
}
}
\details{
Sample trees are constructed as follows. Suppose $N$ observations pf $p$ discrete variables $(x_1, \dots, x_p)$ are given.
Starting with $N$ observations at the \emph{root} node, edges branches out to nodes at the first \emph{level}.
The number of branches corresponds to number of distinct values of $x_1$, and the count on each edge correspond to the frequency of occurrence
of the respective value. From each node at level one, edges branch out to level two, based on the distinct values of $x_2$ given $x_1$.
The process continues up to level $p$.
}
\value{
An igraph object containing the sample tree.
}
\references{
Ankinakatte, S. and Edwards, D. Modelling discrete longitudinal data using acyclic probabilistic finite automata. Submitted to C.S.D.A.
}
\author{
Smitha Ankinakatte
}
\note{
further notes
}
\examples{
data(Wheeze)
G <- st(Wheeze)
E(G)$arrow.size <- 0.6
V(G)$size <- 10
V(G)$label <- ''
E(G)$label <- E(G)$count
plot(G)
}
