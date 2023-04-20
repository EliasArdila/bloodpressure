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

![](images/datetime.png)


## LOESS of BP ~ Hour

![](images/hour.png)


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

![](images/hist1.png)

## Systolic

![](images/hist2.png)


## Diastolic

![](images/hist3.png)


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

![](images/sbpstages.png)


## Diastolic

![](images/dbpstages.png)

# State Space Model.

## Systolic. Local Linear. Filtered


![](images/locallinearfilter.png)


## Forecast. Smoothed State. n.Ahead=5

![](images/forecastkfas.png)


## Diastolic. Local Linear Filtered


![](images/locallinearfilterdiast.png)

## Forecast. Smoothed State. n.Ahead=5

![](images/forecastkfasdiast.png)


# Student-t Local Linear

## Systolic

![](images/studentforecastsyst.png)

## Diastolic

![](images/studentforecastdiast.png)