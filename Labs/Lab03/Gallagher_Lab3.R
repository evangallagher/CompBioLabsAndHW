# Lab- step 3. Vectors of chips bags and guests present 
Chips <-(5)
Guests <-(8)
ChipsPerGuest <-(.4)

Guests * ChipsPerGuest

SelfRating <-c(7,6,5,1,2,3,4)
PennyRating <-c(5,7,6,3,1,2,4)
JennyRating <- c(4,3,2,7,6,5,1)
LennyRating <- c(1,7,3,4,6,5,2)
StewieRating <- c(6,7,5,4,3,1,2)

PennyIV <- PennyRating[4]
LennyIV <- LennyRating[4]

CombRatings <- cbind(SelfRating, PennyRating, JennyRating, LennyRating, StewieRating)

str(PennyIV)
str(PennyRating)
str(CombRatings)

#the str function displays the struture of a variable. The PennyIV str gave a single number 3, 
#PennyRating gave me a list of 7 different numers, finally rhe CombRatings gave a data sheet of 
#all of the different ratings from different people 

CombDat1<- data.frame(SelfRating, PennyRating, JennyRating, LennyRating, StewieRating)
CombDat2 <- as.data.frame(CombRatings)
# the cbid function takes different vectors and combines them into one "matrix" The data.frame 
# function takes different vectors and combines them into one data frame. The as.data.frame 
# function takes a matrix and combines it into one data frame 

EpisodeNames <- c("I","II","III","IV","V","VI","VII")
Episode1Rating <- CombDat1[1]
row.names(CombDat1) <-(EpisodeNames)
row.names(CombDat2) <-(EpisodeNames)
row.names(CombRatings) <-(EpisodeNames)

str(CombDat1)

CombRatings[3,]
CombDat1[,4]
CombDat1[5,1]
CombDat1[2,2]

CombDat1[c(4,5,6),]
CombDat1[c(2,5,7),]
CombDat1[c(4,6),c(2,3,5)]

CombRatings[3,2]
CombDat1["III","PennyRating"]

LennyV <- CombDat1[2,4]
CombDat1[2,4] <- CombDat1[5,4]
CombDat1[5,4] <- LennyV
