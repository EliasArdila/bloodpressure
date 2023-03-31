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
![](..R/images/datetime.png)

``` r
bp_ts_plots(eliasbp)[[2]]
```
![](..R/images/hour.png)

``` r
bp_scatter(eliasbp)
```

![](..R/images/scatter.png)

``` r 
bp_hist(eliasbp)[[1]]
```
![](..R/images/hist1.png)

   | BP Stage | Systolic(mmHg) | Diastolic(mmHg) |
   | ---------|:---------------:|-----------------:|
   |  Low (optional) |	<100  |	and 	<60   |
   |  Normal  |	<120 	| and 	<80 |
   |  Elevated |	120 - 129  |	and 	<80|
   |  Stage 1 - All |	130 - 139 |	and 	80 - 89|
   |  Stage 1 - ISH (ISH - S1) | 130 - 139 | 	and 	<80|
   |  Stage 1 - IDH (IDH - S1) |	<130 	|and 	80 - 89 |
   |  Stage 2 - All  |	>140  |	and 	>90|
   |  Stage 2 - ISH (ISH - S2)  |	>140 | 	and 	<90|
   |  Stage 2 - IDH (IDH - S2) |	<140 	| and 	>90 |
   |  Crisis (optional) |	>180 | 	or 	>120|


``` r
bp_hist(eliasbp)[[2]]
```

![](..R/images/hist2.png)

``` r
bp_hist(eliasbp)[[3]]
```

![](..R/images/hist2.png)
