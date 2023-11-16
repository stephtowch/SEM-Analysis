
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

| Lesson                                                                                                      | Packages                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|-------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [01 Power Analysis](/01%20Power%20Analysis)                                                                 | [**`pwr`**](https://CRAN.R-project.org/package=pwr),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| [02 SEM Model Assumptions](/02%20data%20wrangling)                                                          | [**`lavaan`**](https://CRAN.R-project.org/package=lavaan), [**`lavaanPlot`**](https://CRAN.R-project.org/package=lavaanPlot), [`dplyr`](https://CRAN.R-project.org/package=dplyr), [`tidyr`](https://CRAN.R-project.org/package=tidyr), [`knitr`](https://CRAN.R-project.org/package=knitr), [`mvnormalTest`](https://CRAN.R-project.org/package=mvnormalTest), |
| [03 SEM (Latent Variables) Two-Mediator Serial Mediation](/03%20plotting)                                   | [**`semPlot`**](https://CRAN.R-project.org/package=semPlot),                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| [04 hypothesis testing and power](/04%20hypothesis%20testing%20and%20power)                                 | [**`effectsize`**](https://CRAN.R-project.org/package=effectsize), [**`correlation`**](https://CRAN.R-project.org/package=correlation), [**`BayesFactor`**](https://CRAN.R-project.org/package=BayesFactor), [`dplyr`](https://CRAN.R-project.org/package=dplyr), [**`pwr`**](https://CRAN.R-project.org/package=pwr), [`ggplot2`](https://CRAN.R-project.org/package=ggplot2)                                                                                                                                                                                                                                                                                                                    |
| [05 regression 101](/05%20regression%20101)                                                                 | [`effectsize`](https://CRAN.R-project.org/package=effectsize), [`parameters`](https://CRAN.R-project.org/package=parameters), [**`performance`**](https://CRAN.R-project.org/package=performance), [**`ggeffects`**](https://CRAN.R-project.org/package=ggeffects), [**`psychTools`**](https://CRAN.R-project.org/package=psychTools)                                                                                                                                                                                                                                                                                                                                                             |
| [06 categorical predictors and model comparison](/06%20categorical%20predictors%20and%20model%20comparison) | [`dplyr`](https://CRAN.R-project.org/package=dplyr), [`parameters`](https://CRAN.R-project.org/package=parameters), [**`emmeans`**](https://CRAN.R-project.org/package=emmeans), [`ggeffects`](https://CRAN.R-project.org/package=ggeffects), [**`bayestestR`**](https://CRAN.R-project.org/package=bayestestR), [`performance`](https://CRAN.R-project.org/package=performance)                                                                                                                                                                                                                                                                                                                  |
| [07 moderation and curvilinear](/07%20moderation%20and%20curvilinear)                                       | [`dplyr`](https://CRAN.R-project.org/package=dplyr), [`datawizard`](https://CRAN.R-project.org/package=datawizard), [`parameters`](https://CRAN.R-project.org/package=parameters), [`performance`](https://CRAN.R-project.org/package=performance), [`bayestestR`](https://CRAN.R-project.org/package=bayestestR), [`emmeans`](https://CRAN.R-project.org/package=emmeans), [`ggeffects`](https://CRAN.R-project.org/package=ggeffects), [`ggplot2`](https://CRAN.R-project.org/package=ggplot2), [**`modelbased`**](https://CRAN.R-project.org/package=modelbased)                                                                                                                               |
| [08 generalized linear models](/08%20generalized%20linear%20models)                                         | [`dplyr`](https://CRAN.R-project.org/package=dplyr), [`parameters`](https://CRAN.R-project.org/package=parameters), [`performance`](https://CRAN.R-project.org/package=performance), [`ggeffects`](https://CRAN.R-project.org/package=ggeffects), [`emmeans`](https://CRAN.R-project.org/package=emmeans), [**`marginaleffects`**](https://CRAN.R-project.org/package=marginaleffects)                                                                                                                                                                                                                                                                                                            |
| [09 assumption checks and violations](/09%20assumption%20checks%20and%20violations)                         | [`ggeffects`](https://CRAN.R-project.org/package=ggeffects), [`performance`](https://CRAN.R-project.org/package=performance), [**`see`**](https://CRAN.R-project.org/package=see), [**`bayesplot`**](https://CRAN.R-project.org/package=bayesplot), [**`qqplotr`**](https://CRAN.R-project.org/package=qqplotr), [`datawizard`](https://CRAN.R-project.org/package=datawizard), [**`permuco`**](https://CRAN.R-project.org/package=permuco), [`parameters`](https://CRAN.R-project.org/package=parameters), [**`insight`**](https://CRAN.R-project.org/package=insight)                                                                                                                           |
| [10 ANOVA](/10%20ANOVA)                                                                                     | [**`afex`**](https://CRAN.R-project.org/package=afex), [`emmeans`](https://CRAN.R-project.org/package=emmeans), [`effectsize`](https://CRAN.R-project.org/package=effectsize), [`ggeffects`](https://CRAN.R-project.org/package=ggeffects), [`tidyr`](https://CRAN.R-project.org/package=tidyr)                                                                                                                                                                                                                                                                                                                                                                                                   |
| [11 mediation](/11%20mediation)                                                                             | [**`mediation`**](https://CRAN.R-project.org/package=mediation), [**`tidySEM`**](https://CRAN.R-project.org/package=tidySEM)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |

<sub>*(Bold denotes the first lesson in which the package was
used.)*</sub>

You can install all the packages used by running:

    # in alphabetical order:

    pkgs <- c(
      "afex", "BayesFactor", "bayesplot", "bayestestR", "correlation",
      "datawizard", "dplyr", "effectsize", "emmeans", "finalfit", "ggeffects",
      "ggplot2", "haven", "Hmisc", "insight", "marginaleffects", "mediation",
      "mice", "modelbased", "parameters", "performance", "permuco",
      "psych", "psychTools", "pwr", "qqplotr", "ragg", "readxl", "see",
      "summarytools", "tidyr", "tidySEM", "tidyverse"
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
