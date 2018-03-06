
## Load libraries and set working directory
library(devtools)
library(roxygen2)
setwd("C:/Users/jgros/Documents/GitHub/PS5") #This will need to be changed to match your directory



## Update Package
current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)


##Examples
x=1:10
y = 11:20
bounds = c(1,10)
Rule = "Trap"
TrapObj = integrateIt(x,y,bounds,Rule)
TrapObj
print(TrapObj)

Rule = "Simpsons"
SimpsObj = integrateIt(x,y,bounds,Rule)
SimpsObj
print(SimpsObj)
