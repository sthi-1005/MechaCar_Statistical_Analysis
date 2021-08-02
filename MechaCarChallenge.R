library(dplyr)
mpg<-read.csv(file='MechaCar_mpg.csv')
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg)
summary_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg) %>% summary()

library(tidyverse)
coil<-read.csv(file='Suspension_Coil.csv')
total_summary<-coil%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary<-coil%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

t.test(coil$PSI,mu=1500)
t.test(subset(coil,subset=Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(coil,subset=Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(coil,subset=Manufacturing_Lot=="Lot3")$PSI,mu=1500)
