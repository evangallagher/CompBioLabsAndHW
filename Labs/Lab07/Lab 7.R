# Problem 1: Area of a triangle 

triangleArea <- function(b,h){
  return(.5*b*h)
}
triangleArea(10,9)

# In this we are creating a function that is called triangle area. When entering our function in 
# the future I am only going to want two numbers; the base and the height and these are necessary.
# in the next line, we need to tell R what to do with these two numbers so we make the calculation
# below. Line 6 is an example of entering values for base and height in our triangle area. 


# Problem 2: Absolute Value 

myAbs <- function(x){
  if (x<0) {
    return(x*-1)
  }
  return(x)
}
myAbs(5)
myAbs(-2.3)
myVec <- c(1.1, 2, 0, -4.3, 9, -12)
myAbs(myVec)

for (x in 1:length(myVec)) {
  newVec<- myAbs(myVec[x])
  print(newVec)
}

# In this function we give it a single needed value to run. An if statement is put at the begining
# telling R to multiply the number by -1 only if it is less than 1. We can make it so the code 
# will still be run if x > 0 by putting another function after the curly braces of the first if. 
# you cannot run a complex function like this with a vector and just putting it in. You have to 
# run a for loop to make this function happen for each value 


# Problem 3: Fibbonacci 
BaseVec <- rep(0,20)
BaseVec[1] <- 0
BaseVec[2] <- 1
BaseVec[3] <- 1

Fib <- function(n) {
  for (i in 3:length(BaseVec)) {
    BaseVec[i] <-  (BaseVec[i-2] + BaseVec[i-1])
  }
  if (n<3) {
    newFib <- return(BaseVec)
  }
}

Fib(BaseVec)

# Still the same structure as the problem from lab 4, the function parenthesis only need a 
# single variable. The for loop is the same in structure and the if statement will only print 
# the first value is less than 3 

# Problem 4 

Square <- function(x,y) {
  return((x-y)^2)
}

Square(3,5)
Vect <- c(2,4,6)

Square(Vect,4)

# Part B

Average <- function(x) {
  return(sum(x)/ length(x))
}

Num <- c(5,15,10)

Average(Num)
Data<- read.csv("DataForLab07.csv")
str(Data)
Average(Data$x)

# Part C
SOS <- function(x) { 
  NewAve<- Average(x)
  return(x-NewAve)
}

SOS(Num)
SOS(Data$x)

sum(Data$x)

length(data)
