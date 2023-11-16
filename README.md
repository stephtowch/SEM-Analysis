
<img src='logo/Hex.png' align="right" height="139" />

# Structural Equation Modelling for Psychologists

[![](https://img.shields.io/badge/Language-R-blue)](http://cran.r-project.org/)

<sub>*Last updated 2023-11-16.*</sub>

This Github repo contains codes for *Structural Equation Modelling (Latent Variables) in R for Psychologists*. As part of my research on work addiction, I ran a study that required a two-mediator serial mediation model analysis. As serial mediation studies are rare in Psychology research, I'm uploading my code which may be of use to someone as a starting point which will hopefully give you the basic tools
to construct, evaluate and compare **Structural Equation Models (SEM; w/
plots), using [`lavaan`](http://lavaan.ugent.be/)**.

This repo assumes basic competence in R (importing, structural equation
modelling, mediation, plotting, etc).

**Notes:**

- This repo contains only materials relating to *Structural Equation Modelling in R*. So although statistics are naturally discussed, the
  focus will be generally on the application and not on the theory.  

## Setup

You will need:

1.  A fresh installation of [**`R`**](https://cran.r-project.org/)
    (preferably version 4.3.1 or above).
2.  [RStudio IDE](https://www.rstudio.com/products/rstudio/download/)
    (optional, but recommended).
3.  The following packages, listed by lesson:

| R Folder                                                                                                    | Packages                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|-------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [01 Power Analysis](/01%20Power%20Analysis)                                                                 | [**`pwr`**](https://CRAN.R-project.org/package=pwr),                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| [02 SEM Model Assumptions](/02%20data%20wrangling)                                                          | [**`lavaan`**](https://CRAN.R-project.org/package=lavaan), [**`lavaanPlot`**](https://CRAN.R-project.org/package=lavaanPlot), [`dplyr`](https://CRAN.R-project.org/package=dplyr), [`tidyr`](https://CRAN.R-project.org/package=tidyr), [`knitr`](https://CRAN.R-project.org/package=knitr), [`mvnormalTest`](https://CRAN.R-project.org/package=mvnormalTest), |
| [03 SEM (Latent Variables) Two-Mediator Serial Mediation](/03%20plotting)                                   | [**`lavaan`**](https://CRAN.R-project.org/package=lavaan), [**`lavaanPlot`**](https://CRAN.R-project.org/package=lavaanPlot), [**`semPlot`**](https://CRAN.R-project.org/package=semPlot),                                                                                                                                                                                                                                                                                                              |
| [04 Careless Longstring](/04%20hypothesis%20testing%20and%20power)                                          | [**`careless`**](https://CRAN.R-project.org/package=careless),                                                                                                                                                                                                                                                                                                           |
| [05 Reliability](/05%20regression%20101)                                                                    | [`psych`](https://CRAN.R-project.org/package=psych),                                                                                                                                                                                                                                                                                                                          |
| [06 Convert IP Address to Country and plot on a map](/06%20categorical%20predictors%20and%20model%20comparison) | Requires loading Python in R                                                                                                                                                                                                                                                                                                                  |                                                                                                                                                                                                                                                                                                                                                                                                                                                        |

You can install all the packages used by running:

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

- `afex` 1.3-0 (*CRAN*)
- `BayesFactor` 0.9.12-4.4 (*CRAN*)
- `bayesplot` 1.10.0 (*CRAN*)
- `bayestestR` 0.13.1.2 (*Local version*)
- `correlation` 0.8.4 (*CRAN*)
- `datawizard` 0.8.0.7 (*Local version*)
- `dplyr` 1.1.2 (*CRAN*)
- `effectsize` 0.8.5 (*Local version*)
- `emmeans` 1.8.7 (*CRAN*)
- `finalfit` 1.0.6 (*CRAN*)
- `ggeffects` 1.3.0.5 (*Github: strengejacke/ggeffects*)
- `ggplot2` 3.4.3 (*CRAN*)
- `haven` 2.5.3 (*CRAN*)
- `Hmisc` 5.1-0 (*CRAN*)
- `insight` 0.19.3.3 (*Github: easystats/insight*)
- `marginaleffects` 0.13.0 (*CRAN*)
- `mediation` 4.5.0 (*CRAN*)
- `mice` 3.16.0 (*CRAN*)
- `modelbased` 0.8.6 (*CRAN*)
- `parameters` 0.21.1 (*CRAN*)
- `performance` 0.10.4 (*CRAN*)
- `permuco` 1.1.2 (*CRAN*)
- `psych` 2.3.6 (*CRAN*)
- `psychTools` 2.3.6 (*CRAN*)
- `pwr` 1.3-0 (*CRAN*)
- `qqplotr` 0.0.6 (*CRAN*)
- `ragg` 1.2.5 (*CRAN*)
- `readxl` 1.4.3 (*CRAN*)
- `see` 0.8.0.2 (*Local version*)
- `summarytools` 1.0.1 (*CRAN*)
- `tidyr` 1.3.0 (*CRAN*)
- `tidySEM` 0.2.4 (*CRAN*)
- `tidyverse` 2.0.0 (*CRAN*)

</details>
