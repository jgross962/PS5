# Jonathan Gross
# PS5

setGeneric("integrateIt",
           function(x = "numeric",
                    y = "numeric",
                    bounds = "numeric",
                    rule = "String"
                    ){
             standardGeneric("integrateIt")
           })


setMethod("integrateIt","x","y","bounds","rule",
          function(x,y,a,b,rule){
            
            
            ## cREATE rule to throw error if x is not sorted
            ## Create rule to make sure x and y are same length
            
            # Trapezoid Rule -- using provided formula and fixed size assumption
            if (rule == "Trap"){
              b = x[length(x)]
              a = x[1]
              width = (b-a)/(length(x)-1)
              T = width*1/2*(sum(2*y)-y[1]-y[length(y)])
              return(T)
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
              width = (b-a)/(length(x)-1)
              innerVals = 0
              if (length(y)>2){
                innerVals = y[2:length(y)]
                innerVals = innerVals[1:length(innerVals-1)]
              }
              innerFourTimesValues = innerVals[which(innerVals%%2==0)]
              S = 1/3*width * (sum(y)+sum(innerVals)+2*sum(innerFourTimesValues))
              return(S)
            }
          }
  )

integrateIt = function(x,y,a,b,rule){
  
  
  ## cREATE rule to throw error if x is not sorted
  ## Create rule to make sure x and y are same length
  
  # Trapezoid Rule -- using provided formula and fixed size assumption
  if (rule == "Trap"){
    b = x[length(x)]
    a = x[1]
    width = (b-a)/(length(x)-1)
    T = width*1/2*(sum(2*y)-y[1]-y[length(y)])
    return(T)
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
    width = (b-a)/(length(x)-1)
    innerVals = 0
    if (length(y)>2){
      innerVals = y[2:length(y)]
      innerVals = innerVals[1:length(innerVals-1)]
    }
    innerFourTimesValues = innerVals[which(innerVals%%2==0)]
    S = 1/3*width * (sum(y)+sum(innerVals)+2*sum(innerFourTimesValues))
    return(S)
  }
}

## Test Trap
firstVal = 1
lastVal = 10
x = 1:10
y = 11:20
integrateIt(x,y,firstVal,lastVal,"Trap")

x = 1:10
y = rep(1,10)
integrateIt(x,y,firstVal,lastVal,"Trap")

x = 1:4
y = 1:4
integrateIt(x,y,firstVal,lastVal,"Trap")


## Test Simpsons
x = 1:10
y = 11:20
integrateIt(x,y,firstVal,lastVal,"Simpsons")

x = 1:10
y = rep(1,10)
integrateIt(x,y,firstVal,lastVal,"Simpsons")

x = 1:4
y = 1:4
integrateIt(x,y,firstVal,lastVal,"Simpsons")
