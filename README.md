# MechaCar_Statistical_Analysis

The client is a automotive manufacturing company and has provided our data analytics team to review production data for exploratory analytics to uncover isnsights that may help the manufacturing team.

The client has provided two automotive datasets for exploraotry insights. The datasets were provided in CSV Format with the following information:

|MechaCar_MPG|Suspension_Coil|
|---|---|
|vehicle_length|VehicleID|
|vehcicle_weight|Manufacturing_Lot|
|spoiler_angle|PSI|
|ground_clearance|-|
|AWD|-|
|mpg|-|

The following analysis will be performed using R Studio:
- Multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Provide statistics on (PSI) of the suspension coils from manufacturing lots
- T-test analysis to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers, and a written intepretation/summary of each statistical analysis.

## Linear Regression to Predict MPG
Linear modelling summary statistics of MPG data
![image](https://user-images.githubusercontent.com/79720695/127789702-a4a1fda9-94c0-44e2-a250-0a240d0b5d10.png)
From the dataset, the following observations can be made:
- MPG has a dependant relationship with the variables: 
  |Variable|Correlation| Pr(>\|t\|)|
  |---|---|---|
  |vehicle_length |very strong |2.60e-12| 
  |ground_clearance|very strong |5.21e-8| 
  |spoiler_angle |weak|0.307|
- Slope of the linear model, are non-zero and are:
  |Variable|Slope|
  |---|---|
  |vehicle_length|-1.04e+02|
  |vehicle_weight|6.27|
  |spoiler_angle|6.88e-02|
  |ground_clearance|3.55|
  |AWD|-3.41|
 - Overall results of this linear model: the multi-variable linear regression model can be uysed to predict mpg of MechaCar prototypes. Although the results may not provide precise errors, the Multiuple R-squared value of 0.71, Adjusted R-squared value of 0.68, and p-value of 5.35e-11 is sufficiently high.
