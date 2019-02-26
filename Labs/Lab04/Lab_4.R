#for tells there is a loop with multiple actions, i in seq tells there is a vector of 10 variabels 
#1 to 10, print specifies an action to be done with that loop 

for(i in seq(1,10) ) {
  print("hi")
}

#Tim currently has $10 in his piggy bank. Each week his parents give him an allowance of $5. Each
#week he also buys 2 packs of gum. If the packs of gum cost $1.34 each (with tax included), how
#much money will Tim have in total eight weeks from now? Write a for loop that prints 
#(to the console) his total amount of money each week for the next 8 weeks.

Bank <- (10)
allowance <- (5)
spending <-(2.68)


for(i in seq(1,8) ) {
  NewBank <- Bank + allowance - spending
  Bank <- NewBank
  print(NewBank)
}
# for tells R that I want to run the following lines of code how ever many times is in the vector 
# after the seq. NewBank tells R the equation I want done to Tims bank, Bank <- NewBank tells R 
# that I want to replace the "Bank" variable of the last time every time I want the code repeated


InitialPopulation <- (2000)
PopGrowth <- (.95)
Population <-(InitialPopulation)

for(i in seq(1,17)){
  NewPop<- Population * PopGrowth
  Population <- NewPop
  print(Population)
}

n <-(2500)
K <-(10000)
r <-(.8)
nNew <-(n)

for(t in seq(2,12)) {
  n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  nNew <- n
}
print(nNew)

# The for loop is going to over write the new n population regardless, so it is best to store n 
# as a vactor, and then make a new one equal to that to be changed

Zeros <- rep(0,18)
typeof(Zeros)

for (i in 1:length(Zeros) ) {
  Zeros[i] <- i * 3
}


Newvec <- rep(0,18)
Newvec[1] <- 1

for ( i in 2:length(Newvec)) {
  Newvec[i] <- 1 + (2*Newvec[i-1])
}
print(Newvec)

BaseVec <- rep(0,20)
BaseVec[1] <- 0
BaseVec[2] <- 1
BaseVec[3] <- 1

for (i in 3:length(BaseVec)) {
  BaseVec[i] <-  (BaseVec[i-2] + BaseVec[i-1])
}
# When using a specific place of a vector to calculate something, it is important to first, 
# always name the vector and use square brackets to call out the ith position. Then if you need
# values in different i positions, you need to keep the math inside the square brackets or it 
# will consider it a normal math problem and not a position in a vector. 

n <-(2500)
K <-(10000)
r <-(.8)
nNew <-(n)

for(t in seq(2,12)) {
  n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  nNew <- n
}
print(nNew)

time <- (1:12)
abundance <- nNew
plot(time, abundance)
