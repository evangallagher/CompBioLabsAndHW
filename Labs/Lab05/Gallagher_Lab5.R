x <- c(7,5)
if (x > 5) {
  print(x)
}
  
x > 5

#For a single vector, the second command is easier. It will simply print true, if it was a data 
# frame the first one would be easier to show the answer for all values 

if(x > 5) {
  paste("Element #",x,"of X is >5")
}

str(x)
dim(x)

Vector1<- read.csv("Old_Assignments_and_Labs/Lab05/Vector1.csv")
NewVec <- Vector1
for(i in 1:length(Vector1$x)) {
  if( Vector1$x[i] < 0) {
  Vector1$x[i] <- NA
  } 
} 
# If you want to keep a copy of the file, just make a copy before running code, and then run the
# specific code. For starts the loop, "i in 1:length(vector1$x)" tells the loop for vector one on
# the first line(all the #'s) from one to the length of the frame, "if" looks at this value and 
# evaluates whether or not the value is less than one. The second set of brakets takes just the
# numbers evaluated as less than 0 and replaces them with NA 

Vector1$x[is.na(Vector1$x)] <- NaN
is.na(NewVec)

# is.na is a function that searches out na values and finds all of them. We can use this function
# to call out that values and replace them 

Vector1$x[is.nan(Vector1$x)] <- 0

length(which(Vector1 > 50 & Vector1 < 100 ) )

#Which is a function that will search out specific values in any logical test. These can be == 
# > or <. I put a length function in front to see how many of these values were in the range 
# instead of the specific places
 
FityToOneHundred <- which(Vector1 > 50 & Vector1 < 100)

write.csv(x = FityToOneHundred, file = "FiftyToOneHundred")

C02Dat <- read.csv(file = "CO2_data_cut_paste.csv")

which(C02Dat$Gas > 0 )
which(C02Dat$Total > 200 & C02Dat$Total < 300)


totalGenerations <- 1000
initPrey <- 100
initPred <- 10
a <- .01
r <- .2
m <- .05
k <- .1
n <- initPrey
p <- initPred

Time <- (1:totalGenerations)

for(t in 2:1000) {
  n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1]) 
  if(n[t] < 0) {
    n[t] <- 0
  }
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1]) 
    if(p[t] < 0) {
     p[t] <- 0
    }
}

which(n < 0)
which(p < 0)
print(n)

plot(Time, n)
lines(Time, p)

myResults <- cbind(Time, n, p)
write.csv(x = myResults, file = "myResults")
