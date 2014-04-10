\name{simulateAPFA}
\alias{simulateAPFA}
\title{
Simulation of data from an APFA model
}
\description{
The function draws a number of independent samples from the given APFA model.
}
\usage{
simulateAPFA(g, Nsim = 1000)
}
\arguments{
  \item{g}{
  is an APFA model from which the samples are drawn.
}
  \item{Nsim}{
is the number of simulations.
}
}
\details{
The function simulates the data from an APFA model using the edge probabilities.
}
\value{
A data frame containing the simulated data.
}
\author{
Smitha Akinakatte and David Edwards
}
\examples{
library(gRapfa)
data(Wheeze)
G <- select.IC(Wheeze)
simWheeze <- simulateAPFA(G)
head(simWheeze)
}
