####################CARELESS PARTICIPANTS#############################
#Step 0: Load the dataset

options(scipen = 999)
options(max.print = 1000000)
data = readr::read_csv("data/data.csv")
View(data)


#Step 1: Load the package
library(careless)

#Step 2: Longstring Analysis

#Careless and Insufficient Effort in Responding Screening
#Should exclude N with equal or greater than half the length of the total items (i.e., => 50% all vars) see #https://doi.org/10.1016/j.jesp.2015.07.006

#Here we have total Vars = 19 (WITHOUT weighting and ID). Should exclude those with => 50% on all vars (i.e., 9.5 longstring value)

careless_long = longstring((subset(data, select = -c(ID))), avg = FALSE) #removes ID col
summary(careless_long) 
boxplot(careless_long)
longstring = data.frame(careless_long)
names(longstring)[names(longstring) == "careless_long"] = "LST" #renames column LST
longstring$ID = seq.int(nrow(longstring)) #adds ID var for merging later
write.csv(longstring, row.names = FALSE, "data/longstring.csv")
View(longstring)

#Step 3: IRV analysis

#irv_total = irv(subset(data, select = -c(ID, weighting)), split = TRUE, num.split = 4) #data subset to remove ID and weighting
#View(irv_total)
#boxplot(irv_total) ##produce a boxplot of the IRV for all quarters

#write.csv(irv_total, "data/data.csv")

#Literature: https://doi.org/10.1007/s10869-016-9479-0 
#The idea is that carelessness emerges when there's little variation in the SD (i.e., IRV..)

#Step 4: Merge the datasets
data2 = merge(data, longstring, by = "ID")
write.csv(data2, "data/data2.csv", row.names = FALSE)
View(data2)

#Step 5: Exclude all careless_longstring participants
table(data2$LST) #cutoff => 9.5: participants that answered invariantly on at least 50% of the study vars (9.5 vars)
data3 = subset(data2, LST < 9.5) #Deletes CIE participants
table(data3$LST)
write.csv(data3, "data/data3.csv", row.names = FALSE)
view(data3)
