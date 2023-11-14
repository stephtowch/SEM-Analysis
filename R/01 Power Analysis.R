########POWER ANALYSIS########

#Packages used: pwr or TOSTER

# Load the pwr package
library(pwr)

# Specify parameters
alpha <- 0.05         # Significance level
power <- 0.80         # Desired power
effect_size <- -0.10  # Negative correlation effect size

# Perform power analysis
pwr.r.test(n = NULL, r = effect_size, sig.level = alpha, power = power)

#Cool tutorial: https://www.youtube.com/watch?v=ZIjOG8LTTh8 (for R and ANOVA) / https://www.youtube.com/watch?v=ZEFSUm6JNQ0 (for t-tests)


#################FINDING EFFECT SIZES###################
library(pwr)

#Correlation

cohen.ES(test = "r", size = "small") #Gives a small ES for a correlation
cohen.ES(test = "r", size = "medium") #Gives a medium ES for a correlation
cohen.ES(test = "r", size = "large") #Gives a medium ES for a correlation


#General Linear Models (e.g., regression, mediation, etc)

cohen.ES(test = "f2", size = "small") #Gives a small ES for a correlation
cohen.ES(test = "f2", size = "medium") #Gives a medium ES for a correlation
cohen.ES(test = "f2", size = "large") #Gives a medium ES for a correlation

#ANOVA

cohen.ES(test = "anov", size = "small") #Gives a small ES for a correlation
cohen.ES(test = "anov", size = "medium") #Gives a medium ES for a correlation
cohen.ES(test = "anov", size = "large") #Gives a medium ES for a correlation



#################CORRELATION POWER ANALYSIS###################
rpower = pwr.r.test(r = .10, sig.level = 0.05, power = 0.8, alternative = "two.sided") #Conventional power is 0.8
rpower = pwr.r.test(r = .10, sig.level = 0.05, power = 0.8, alternative = "greater") #Conventional power is 0.8

# r = 0.10 should be based on the literature


print(rpower) #We would need approx 782 participants
#If we anticipate larger Effect Sizes expected sample reduces. See 10.1371/journal.pone.0230378 for reporting
#If we are preregistering the study/hypothesis and the effect is expected to go on a particular way then
#it is more efficient to calculate power based on a one-tailed test (e.g., alternative = "greater"/"less") - leads to lower N required
plot(rpower) #plots how power changes in function of sample size


#################GLM POWER ANALYSIS###################

#The numerator degrees of freedom, u, is the number of coefficients you'll have in your model (without the intercept) (vinheta)
#ou rodar regression no SPSS para ver o v.

glmpower = pwr.f2.test(u = 5, v = NULL, f2 = 0.02, sig.level = 0.05, power = 0.80)
print(glmpower) #The v will be the estimated sample size needed.
plot(glmpower)

#############POWER ANALYSIS WITH TOSTER FOR CORRELATIONS##########
library("TOSTER")
TOST_corr <- powerTOSTr(alpha = .05,
                        statistical_power = .8,
                        low_eqbound_r = .1,
                        high_eqbound_r = .1)
#Need more participants that the pwr package
