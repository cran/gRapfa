\name{cross.validate}
\alias{cross.validate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
K - cross validation
}
\description{
The function measures the prediction efficiency of the model using K-fold cross-validation.
}
\usage{
cross.validate(Data, K = 10, crit = NULL, beagle = TRUE, dir='')
}

\arguments{
  \item{Data}{
A data frame
}
  \item{K}{
Number of cross validations
}
  \item{crit}{
The model selection criterion, either AIC or BIC, for penalised likelihood method.}
  \item{beagle}{
If \code{beagle=TRUE}, the function performs model selection using BEAGLE.
}
\item{dir}{specifying the path for 'beagle.jar' directory.}
}
\details{
The cross validation for a given data frame is done as follows,\\
1. The data is divided in to \code{K} subsets of equal sizes.\\
2. At each cross validation step in \code{k=1:K}, $k^{th}$ subset is taken as the test data
and the rest as training data.\\
3. APFA model is fitted to the training data using a model selection method (AIC, BIC or Beagle),
then using the edge probabilities of the fitted model, the loglikelihood and the per-symbol loglikelihood
are calculated for the test data set.\\
4. The function returns the mean of the log-likelihood from K-cross validation and pzero. \\
}
\value{
Returns per symbol loglikelihood of the K-cross validation.
}
\references{
Thollard, F.; Dupont, P. & de la Higuera, C. Probabilistic DFA Inference using Kullback-Leibler Divergence and Minimality 17th International Conference on Machine Learning., 2000, 975-982\\
}
\author{
Smitha Ankinakatte and David Edwards
}
%\note{
%}
\examples{
library(gRapfa)
data(Wheeze)
%## don't run
%## cv <- cross.validate(Wheeze, dir='../../../../Rcode/APFAscript')
}
