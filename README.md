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

## Summary Statistics on Suspension Coils
|Total_Summary Dataframe|Lot_Summary Dataframe|
|---|---|
|![image](https://user-images.githubusercontent.com/79720695/127793049-1223d805-6c17-462d-8e7a-fef88dc898b8.png)|![image](https://user-images.githubusercontent.com/79720695/127793033-1123a07f-55a8-4fb0-b9fd-16ae13fc3432.png)|

Variance of suspension coils must not exceed 100 PSI as per MechaCar's standards. As seen in the Lot_Summary dataframe:
|Lot|Variance|Conclusion|
|---|---|---|
|Lot1|0.98|Pass|
|Lot2|7.47|Pass|
|Lot3|170.29|Fail|

## T-Tests on Suspension Coils
The manufacturer specifies the coils have a nominal value of 1,500 PSI. Performing a t-test across all manufacturing lots shows a p-value of 0.06, or in otherwords, the coils have a 6% chance of not being within this nominal value. As the general rule of thumb for statistcal conclusions requires a p-value of 0.05, it can be said that the manufacturing lots have a slight statistical difference from the population mean of 1500 PSI. Full results:

![image](https://user-images.githubusercontent.com/79720695/127793868-a507c973-eace-4562-87d3-4fd8bf12e493.png)
### T-test per lot
|Lot|T-Test|P-value|Analytical Interpretation|
|---|---|---|---|
|Lot1|![image](https://user-images.githubusercontent.com/79720695/127796521-fa19565c-9a37-49ef-95d5-36107ec06b3b.png)|1|100% probability of hypothesis (true mean is equal to 1500 can be accepted)|
|Lot2|![image](https://user-images.githubusercontent.com/79720695/127796531-e25bce81-aefc-430d-adbc-7febffd19117.png)|0.61|61% probability of hypothesis (true mean is equal to 1500 can neither be accepted nor rejected)|
|Lot3|![image](https://user-images.githubusercontent.com/79720695/127796546-8a4d5a3a-4445-4ed0-905e-fef5c34d2459.png)|0.04|4% probability of hypothesis (true mean is equal to 1500 can be rejected)|



