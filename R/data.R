#' Simulated Data
#'
#' Data from Frieman (1991) and Breiman (1996). However, here the errors were
#' generated from a 5-dimensional Gaussian distribution with zero mean and a
#' variance-covariance matrix with 4 along the diagonal and 0.8 in the
#' off-diagonal; see Zhang (1997) for details.
#'
#' \itemize{
#'   \item \code{subject}: Subject ID.
#'   \item \code{x1}: Baseline covariate.
#'   \item \code{x2}: Baseline covariate.
#'   \item \code{x3}: Baseline covariate.
#'   \item \code{x4}: Baseline covariate.
#'   \item \code{x5}: Baseline covariate.
#'   \item \code{x6}: Time-dependent covariate.
#'   \item \code{time}: Time variable.
#'   \item \code{y}: Response variable.
#' }
#' @docType data
#' @keywords datasets
#' @format A data frame with 500 rows and 9 variables
#' @name simd
#' @source
#' Breiman, Leo (1996) Bagging predictors. Machine Learning 24, pages 123-140.
#'
#' Friedman, Jerome H. (1991) Multivariate adaptive regression splines. The
#' Annals of Statistics 19(1), pages 1-67.
#'
#' Zhang, Heping (1997). Multivariate Adaptive Splines for the Analysis of
#' Longitudinal Data. Journal of Computational and Graphical Statistics, 6(1),
#' 74-91.
NULL
