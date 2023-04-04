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

## LOESS of BP ~ Days

``` r 
bp_ts_plots(eliasbp)[[1]]
```

![](images/datetime.png)


## LOESS of BP ~ Hour


``` r
bp_ts_plots(eliasbp)[[2]]
```
![](images/hour.png)


## All BP values


``` r 
bp_hist(eliasbp)[[1]]
```

## BP Classification by (Lee et al 2000)

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


![](images/hist1.png)

## Systolic

``` r
bp_hist(eliasbp)[[2]]
```

![](images/hist2.png)

## Diastolic

``` r
bp_hist(eliasbp)[[3]]
```

![](images/hist3.png)


## Scatterplot BP  Systolic ~ Diastolic

``` r
bp_scatter(eliasbp)
```
![](images/scatter.png)

## Day of Week

![](images/daysofweek.png)

## Time of Day

![](images/timeday.png)

##  American Heart Association Classification

| Blood Pressure Category |	Systolic (mmHg) 	|	Diastolic (mmHg) |
| ---------|:---------------:|-----------------:|                     
|Low (Hypotension) | 	Less than 100  |	and 	Less than 60 |
|Normal            |	100 - 120      |	and 	60 - 80      |
|Elevated 	   |    120 - 129      |	and 	60 - 80      |
|Stage 1 Hypertension | 	130 - 139  |	or 	80 - 89      |
|Stage 2 Hypertension |	140 - 180 	   |or 	90 - 120             |
|Hypertensive Crisis  |	Higher than 180    | 	and/or 	Higher than 120 |


```r
eliasstages <- bp_stages(elias,sbp='syst',dbp='diast',bp_type="ap")
dummysbp <- table(eliasstages$SBP_CATEGORY)
dummydbp <- table(eliasstages$DBP_CATEGORY)
```

## Systolic 

```r 
df <- data.frame(dummysbp)
colnames(df) <- c("Class","Freq")
ggplot(data=df,aes(x=factor(Class,level=c("Normal","Elevated","Stage 1","Stage 2")),y=Freq,fill=Class)) +
       geom_bar(stat='identity')  +
       scale_fill_manual(values = c("Normal"="green","Elevated"="yellow","Stage 1"="orange","Stage 2"="red")) + xlab("Category") + guides(fill=guide_legend(title="SBP Category")) + theme(legend.position='none')
```

![](images/sbpstages.png)

## Diastolic

``` r
df2 <- data.frame(dummydbp)
colnames(df2) <- c("Class","Freq")
ggplot(data=df2,aes(x=Class,y=Freq,fill=Class)) +
       geom_bar(stat='identity')  +
       scale_fill_manual(values = c("Normal"="green","Elevated"="yellow","Stage 1"="orange","Stage 2"="red")) + xlab("Category") + guides(fill=guide_legend(title="DBP Category")) + theme(legend.position='none')
```

![](images/dbpstages.png)

# Blood Pressure Metrics

## Coefficient of Variation (Munter et al 2011)

![](images/coeffvar.png)


## Average Real Variability (Mena et al 2005)

![](images/avvar.png)


## Successive Variation (Munter et al 2011)

![](images/sucvar.png)


## Blood Pressure Magnitude (peak and trough) (Munter et al 2011)

![](images/pressmag.png)
