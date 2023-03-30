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
![](../images/datetime.png)

``` r
bp_ts_plots(eliasbp)[[2]]
```
![](../images/hour.png)

``` r
bp_scatter(eliasbp)
```

![](../images/scatter.png)

``` r 
bp_hist(eliasbp)[[1]]
```
![](../images/hist1.png)

``` r
bp_hist(eliasbp)[[2]]
```

![](../images/hist2.png)

``` r
bp_hist(eliasbp)[[3]]
```

![](../images/hist2.png)
