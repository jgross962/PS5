#' A Simpsons Integral Approximation Objejct
#'
#' Object of class \code{Simpson} is created by the \code{integrateIt}
#'
#'
#' An object of the class `Simpson' has the following slots:
#' \itemize{
#' \item \code{x} First Input- X values (widths)
#' \item \code{y} First Input- Y values (heights)
#' \item \code{approx} Integral Approximation as per Simpson Rule
#' }
#'
#' @author Jonathan Gross: \email{jonathan.gross@@wustl.edu}
#' @aliases Simpson-class initialize
#' @rdname Simpson
#' @export
setClass(
  Class = "Simpson",
  representation = representation (
    x = "numeric",
    y = "numeric",
    approx = "numeric"
  ),
  prototype = prototype(
    x = NULL,
    y = NULL,
    approx = NULL
  )
)


#Set Initialize Method
#' @export
setMethod("initialize","Simpson",
          function(.Object,...){
            value = callNextMethod()
            validObject(value)
            return(value)
          })

#Check User has properly created door, by checking class of input
#' @export
setValidity("Simpson",function(object){
  if (class(object@x) != "numeric"){
    return("@x is not a valid value")
  }
  if (class(object@y) != "numeric"){
    return("@y is not a valid value")
  }
  if (class(object@approx) != "numeric"){
    return("@x is not a valid value")
  }
  if (length(x) != length(y)){
    return("X and Y do not have the same length")
  }
})

