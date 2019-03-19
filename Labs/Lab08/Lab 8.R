n <-(2500)
K <-(10000)
r <-(.8)
nNew <-(n)

capacity<- function(n, K, r) {for(t in seq(2,12)) {
  n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )
  nNew <- n
}
  print(nNew)
time <- (1:12)
abundance <- nNew
plot(time, abundance)
}
Answer <- capacity(2500, 1000, .8)

