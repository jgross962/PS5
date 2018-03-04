# Jonathan Gross
# PS5

setGeneric("integrateIt",
           function(x = "numeric",
                    y = "numeric",
                    ){
             standardGeneric("integrateIt")
           })


setMethod("integrateIt","x","y",c(a,b)
          function(object){
            #Create the winning door with random value
            WinningDoor = new("Door",DoorNumber = floor(runif(1,1,4)))
            #Print Appropriate Output
            if(WinningDoor@DoorNumber == object@DoorNumber){
              return("Congratulations You've Won A Car")
            }else{
              return("I'm Sorry You Didn't Win")
            }
          })

integrateIt = function(x,y,a,b,rule){
  
  
  ## cREATE rule to throw error if x is not sorted
  ## Create rule to make sure x and y are same length
  
  # Trapezoid Rule
  if (rule == "Trap"){
    b = x[length(x)]
    a = x[1]
    width = (b-a)/(length(x)-1)
    T = width*1/2*(sum(2*y)-y[1]-y[length(y)])
    return(T)
    
    
  }
}


firstVal = 1
lastVal = 10
x = 1:10
y = 30:40
integrateIt(x,y,firstVal,lastVal,"Trap")

x = 1:10
y = rep(1,10)
integrateIt(x,y,firstVal,lastVal,"Trap")

x = 1:4
y = 1:4
integrateIt(x,y,firstVal,lastVal,"Trap")

## Actual Trapezoid Rule
  area=0
  for (i in x[2]:x[length(x)]){
    width = x[i]-x[i-1]
    height1 = y[i-1]
    height2 = y[i]
    area <<- area+ 1/2*width*(height1+height2)
  } 
  area
  

