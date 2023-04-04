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

[//]:<>(![](images/datetime.png))

<p align="center" width="100%">
   <img width="50%" src="images/datetime.png"> 
</p>

## LOESS of BP ~ Hour

[//]:<>(![](images/hour.png))

<p align="center" width="100%">
   <img width="50%" src="images/hour.png"> 
</p>


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

## All BP values

[//]:<>(![](images/hist1.png))

<p align="center" width="100%">
   <img width="50%" src="images/hist1.png"> 
</p>


## Systolic

[//]:<>(![](images/hist2.png))

<p align="center" width="100%">
   <img width="50%" src="images/hist2.png"> 
</p>


## Diastolic

[//]:<>(![](images/hist3.png))

<p align="center" width="100%">
   <img width="50%" src="images/hist3.png"> 
</p>


## Scatterplot BP  Systolic ~ Diastolic


[//]:<>(![](images/scatter.png))

<p align="center" width="100%">
   <img width="50%" src="images/scatter.png"> 
</p>


## Day of Week

[//]:<>(![](images/daysofweek.png))

<p align="center" width="100%">
   <img width="80%" src="images/daysofweek.png"> 
</p>


## Time of Day

[//]:<>(![](images/timeday.png))

<p align="center" width="100%">
   <img width="80%" src="images/timeday.png"> 
</p>


##  American Heart Association Classification

| Blood Pressure Category |	Systolic (mmHg) 	|	Diastolic (mmHg) |
| ---------|:---------------:|-----------------:|                     
|Low (Hypotension) | 	Less than 100  |	and 	Less than 60 |
|Normal            |	100 - 120      |	and 	60 - 80      |
|Elevated 	   |    120 - 129      |	and 	60 - 80      |
|Stage 1 Hypertension | 	130 - 139  |	or 	80 - 89      |
|Stage 2 Hypertension |	140 - 180 	   |or 	90 - 120             |
|Hypertensive Crisis  |	Higher than 180    | 	and/or 	Higher than 120 |


## Systolic 

[//]:<>(![](images/sbpstages.png))

<p align="center" width="100%">
   <img width="50%" src="images/sbpstages.png"> 
</p>


## Diastolic

[//]:<>(![](images/dbpstages.png))

<p align="center" width="100%">
   <img width="50%" src="images/dbpstages.png"> 
</p>


# Blood Pressure Metrics

## Coefficient of Variation (Munter et al 2011)

![](images/coeffvar.png)


## Average Real Variability (Mena et al 2005)

![](images/avvar.png)


## Successive Variation (Munter et al 2011)

![](images/sucvar.png)

## Blood Pressure Magnitude (peak and trough) (Munter et al 2011)

![](images/pressmag.png)
