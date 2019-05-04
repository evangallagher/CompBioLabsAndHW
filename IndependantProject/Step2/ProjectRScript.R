# Kalamazoo Dataset R Script 

#Step 1 Pepare Data

Kalamazoo <- read.csv("Kalamazoo flora extinction_dataset.csv")
str(Kalamazoo)

#Convert int "status" variable into categorical "extinction" 

Kalamazoo$extinction <- factor(Kalamazoo$status)
str(Kalamazoo)

Kalamazoo$extinct <- relevel(Kalamazoo$extinction, ref = "0")

#Develop Multinomial Logistic Regression Model 
library(nnet)

mymodel <- multinom(extinct~community+lifehistory+growthform+native+rangeedge+specialization+raritycategory+rarity, data = Kalamazoo)
summary(mymodel)

#Predict 

predict(mymodel, Kalamazoo, type = "prob")

#Misclassification Error 
cm <- table(predict(mymodel), Kalamazoo$extinction)
print(cm)
1-sum(diag(cm))/sum(cm)

#2-tailed Z test 

z <- summary(mymodel)$coefficients/summary(mymodel)$standard.errors
p <- (1- pnorm(abs(z), 0, 1)) * 2
print(p)
