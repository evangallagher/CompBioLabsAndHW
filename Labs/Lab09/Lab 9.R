# Problem 1
camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", 
                    stringsAsFactors = F)

smallVec <- camData$DateTime[1:5]
FullVec <- camData$DateTime

Dates <- strptime(FullVec,format =  "%d/%m/%Y %H:%M")
replace(camData, camData$DateTime, FullVec)
head(Dates)


# Problem 2

as.numeric(format(Dates, "%Y")) >2000

for (i in 1:length(camData)) {
  if (as.numeric(format(Dates, "%Y")) >2000) {
    as.numeric(format(Dates, "%Y")) + 2000
  }
}

