
<!-- README.md is generated from README.Rmd. Please edit that file -->

# pasagropasr <a href='https://github.com/PAS-AGRO-PAS/pasagropasr/'><img src='man/figures/logo.png' align="right" height="138.5" /></a>

<!-- badges: start -->
<!-- [![R build -->
<!-- status](https://github.com/vcadavez/pasagropasr/workflows/R-CMD-check/badge.svg)](https://github.com/abjur/abjData/actions) -->
<!-- [![CRAN -->
<!-- status](https://www.r-pkg.org/badges/version/abjData/)](https://CRAN.R-project.org/package=abjData) -->
<!-- badges: end -->

## Overview

This package contains a set of databases obtained unde the reseach
activities of the PAS-AGRO-PAS project.

The data included comes from the research work develop by all the
PAS-AGRO-PAs partners [PAS-AGRO-PAs
partners](https://www.ipb.pt/pas-agro-pas/).

The aim of the package is to make databases available for the research
community as a resource for young research training.

## Installation

``` r
install.packages("pasagropasr")
#> Installing package into '/home/vcadavez/R/x86_64-pc-linux-gnu-library/4.3'
#> (as 'lib' is unspecified)
#> Warning: package 'pasagropasr' is not available for this version of R
#> 
#> A version of this package for your version of R might be available elsewhere,
#> see the ideas at
#> https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
## dev version
# remotes::install_github("PAS-AGRO-PAS/pasagropasr")
```

## Datasets description

| Dataset      | Description                                          |
|--------------|------------------------------------------------------|
| `lambBreeds` | Lamb carcasses measurements and tissues composition. |

## How to use

1.  Intall the `pasagropas` package
2.  Load the package (`library(pasagropasr)`) like any other R package
3.  Load the dataset (`data(lambBreeds)`) you want to use.

``` r
library(readxl)
library(tidyverse)
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.4     ✔ readr     2.1.5
#> ✔ forcats   1.0.0     ✔ stringr   1.5.1
#> ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
#> ✔ purrr     1.0.2     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
library(pasagropasr)
library(readxl)
data(lambBreeds)
```

``` r
str(lambBreeds)
#> 'data.frame':    40 obs. of  25 variables:
#>  $ Lamb : num  9810 9819 9853 9902 9905 ...
#>  $ Breed: chr  "CGB" "CGB" "CGB" "CGB" ...
#>  $ HCW  : num  14.48 13.86 9.06 9.98 10.19 ...
#>  $ F    : num  279 297 269 296 262 301 297 280 297 280 ...
#>  $ K    : num  745 753 656 730 690 799 809 770 802 735 ...
#>  $ G    : num  222 207 191 192 192 207 196 210 210 198 ...
#>  $ U    : num  651 638 561 607 582 ...
#>  $ CB   : num  598 567 504 495 500 567 536 580 559 513 ...
#>  $ C1   : num  2.7 3.2 2.8 1.3 0.9 1.5 1 1.4 1 0.5 ...
#>  $ C3   : num  5.4 4.1 2.3 2.15 4 2.6 2 3.35 2.45 1.2 ...
#>  $ C12  : num  2.3 2.1 2.5 1.5 1.45 1.4 1.2 1.7 1 0.5 ...
#>  $ BT2  : num  24.3 21.7 18.5 17.3 16.8 ...
#>  $ BT3  : num  20.4 21.7 17.6 16.3 15.9 17 20.3 20 18 13.6 ...
#>  $ BT4  : num  17.1 18.9 15.4 12.9 11.9 ...
#>  $ B1   : num  27.7 24.5 23.7 22.1 26.8 ...
#>  $ B3   : num  26.5 22.2 20.1 22.7 17.5 24.3 25.5 23.3 26.4 21 ...
#>  $ B12  : num  26.4 23.5 23.6 20.3 26.4 ...
#>  $ LEA1 : num  11.4 10.1 9.6 7.9 9.05 ...
#>  $ LEA3 : num  14.2 13.6 9.4 9.05 8.75 ...
#>  $ LEA12: num  12.8 10.75 10.1 7.15 9.7 ...
#>  $ MUS  : num  59.1 59.3 58.4 62.2 58.9 ...
#>  $ SF   : num  7.21 8.07 8.24 4.59 6.59 6.37 5.48 7.22 5.68 4.54 ...
#>  $ IF   : num  10.91 8.84 9.6 5.91 8.34 ...
#>  $ BO   : num  20.7 21.6 21.9 26.1 24.4 ...
#>  $ KKCF : num  2.1 2.11 1.83 1.18 1.79 1.92 1.77 1.93 1.51 1.32 ...
```

### Plot examples

Box-plot of carcass muscle content (%) by breed:

``` r
lambBreeds |>
  ggplot() +
  geom_boxplot(
    aes(MUS, Breed), 
    colour = "#102C68", 
    fill = "#7AD151"
  ) +
  theme(legend.position = "none") +
  theme_bw(12) +
  labs(
    x = "Muscle content (%)", 
    y = "Breed"
  )
```

<img src="man/figures/unnamed-chunk-5-1.png" width="100%" />

![](man/figures/README-fig-idhm-1.png)<!-- -->

## Requirements

`pasagropasr` requires R version greater than or equal to 3.5.

## License

`pasagropasr` is licensed under the [GNU General Public
License](https://github.com/PAS-AGRO-PAS/pasagropasr/blob/main/LICENSE).
