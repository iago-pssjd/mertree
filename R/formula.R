#' Extract Formula Components
#'
#' Extract various components from a \code{mertree} model formula.
#'
#' @param formula A valid \code{mertree} model formula. See \code{\link{lmer}}
#'   for details.
#' @rdname formula-components
#' @export
get_response_name <- function(formula) {
  if(length(formula) < 3) {
    stop("no response")
  }
  resp <- formula[[2L]]
  if(!is.name(resp)) {
    stop("response is not a name")
  }
  deparse(resp)
}


#' @rdname formula-components
#' @importFrom lme4 nobars
#' @export
get_fixed_formula <- function(formula) {
  deparse(lme4::nobars(formula)[[3L]], width.cutoff = 500L)
}


#' @rdname formula-components
#' @importFrom lme4 findbars
#' @export
get_random_formula <- function(formula) {
  form <- paste0("(", lme4::findbars(formula), ")", collapse = " + ")
  if (form == "()") {
    NULL
  } else {
    form
  }
}


#' Make New Formula
#'
#' Build model formulas character vectors describing the response name, fixed
#' effects structure, and (if required) random effects structure of the model.
#'
#' @rdname formula-build
#'
#' @param response Character string specifying the name of the response.
#' @param fixed Character string specifying the fixed effects structure.
#' @param random Character string specifying the random effects structure.
#'
#' @export
make_lmer_formula <- function(response, fixed, random) {
  if (missing(random) || is.null(random)) {
    stats::formula(paste(response, fixed, sep = " ~ "))
  } else {
    stats::formula(paste(response, paste(fixed, random, sep = " + "), sep = " ~ "))
  }
}


#' @rdname formula-build
#' @export
make_tree_formula <- function(response, fixed) {
  stats::formula(paste(response, fixed, sep = " ~ "))
}
