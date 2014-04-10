\name{select.IC}
\alias{select.IC}
\title{
Selection of APFA model using penalised likelihood criteria
}
\description{
Selects an APFA using the algorithm described in Ankinakatte and Edwards (2014)
}
\usage{
select.IC(dat, crit = "BIC", verbose = FALSE)
}
\arguments{
  \item{dat}{

a data frame whose variables are factors. Any missing values are regarded as additional factor levels.
}
  \item{crit}{
Model selection criteria, either AIC or BIC.
}
  \item{verbose}{
If \code{verbose=TRUE}, then the function prints calculations involved in merge selection method.
  }
 
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}

\value{
Returns an APFA model
}
\references{
Ankinakatte, S. and Edwards, D. Modelling discrete longitudinal data using acyclic probabilistic finite automata. Submitted to C.S.D.A.
}

\author{
Smitha Ankinakatte and David Edwards
}

\examples{
library(gRapfa)
data(Wheeze)
G <- select.IC(Wheeze)
}
