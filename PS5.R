# Jonathan Gross
# PS5

setGeneric("integrateIt",
           function(object = "door"){
             standardGeneric("integrateIt")
           })

x = 1:10
y = 30:40

firstVal = 1
lastVal = 10

integrateIt = Function(x,y,a = min(x), b = max(x), rule){
 
  ## cREATE rule to throw error if x is not sorted
  ## Create rule to make sure x and y are same length
  
  
  if (rule = "Trap"){
    area = 0
    for (i in x[firstVal+1]:x[lastVal]){
      width = x[i]-x[i-1]
      height1 = y[i-1]
      height2 = y[i]
      area = area+ 1/2*width*(height1+height2)
      
    } 
  }
  
  
}
