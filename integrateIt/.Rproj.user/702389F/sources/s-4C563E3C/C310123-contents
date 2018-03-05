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


# Simpson Class
setClass(
  Class = "Simpson",
  representation = representation (
    x = "numeric",
    y = "numeric",
    Approximation = "numeric"
  ),
  prototype = prototype(
    x = NULL,
    y = NULL,
    Approximation = NULL

  )
)

#Check User has properly created door, by checking class of input
setValidity("Simpson",function(object){
  if (class(object@x) != "numeric"){
    return("@x is not a valid value")
  }
  if (class(object@y) != "numeric"){
    return("@y is not a valid value")
  }
  if(length(object@bounds)!=2){
    return("@Must provide two values for bounds")
  }
  if (class(object@approx) != "numeric"){
    return("@x is not a valid value")
  }
  if (length(x) != length(y)){
    return("X and Y do not have the same length")
  }
})

#Set Initialize Method
setMethod("initialize","Simpson",
          function(.Object,...){
            value = callNextMethod()
            validObject(value)
            return(value)
          })
