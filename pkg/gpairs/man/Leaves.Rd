\name{Leaves}
\alias{Leaves}
\docType{data}
\title{Morphological descriptions of leaf floras}
\description{
  Measurements of the percentages of leaves in 31 morphological (or architectural) categories found in 245 leaf floras from 4 studies.
}
\usage{data(Leaves)}
\format{
  A data frame with 245 observations on the following 33 variables.
  \describe{
    \item{\code{Lobd}}{a numeric vector giving percentage Lobed leaves}
    \item{\code{Entr}}{a numeric vector giving percentage Entire leaves}
    \item{\code{TReg}}{a numeric vector giving percentage leaves with Regular Teeth}
    \item{\code{TCls}}{a numeric vector giving percentage leaves with Close Teeth}
    \item{\code{TRnd}}{a numeric vector giving percentage leaves with Round Teeth}
    \item{\code{TAcu}}{a numeric vector giving percentage leaves Acute Teeth}
    \item{\code{TCmp}}{a numeric vector giving percentage leaves with Compound Teeth}
    \item{\code{ZNan}}{a numeric vector giving percentage Nanophyll leaves}
    \item{\code{ZLe1}}{a numeric vector giving percentage Leptophyll1 leaves}
    \item{\code{ZLe2}}{a numeric vector giving percentage Leptophyll2 leaves}
    \item{\code{ZMi1}}{a numeric vector giving percentage Microphyll1 leaves}
    \item{\code{ZMi2}}{a numeric vector giving percentage Microphyll2 leaves}
    \item{\code{ZMi3}}{a numeric vector giving percentage Microphyll3 leaves}
    \item{\code{ZMe1}}{a numeric vector giving percentage Megaphyll1 leaves}
    \item{\code{ZMe2}}{a numeric vector giving percentage Megaphyll2 leaves}
    \item{\code{ZMe3}}{a numeric vector giving percentage Megaphyll3 leaves}
    \item{\code{AEmg}}{a numeric vector giving percentage leaves with Emarginate Apexes}
    \item{\code{ARnd}}{a numeric vector giving percentage leaves with Round Apexes}
    \item{\code{AAcu}}{a numeric vector giving percentage leaves with Acute Apexes}
    \item{\code{AAtn}}{a numeric vector giving percentage leaves with Attenuate Apexes}
    \item{\code{BCor}}{a numeric vector giving percentage leaves with Cordate Bases}
    \item{\code{BRnd}}{a numeric vector giving percentage leaves with Round Bases}
    \item{\code{BAcu}}{a numeric vector giving percentage leaves with Acute Bases}
    \item{\code{Rlt1}}{a numeric vector giving percentage leaves with aspect ratio less than 1:1 (i.e. wider than long)}
    \item{\code{Rb12}}{a numeric vector giving percentage leaves with aspect ratio between 1:1 and 1:2}
    \item{\code{Rb23}}{a numeric vector giving percentage leaves with aspect ratio between 1:2 and 1:3}
    \item{\code{Rb34}}{a numeric vector giving percentage leaves with aspect ratio between 1:3 and 1:4}
    \item{\code{Rgt4}}{a numeric vector giving percentage leaves with aspect ratio between greater than 1:4}
    \item{\code{SObo}}{a numeric vector giving percentage Obovate leaves}
    \item{\code{SElp}}{a numeric vector giving percentage Elliptical leaves}
    \item{\code{SOvt}}{a numeric vector giving percentage Ovate leaves}
    \item{\code{MAT}}{a numeric vector giving mean annual temperature in degrees Centigrade}
    \item{\code{Study}}{a factor with levels \code{Wolfe173} \code{Jacobs} \code{Gregory} \code{Kowalski}}
  }
}
\details{
  Data consists of a data frame with 245 rows and 33 columns (variables). The rows represent floras (collections of plants from a defined locality); the first 31 variables are percentages of leaves in each flora in each of 31 morphological categories; the 32nd variable is mean annual temperature of the area from which the floras was collected in degrees C, and the 32nd is a factor indicating which of 4 published studies the floras come from.
See cited publications for more details.}
\source{
  Green, W. A. (2006) Loosening the CLAMP: An exploratory graphical approach to the Climate Leaf Analysis Multivariate Program \emph{Palaeontologia Electronica} 9(2):9A.

\url{http://www.palaeo-electronica.org/2006\_2/clamp/index.html}

\url{http://www.open.ac.uk/earth-research/spicer/CLAMP/Physg3ar.xls} (the climatic variables)

\url{http://www.open.ac.uk/earth-research/spicer/CLAMP/MET3AR.xls} (the morphological leaf scores)
}
\references{
Gregory-Wodzicki, K. M. (2000) Relationships between leaf morphology and climate, Bolivia: implications for estimating paleoclimate from fossil floras. \emph{Paleobiology} 26(4):668--688.

Jacobs, B. F. (1999) Estimation of rainfall variables from leaf characters in tropical Africa. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology} 145:231--250.

Jacobs, B. F. (2002) Estimation of low-latitude paleoclimates using fossil angiosperm leaves: examples from the Miocene Tugen Hills, Kenya. \emph{Paleobiology} 28(3):399--421.

Kowalski, E. A. (2002) Mean annual temperature estimation base on leaf morphology: a test from tropical South America. \emph{Palaeogeography, Palaeoclimatology, Palaeoecology} 188:141--165.

Wolfe, J.A., (1993), A method of obtaining climatic parameters from leaf assemblages. \emph{U.S. Geological Survey Bulletin} 2040, 73 pp.
}
\examples{
data(Leaves)
## maybe str(Leaves) ; plot(Leaves) ...
}
\keyword{datasets}
