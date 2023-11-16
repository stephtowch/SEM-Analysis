
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
| [01 Power Analysis](/R/01_Power_Analysis.R)                                                                 | [**`pwr`**](https://CRAN.R-project.org/package=pwr),                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| [02 SEM Model Assumptions](/02%20data%20wrangling)                                                          | [`dplyr`](https://CRAN.R-project.org/package=dplyr), [`knitr`](https://CRAN.R-project.org/package=knitr), [**`lavaan`**](https://CRAN.R-project.org/package=lavaan), [**`lavaanPlot`**](https://CRAN.R-project.org/package=lavaanPlot), [`mvnormalTest`](https://CRAN.R-project.org/package=mvnormalTest), [`tidyr`](https://CRAN.R-project.org/package=tidyr),  |
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
