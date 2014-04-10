\name{dIC}
\alias{dIC}
\title{
Difference in information criteria
}
\description{
The function returns the difference in AIC or BIC associated with merging a node pair in an APFA igraph object.
}
\usage{
dIC(G, nodeset, crit = "BIC", NS=NULL)
}
\arguments{
  \item{G}{
  APFA igraph object
}
\item{nodeset}{
vector of length two, contain the names of the nodes to be merged.
}
\item{crit}{
Information criterion, 'AIC' or 'BIC' or a positive numerical value for the tuning parameter.}
\item{NS}{Node symbol array}{The node symbol array corresponding to G may be supplied to increase speed}
}
\details{
\code{dIC} is The penalized likelihood criterion, IC(A) = -2(A) + alpha*dim(A), where
dim(A) is the number of free parameters under A, and 'alpha' is a tuning parameter.
For the AIC, alpha=2 and for the BIC, alpha= log(N). BIC penalises the parameters more heavily and
so selects simpler models.

The difference in IC is
d(IC) = IC(A_0) - IC(A) = G^2 - alpha*df\\
where A_0 is the APFA obtained after merging the two nodes in A, G^2 is the deviance statistic and d.f. is the associated degrees of freedom.
}
\value{
A numerical vector of length three containing d(IC), G^2 and the degrees of freedom.
}
\references{
Thollard, F.; Dupont, P. & de la Higuera, C. Probabilistic DFA Inference using Kullback-Leibler Divergence and Minimality 17th International Conference on Machine Learning., 2000, 975-982

Ankinakatte, S. and Edwards, D. Modelling discrete longitudinal data using acyclic probabilistic finite automata. Submitted to C.S.D.A.
}

\author{
Smitha Ankinakatte and David Edwards.
}
\examples{
library(gRapfa)
data(Wheeze)
G <- st(Wheeze)
G.c <- contract.last.level(G)
dic1 <- dIC(G.c, nodeset=c(5,3))
dic2 <- dIC(G.c, nodeset=c(6,4))
}
