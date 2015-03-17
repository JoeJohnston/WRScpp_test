\name{WRScpp-package}
\alias{WRScpp-package}
\alias{WRScpp}
\docType{package}
\title{
Robust Methods for R using C++
}
\description{
This package provides C++ sub-routines for several iterative procedures in the R package WRS for robust statistics by Dr. Rand Wilcox. These C++ sub-routines can provide substantial performance boosts.
}
\details{
\tabular{ll}{
Package: \tab WRScpp\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-02-26\cr
License: \tab GPL (>= 2)\cr
}

}
\author{
Rand Wilcox, Xiao He

Maintainer: Joe Johnston <jjohnsto@cityu.edu.hk>
}
\references{
http://dornsife.usc.edu/labs/rwilcox/software/
}

\keyword{ package }
\seealso{
\code{\link[WRS-package]{WRS}} 
}
\examples{
set.seed(1); dataset1 <- matrix(rnorm(1000), ncol=5)
model.tsreg <- tsreg_C( x=dataset1[, 1], y=dataset1[, 5] )
model.tsreg$coef
model.tsregm <- tsreg_C( x=dataset1[, 1:4], y=dataset1[, 5]) 
model.tsregm$coef
model.tshdreg <- tshdreg_C(x=dataset1[, 1], y=dataset1[, 5]))
model.tshdreg$coef
model.stsreg <- stsreg_C(x=dataset1[, 1], y=dataset1[, 5]))
model.stsreg$coef
}
