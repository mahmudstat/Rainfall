getwd()
#Load Data
rainfall=read.csv('D:/R/R Data/Rainfall.csv')
names(rainfal)
names(rainfall)=c('Year','Winter', 'Summer', 'Rainy')
View(rainfall)
rain.winter=rainfall$Winter
rm(rainfal)
rain.summer=rainfall[,c(1,3)]
rain.rainy=rainfall[,c(1,4)]
head(rain.rainy)
#Load temperature data
temp=read.csv('D:/R/R Data/temp.csv')
View(temp)
names(temp)=c('Year','Winter', 'Summer', 'Rainy')

#Analysis of rainfall data
#Convert to ts
rain.winter.ts=ts(rain.winter, start=1966)
View(rain.winter.ts)
?ts
?plot
View(rain.winter)
x=c(1,3,2)
View(x)
library(ggplot2)
plot(rain.winter.ts, col='blue', 
     xlab='Year',ylab='Amount of Rainfall',
     main='Time Series Plot with Winter Rainfall Data')
library(TSA)
adf.test(rain.winter.ts)
plot(diff(rain.winter.ts), col='blue', 
     xlab='Year',ylab='Amount of Rainfall (with first diffrence)',
     main='Time Series Plot with Winter Rainfall Data')
adf.test(diff(rain.winter.ts))

#acf and pacf
par (mfrow=c(2,1))
acf(diff(rain.winter.ts), main='Autocorrelation function')
pacf(diff(rain.winter.ts), main='Partial Autocorrelation function')

# second commit
