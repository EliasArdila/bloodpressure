# Data

Load Dataset.

``` r
library(bp)
```

``` r
elias <- read.csv("elias.csv", sep=",")
```

# Fitted Model
``` r 
eliasbp <- process_data(elias,sbp='syst',dbp='diast',date_time='date.time',id='id',hr='hr')
```

# Plots
``` r 
bp_ts_plots(eliasbp)[[1]]
```
![](../R/images/datetime.png)

``` r
bp_ts_plots(eliasbp)[[2]]
```
![](../R/images/hour.png)

``` r
bp_scatter(eliasbp)
```

![](../R/images/scatter.png)

``` r 
bp_hist(eliasbp)[[1]]
```
![](../R/images/hist1.png)

``` r
bp_hist(eliasbp)[[2]]
```

![](../R/images/hist2.png)

``` r
bp_hist(eliasbp)[[3]]
```

![](../R/images/hist3.png)
