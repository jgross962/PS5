#' Adding squared values
#'
#' Finds the sum of squared numbers
#'
#' @param x A numeric object representing x values
#' @param y A numeric object representing y values with the same dimensionality as \code{x}.
#' @param bounds a numeric vector of upper and lower bounds to integrate on
#' @param rule a String that determines whether to integrate using Simpsons rule or Trapezoid Rule
#'
#' @return An object of either class Trapezoid or Simpson containinig x, y and integral values
#' \item \code{x} First Input- X values (widths)
#' \item \code{y} First Input- Y values (heights)
#' \item \code{approx} Integral Approximation as per Trapezoid Rule
#' @author Jonathan Gross
#' @note This is a very simple function
#' @examples
#'
#' x = 1:10
#' y = 11:20
#' bounds = c(1,10)
#' rule = "Simpsons"
#' integrateIt(x,y,bounds,rule)
#' @rdname integrateIt
#' @aliases intregrateIt

#' @export
setGeneric("integrateIt",
           function(x = "numeric",
                    y = "numeric",
                    bounds = c(1,length(x)),
                    rule = "String"
           ){
             standardGeneric("integrateIt")
           })

#' @export
setMethod("integrateIt",
          function(x,y,bounds,rule){

            ## CREATE rule to throw error if x is not sorted
            ## Create rule to make sure x and y are same length

            # Trapezoid Rule -- using provided formula and fixed size assumption
            if (rule == "Trap"){
              b = x[length(x)]
              a = x[1]
              ## Formula should be divided by length(x)-1, not length(x) since there are x-1 trapezoids
              width = (b-a)/(length(x)-1)
              T = width*1/2*(sum(2*y)-y[1]-y[length(y)])
              traps = new("Trapezoid", x=x,y=y, approx=T)
              return(traps)
            }

            ## Actual Trapezoid Rule -- if not all fixed size
            # area=0
            # for (i in x[2]:x[length(x)]){
            #   width = x[i]-x[i-1]
            #   height1 = y[i-1]
            #   height2 = y[i]
            #   area <<- area+ 1/2*width*(height1+height2)
            # }
            # area



            if (rule == "Simpsons"){
              b = x[length(x)]
              a = x[1]
              ## Formula should be divided by length(x)-1, not length(x) since there are x-1 trapezoids
              width = (b-a)/(length(x)-1)
              innerVals = 0
              if (length(y)>2){
                innerVals = y[2:length(y)]
                innerVals = innerVals[1:length(innerVals-1)]
              }
              innerFourTimesValues = innerVals[which(innerVals%%2==0)]
              S = 1/3*width * (sum(y)+sum(innerVals)+2*sum(innerFourTimesValues))
              Simps = new("Simpson", x=x,y=y, approx=S)
              return(Simps)
            }
          }
)
