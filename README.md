
<img src='logo/Hex.png' align="right" height="139" />

# Structural Equation Modelling for Psychologists  <img src="https://media.giphy.com/media/WUlplcMpOCEmTGBtBW/giphy.gif" width="30">

[![](https://img.shields.io/badge/Language-R-blue)](http://cran.r-project.org/)

<sub>*Last updated 2023-11-16.*</sub>

This GitHub repository contains R code for conducting Structural Equation Modeling (SEM) with a focus on latent variables, specifically tailored for psychologists. The analysis includes a two-mediator serial mediation model that I applied in my research on work addiction. As serial mediation studies are rare in Psychology research, I'm uploading my code which may be of use to someone as a starting point which will hopefully give you the basic tools to construct, evaluate and compare **Structural Equation Models (SEM; w/plots), using [`lavaan`](http://lavaan.ugent.be/)**. This repository assumes basic competence in R (importing, structural equation, modelling, mediation, plotting, etc) and contains only materials relating to *Structural Equation Modelling in R*. So the focus will be generally on the application and not on the theory.  

## Overview

The repository is organised into the following sections:

- **[01 Power Analysis](/R/01_Power_Analysis.R)**: Script for power analysis using the `pwr` package.
- **[02 SEM Model Assumptions](/R/02_SEM_Model_Assumptions.R)**: Script for data wrangling and assumptions testing using `dplyr`, `knitr`, `lavaan`, `lavaanPlot`, `mvnormalTest`, and `tidyr`.
- **[03 SEM (Latent Variables) Two-Mediator Serial Mediation](/R/03_SEM_(Latent_Variables)_Two-Mediator_Serial_Mediation.R)**: Script for actual SEM analysis using `lavaan`, `lavaanPlot`, and `semPlot`.
- **[04 Careless Longstring](/R/04_Careless_Longstring.R)**: Script to detect careless participants within the dataset using the `careless` package.
- **[05 Reliability](/R/05_Reliability_(Cronbach's_Alpha_and_McDonald's_Omega_Coefficients).R)**: Script for calculating Cronbach's Alpha and McDonald's Omega coefficients using the `psych` package.
- **[06 Convert IP Address to Country and plot on a map](/R/06_Convert_IP_Address_to_Country_and_plot_on_map.R)**: Script for converting IP addresses to countries and plotting on a map (requires loading Python in R).


## Setup

To run the code, you will need:

1. A fresh installation of [**`R`**](https://cran.r-project.org/) (preferably version 4.3.1 or above).
2. [RStudio IDE](https://www.rstudio.com/products/rstudio/download/) (optional but recommended).
3. Install the required packages by running:

   ```R
   # in alphabetical order:
   pkgs <- c(
     "careless", "dplyr", "knitr", "lavaan", "lavaanPlot", "mvnormalTest",
     "psych", "pwr", "semPlot", "tidyr"
   )

   install.packages(pkgs, repos = c("https://easystats.r-universe.dev", getOption("repos")))

<details>
<summary>
<i>Package Versions</i>
</summary>

Run on Windows 11 x64 (build 22621), with R version 4.3.1.

The packages used here:

- `careless` 1.2.2(*CRAN*)
- `dplyr` 1.1.3 (*CRAN*)
- `knitr` 1.45 (*CRAN*)
- `lavaan` 0.6-16 (*CRAN*)
- `lavaanPlot` 0.6.2 (*CRAN*)
- `mvnormalTest` 1.0.0 (*CRAN*)
- `psych` 2.3.9 (*CRAN*)
- `pwr` 1.3-0 (*CRAN*)
- `semPlot` 1.1.6 (*CRAN*)
- `tidyr` 1.3.0 (*CRAN*)

</details>
