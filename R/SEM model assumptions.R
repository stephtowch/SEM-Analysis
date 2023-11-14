# Testing SEM Model Assumptions

########DATA PREPROCESSING########

# Load the data
options(scipen = 999)
options(max.print = 1000000)
data = readr::read_csv("C:/Users/Steph/Documents/data_SEM_TEST_26082023M1.csv") ## load csv file
head(data) ## list a first few records to check your data set


## Load Libraries
library(lavaan)
library(lavaanPlot)
library(dplyr) 
library(tidyr)
library(knitr)
library(mvnormalTest)

#########STEP 1. NORMALITY TESTING########
mvnout <- mardia(data)
## Shapiro-Wilk Univariate normality test (Use Kolmogorov-Smirnov test instead for samples n>=50)
mvnout$uv.shapiro
#Shapiro-Wilk’s method is widely recommended for normality test and it provides better power than K-S. It is based on the correlation between the data and the corresponding normal scores. Note that, normality test is sensitive to sample size. Small samples most often pass normality tests. Therefore, it’s important to combine visual inspection and significance test in order to take the right decision.
#ks.test(data, "pnorm")

## Mardia Multivariate normality test
mvnout$mv.test

#If results from both the univariate and multivariate tests indicate that the measures do not come from normally distributed univariate or multivariate distributions (the ‘No’ results in the table).
#Use the Santorra-Bentler Scaled Chi-square and Standard Errors test for SEM on continuous non-normal variables (Satorra & Bentler, 1994)
#This approach does fairly well with small samples 200-500 cases; Curran, West & Finch, 1996)
#########OTHERWISE###############
#Use Bootstrapping with SEM (bias corrected accelerated) for non-normality. Nevitt and Hancock (2001) suggest an orignial sample size of 500 or greater may be needed for stable bootstrap estimation).
#min. n = 500 or 1000 are recommended to use this bootstrap approach (large sample size)

#########STEP 2. UNIVARIATE OUTLIERS########
#Use SPSS syntax code to screen for univariate outliers using standardised z-scores. Participants are deemed univariate outliers if they score +-3.29 standard deviations from the latent variable item z-scores, as this threshold includes approximately 99.9% of the normally distributed X z-scores (Field, 2013)
#https://www.youtube.com/watch?v=UEimB41wv5E
#https://www.analyticsvidhya.com/blog/2022/08/dealing-with-outliers-using-the-z-score-method/

########STEP 3. Multivariate Outliers########
#Calculate the Malahanobis Distances to Screen for Multivariate Outliers
#https://www.statology.org/mahalanobis-distance-r/
#or use SPSS https://www.youtube.com/watch?v=cKaimZBE8sc
