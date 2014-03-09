\name{gpairs}
\alias{gpairs}
\alias{corrgram}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generalized Pairs Plots }
\description{
Produces a matrix of plots showing pairwise relationships between quantitative and categorical variables in a complex data set.
}
\usage{
gpairs(x,
       upper.pars = list(scatter = "points",
                         conditional = "barcode",
                         mosaic = "mosaic"),
       lower.pars = list(scatter = "points",
                         conditional = "boxplot",
                         mosaic = "mosaic"),
       diagonal = "default",
       outer.margins = list(bottom = unit(2, "lines"), 
                            left = unit(2, "lines"), 
                            top = unit(2, "lines"), 
                            right = unit(2, "lines")), 
       xylim = NULL,
       outer.labels = NULL, outer.rot = c(0, 90), gap = 0.05, 
       buffer = 0.02, reorder = NULL, cluster.pars = NULL, 
       stat.pars = NULL, scatter.pars = NULL, 
       bwplot.pars = NULL, stripplot.pars = NULL, barcode.pars=NULL,
       mosaic.pars = NULL, axis.pars = NULL, diag.pars = NULL, 
       whatis = FALSE)

corrgram(x)
}
\arguments{
  \item{x}{a data frame (or matrix the relationships between whose columns are to be examined). Any combination of quantitative and categorical variables is acceptable.}
  \item{upper.pars}{see \code{Details}}
  \item{lower.pars}{see \code{Details}}
  \item{diagonal}{by default, the diagonal from the top left to the bottom right is used for displaying the variable names (and, in our version, the marginal distributions of the variables); \code{diagonal="other"} will place the diagonal running from the top right down to the bottom left.}
  \item{outer.margins}{a list of length 4 with units as components named bottom, left, top, and right, giving the outer margins; the default uses two lines of text.  A vector of length 4 with units (ordered properly) will work, as will a vector of length 4 with numeric values (interpreted as lines).}
  \item{xylim}{optionally specify a single range to be used as \code{xlim} and \code{ylim} where appropriate.  Note that if this option causes cropping, it will fail to work in barcode panels.}
  \item{outer.labels}{the default is \code{NULL}, for alternating axis labels around the perimeter.  If \code{"all"}, all labels are printed, and if \code{"none"} no labels are printed.}
  \item{outer.rot}{a 2-vector (x, y) rotating the top/bottom outer labels \code{x} degrees and the left/right outer labels \code{y} degrees. Only works for categorical labels of boxplot and mosaic panels.}
  \item{gap}{the gap between the tiles; defaulting to 0.05 of the width of a tile.}
  \item{buffer}{the fraction by which to expand the range of quantitative variables to provide plots that will not truncate plotting symbols. Defaults to 0 percent of range currently.}
  \item{reorder}{currently only support for the string \code{"cluster"}, which reorders the columns according to the output of \code{\link{hclust}}. Note that factors are coerced to numbers by replacing them with integers, which implicitly assumes what is probably an arbitrary ordering.}
  \item{cluster.pars}{a list with two elements named \code{dist.method} and \code{hclust.method}. These are passed respectively to \code{\link{dist}} and \code{\link{hclust}}. \code{NULL} is equivalent to \code{list(dist.method = "euclidean", hclust.method = "complete")}.}
  \item{stat.pars}{\code{NULL} is equivalent to \code{list(fontsize = 7, signif = 0.05, verbose = FALSE, use.color = TRUE, missing = 'missing', just = 'centre')}; \code{stat.pars\$verbose} can be \code{TRUE} (providing 5 statistics), \code{FALSE} (providing 2 statistics), or \code{NA} (nothing).  The string \code{missing} is used in summaries where there are missing values; \code{fontsize} and \code{just} control the size and justification of the text summaries (see \code{\link{grid.text}} and \code{\link{gpar}}.  The \code{use.color=FALSE} option provides an alternative summary of the strength of the correlation (see Green and Hickey (2006)).  This is only used with \code{scatter="stats")} in \code{upper.pars} and \code{lower.pars}.}
  \item{scatter.pars}{\code{NULL} is equivalent to \code{list(pch = 1, size = unit(0.25, "char"), col = "black", frame.fill = NULL, border.col = "black")}.}
  \item{bwplot.pars}{\code{NULL}, passed to \code{bwplot} for producing boxplots.}
  \item{stripplot.pars}{\code{NULL} is equivalent to \code{list(pch = 1, size = unit(0.5, 'char'), col = 'black', jitter = FALSE)}.}
  \item{barcode.pars}{\code{NULL} is equivalent to \code{list(nint = 0, ptsize = unit(0.25, "char"), ptpch = 1, bcspace = NULL, use.points = FALSE)}.}
  \item{mosaic.pars}{\code{NULL}. Currently \code{shade}, \code{gp_labels}, \code{gp}, and \code{gp_args} are passed through to \code{strucplot} for producing mosaic tiles.}
  \item{axis.pars}{\code{NULL} is equivalent to \code{list(n.ticks = 5, fontsize = 9)}.}
  \item{diag.pars}{\code{NULL} is equivalent to \code{list(fontsize = 9, show.hist = TRUE, hist.color = 'black')}.}
  \item{whatis}{default is \code{FALSE}; \code{TRUE} returns \code{whatis(x)}.}
}
\details{
In some cases, the graphics device can not be resized after production
of the plot because of the way rotation of barcodes is performed.

\code{upper.pars} and \code{lower.pars} are lists possibly containing named elements \code{'scatter'}, \code{'conditional'} and \code{'mosaic'}. Each element of the list is a string implementing the following options: \code{scatter} = exactly one of \code{('points', 'lm', 'ci', 'symlm', 'loess', 'corrgram', 'stats', 'qqplot')}; 
\code{'conditional'} = exactly one of \code{('boxplot', 'stripplot',  'barcode')}; \code{mosaic='mosaic'} (only option currently implemented).

\code{corrgram()} is just a wrapper to \code{gpairs()} producing a `corrgram' in the style of Michael Friendly.

}
\value{
If \code{whatis=TRUE}, the value is a data frame containing variable names, types, numbers of missing values, numbers of distinct values, precisions, maxima and minima.
}
\references{
Emerson, John W. (1998) "Mosaic Displays in S-PLUS: A General Implementation and a Case Study."  \emph{Statistical Computing and Graphics Newsletter} Vol. 9,No. 1, 1998.

Basford, K. E. and J. W. Tukey (1999) \emph{Graphical Analysis of Multiresponse Data: Illustrated with a Plant Breeding Trial.}

Friendly, M. (2000). \emph{Visualizing Categorical Data.} SAS Press.

Friendly, M., 2002, "Corrgrams: Exploratory displays for correlation matrices." \emph{American Statistician} 56(4), 316--324.

Green, W. A. (2006) "Loosening the CLAMP: An exploratory graphical approach to the Climate Leaf Analysis Multivariate Program." \emph{Palaeontologia Electronica} 9(2):9A.
}
\author{John W. Emerson, Walton Green; thanks to Michael Friendly for augmenting the functionality with arguments to \code{strucplot}.}
\seealso{\code{\link{pairs}}, \code{\link{splom}}, \code{\link{mosaicplot}}, \code{\link[vcd]{strucplot}}, \code{\link{bwplot}}, \code{\link{barcode}}, \code{\link{stripplot}}.}
\examples{

allexamples <- FALSE

y <- data.frame(A=c(rep("red", 100), rep("blue", 100)),
                B=c(rnorm(100),round(rnorm(100,5,1),1)), C=runif(200),
                D=c(rep("big", 150), rep("small", 50)),
                E=rnorm(200))
gpairs(y)

data(iris)
gpairs(iris)
if (allexamples) {
  gpairs(iris, upper.pars = list(scatter = 'stats'),
         scatter.pars = list(pch = substr(as.character(iris$Species), 1, 1),
                             col = as.numeric(iris$Species)),
         stat.pars = list(verbose = FALSE))
  gpairs(iris, lower.pars = list(scatter = 'corrgram'),
         upper.pars = list(conditional = 'boxplot', scatter = 'loess'),
         scatter.pars = list(pch = 20))
}

data(Leaves)
gpairs(Leaves[1:10], lower.pars = list(scatter = 'loess'))
if (allexamples) {
  gpairs(Leaves[1:10], upper.pars = list(scatter = 'stats'),
         lower.pars = list(scatter = 'corrgram'),
         stat.pars = list(verbose = FALSE), gap = 0)
  corrgram(Leaves[,-33])
}

runexample <- FALSE
if (runexample) {
  data(NewHavenResidential)
  gpairs(NewHavenResidential)
}

}
\keyword{ts}
\keyword{multivariate}
