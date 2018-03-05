
## Load libraries and set working directory
library(devtools)
library(roxygen2)
setwd("C:/Users/jgros/Documents/GitHub/PS5") #This will need to be changed to match your directory

## This is run once when the package strcuture is first created


## At this point put the *.R files into the correct directories and edit the DESCRIPTION file

## Let's look through the R directory in this order:

# Now the NAMESPACE

## This can be run many times as the code is updates
current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)

## Let's look at a function
integrateIt

## Let's try it out
x=1:10
y = 11:20
bounds = c(1,10)
Rule = "Trap"
TrapObj = integrateIt(x,y,bounds,Rule)
print(TrapObj)

Rule = "Simpsons"
SimpsObj = integrateIt(x,y,bounds,Rule)
