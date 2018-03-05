#' Print
#'
#' Finds integral approximation using Trapezoid Rule or Simpsons Rules
#'
#' @param a class Trapezoid or Simpson object to print the value of
#'
#' @return The integral approximation of the values as a string
#' @author Jonathan Gross
#' @note This is a very simple function
#' @examples
#'
#' x = 1:10
#' y = 11:20
#' bounds = c(1,10)
#' rule = "Simpsons"
#' obj = integrateIt(x,y,bounds,rule)
#' print(obj)
#' @rdname print
#' @aliases print





setGeneric(name="print",
           def=function(object)
           {standardGeneric("print")}
)

#' @export
setMethod(f="print", signature= "Trapezoid",
          definition = function(object){
            return(c("The Trapezoid Integral Approximation Is: ",object@approx))
          }
)

#' @export
setMethod(f= "print", signature= "Simpson",
          definition=function(object){
            return(c("The Simpson Integral Approximation Is: ",object@approx))
          }
)
