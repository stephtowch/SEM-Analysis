#SEM (Latent Variables) Serial Mediation Model with Two Mediators (MLM - Estimation Method)

########DATA PREPROCESSING########### 

# Load the data
options(scipen = 999)
options(max.print = 1000000)
data = readr::read_csv("path/to/your/folder.csv")
View(data)
boxplot(data)

# Load the all packages
library(lavaan)
library(semPlot)
library(lavaanPlot)

########MODEL SPECIFICATION########### 

# Define the measurement model 
measurement <- '
  # Latent variable for the Independent Variable (X)
  X =~ X1 + X2 + X3 + X4 + X5 + X6 + X7
  # Latent variable for the First Mediator (M1)
  M1 =~ M1_1 + M1_2 + M1_3 + M1_4 + M1_5 + M1_6 + M1_7 + M1_8 + M1_9 + M1_10 + M1_11 + M1_12
  # Latent variable for the Second Mediator (M2)
  M2 =~ M2_1 + M2_3 + M2_5 + M2_7
  # Latent variable for the Dependent Variable (Y)
  Y =~ Y1 + Y2 + Y3 + Y4 + Y5 + Y6 + Y7 + Y8 + Y9
  # Add Post Hoc Modifications covariances here if required
  #Y1 ~~ Y7
'
# Define the structural model
structural <- '
  # Mediation paths
  M1 ~ c1*X
  M2 ~ c2*M1 + c3*X
  Y ~ c4*M2 + c5*M1 + c6*X
  # Indirect effects
  indirect1 := c1*c2
  indirect2 := c1*c2*c4
  indirect_total := indirect1 + indirect2
'

# Combine measurement and structural models
model <- paste(measurement, structural)

########ESTIMATION########### 

# Fit the model to your data (replace 'data' with the actual name of your data frame)
# MLM as data is non-normally distributed as per the Shapiro-Wilk Univariate normality test & Mardia Multivariate normaility test and no missing values.
# Alternative estimation methods to MLM depending on the dataset are ML, MLR, WLSMV. See table: https://web.pdx.edu/~newsomj/semclass/ho_estimation.pdf
fit <- sem(model, data = data, std.lv = TRUE, estimator = "MLM")

########MODEL FIT ASSESSMENT########### 

########Assessing the model fit using the Satorra-Bentler scaled chi-square######### 
#(Should be not significant, but chi-square is sensitive to sample size, it is usual practice not to make key decisions about model fit based on model chi-square statistic alone. Use set of fit indexes to make decisions about fit)
fitMeasures(fit, c("chisq.scaled", "df.scaled", "pvalue.scaled"))

########Assessing the Root Mean Square Error of Approximation (RMSEA)############### 
#It measures the discrepancy between the model-based and observed correlation matrices.
#It uses the model chi-square in its computation but makes adjustments based on model complexity (parsimony-adjusted) and has a known sampling distribution so it is possible to compute confidence intervals.           
fitMeasures(fit, c("rmsea.scaled", "rmsea.ci.lower.scaled", "rmsea.ci.upper.scaled", "rmsea.pvalue.scaled"))
#(s/b RMSEA <= .05) as the cut off for close fit; RMSEA = .05-.08 as reasonable fit; RMSEA >=.10 as poor fit. The p-value for the test of close fit s/b not significant, meaning that the hypothesis of close fit was supported.

#######Assessing the Comparative Fit Index (CFI) and the standardized root mean square residual (srmr) to assess model adequacy###########
fitMeasures(fit, c("cfi.scaled", "srmr"))
#s/b CFI >=.90 (min accepted & .95 is the ideal, 1.0 not ideal) and srmr <= .08 threshold values.

#########IF MODEL IS ACCEPTABLE, MOVE ON TO THE RESULTS ANALYSIS#############################

# View the summary of the model fit
summary(fit, fit.measures=TRUE, rsquare=TRUE)

# Plotting with semTools
lavaanPlot::lavaanPlot(model = fit, node_options = list(shape = "box", fontname = "Helvetica"),
                       edge_options = list(color = "grey"), coefs = TRUE)

# Plotting with semPlot
#semPlot::semPaths(fit) #very basic plot
semPaths(fit, "std", style = "lisrel", layout = "circle2",
         structural = TRUE)

# Inspecting the standardization (std) of the lambda (loading) parameters in an SEM model fit.
# In SEM, lambda (loading) parameters represent the relationship between latent (unobserved) variables and observed variables. Standardizing these parameters can make them easier to interpret, as they are expressed in terms of standard deviations.
inspect(fit,what="std")$lambda
inspect(fit,what="std")

#################OTHERWISE, CHECK MODIFICATION INDICIES##############################
# Check modification indicies to improve fit
#https://www.youtube.com/watch?v=WG-UuEa4Gm0
#https://www.youtube.com/watch?v=dD4PpRebASI&list=PL6lKKJXBkPSBexLGJdKTrO7sDRiktwHdi&index=13
modindices(fit, minimum.value = 10, sort = TRUE)

#Notes: Modification indices
#Citation: Cole et al., (2007) The insidious effects of failing to include design-driven correlated residuals in latent-variable covariance structure analysis. https://doi.org/10.1037/1082-989X.12.4.381
#Modification indices help us answer ‘what if?’ questions about whether freeing parameter constraints or adding paths to our models would help improve it. The modification index is the χ2
#value, with 1 degree of freedom, by which model fit would improve if a particular path was added or constraint freed. Values bigger than 3.84 indicate that the model would be ‘improved’, and the p value for the added parameter would be < .05, and values larger 10.83 than indicte the parameter would have a p vaue < .001. This does not mean that all parameters which appear in the MI table should be added, but it can be an aid to improving the model, in combination with domain or theoretical knowledge. The rule of thumb is to add parameters only when they ‘make sense’ substantively. See the notes on model improvements for more guidance.
