#########Calculate Cronbach Alphas and McDonald's Omega Coefficient for Composite reliability scores########
library(psych)
data <- read.csv("data/data.csv", header = TRUE)
head(data)

#insert column data$headings
#Cronbach Alpha and McDonald's Omega for the Independent Variable
data <- cbind(data$X1,data$X2, data$X3, data$X4, data$X5, data$X6, data$X7)
data_alpha <- alpha(data)
data_omega <- omega(data)
summary(data_alpha)
summary(data_omega)


#########Calculate Cronbach Alphas and McDonald's Omega Coefficient for Composite reliability scores########
library(psych)
data <- read.csv("data/data.csv", header = TRUE)
head(data)

#Cronbach Alpha and McDonald's Omega for the First Mediator
data <- cbind(data$M1_1, data$M1_2, data$M1_3, data$M1_4, data$M1_5, data$M1_6, data$M1_7, data$M1_8, data$M1_9, data$M1_10, data$M1_11, data$M1_12)
data_alpha <- alpha(data)
data_omega <- omega(data)
summary(data_alpha)
summary(data_omega)

#########Calculate Cronbach Alphas and McDonald's Omega Coefficient for Composite reliability scores########
library(psych)
data <- read.csv("data/data.csv", header = TRUE)
head(data)

#Cronbach Alpha and McDonald's Omega for the Second Mediator
data <- cbind(data$M2_1,data$M2_2, data$M2_3, data$M2_4, data$M2_5, data$M2_6, data$M2_7, data$M2_8, data$M2_9)
data_alpha <- alpha(data)
data_omega <- omega(data)
summary(data_alpha)
summary(data_omega)

#########Calculate Cronbach Alphas and McDonald's Omega Coefficient for Composite reliability scores########
library(psych)
data <- read.csv("data/data.csv", header = TRUE)
head(data)

#Cronbach Alpha and McDonald's Omega for the Dependent Variable
data <- cbind(data$Y1, data$Y2, data$Y3, data$Y4, data$Y5, data$Y6, data$Y7)
data_alpha <- alpha(data)
data_omega <- omega(data)
summary(data_alpha)
summary(data_omega)