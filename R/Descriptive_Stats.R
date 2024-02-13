#Descriptive Statistics
#Watch: https://www.youtube.com/watch?v=VjJCzeRa49w
#Watch: https://www.youtube.com/watch?v=MfN8KGQU3MI

# Load the data
options(scipen = 999)
options(max.print = 1000000)
data = readr::read_csv("C:/Users/Steph/Documents/MSc_Work_Addiction/Descriptive_Stats_26082023.csv")
View(data)
#provides min, max, mean
#summary(data)

#Descriptive stats<- n, mean, standard deviation, median, min, max, range, skew, kurtosis, srandard error
library(psych)
describe(data)

#install.packages("foreign")
library("foreign")
data = readr::read_csv("C:/Users/Steph/Documents/MSc_Work_Addiction/Descriptive_Stats_26082023.csv")

#Absolute frequencies without missing values
freq<-table(data$Gender)
#freq

#Absolute frequencies with missing values
#freq2<-table(data$Gender, exclude = NULL)

#Relative frequencies without missing values
prop<-prop.table(freq)
#prop

#Absolute frequencies without missing values
freq2<-table(data$Marital)


#Relative frequencies without missing values
prop2<-prop.table(freq2)


#Absolute frequencies without missing values
freq3<-table(data$Education)


#Relative frequencies without missing values
prop3<-prop.table(freq3)


#Absolute frequencies without missing values
freq3<-table(data$Education)


#Relative frequencies without missing values
prop3<-prop.table(freq3)


#Absolute frequencies without missing values
freq4<-table(data$profposition)


#Relative frequencies without missing values
prop4<-prop.table(freq4)

summary(data$Gender)
summary(data$Marital)
summary(data$Education)
summary(data$profposition)
cbind(freq, prop)
cbind(freq2, prop2)
cbind(freq3, prop3)
cbind(freq4, prop4)


#Mixed table (mimic SPSS)
f<-as.data.frame(freq, stringsAsFactors = FALSE)
rf<-as.data.frame(prop, stringsAsFactors = FALSE)

myTable<-f
myTable$Percent<-rf$Freq
myTable<-rbind(myTable,c("TOTAL", sum(myTable$Freq),sum(myTable$Percent)))
myTable

#SJPLOT PACKAGE
#Install and load the package:
#install.packages("sjPlot")
#library(sjPlot)
#install.packages("sjmisc")
library(sjmisc)

#Generate table:
frq(data$Gender, out="viewer")

#corr.test from psych
library(psych)

corr.test(data, method="pearson")

cormatrix <-corr.test(data, method="pearson")
print(cormatrix, short=FALSE)

write.csv(cormatrix$r, "correlations.csv")
write.csv(cormatrix$p, "p-valuess.csv")
write.csv(cormatrix$ci, "confidence intervals.csv")

#apa.cor.table from apaTable
#install.packages("apaTables")
library(apaTables)

apa.cor.table(data, "APA Correlation Table2.doc")
