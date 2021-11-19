library(fpp)
library(fpp2)
library(TTR)

HICP_Norway = read.csv("C:/Users/Lenovo/Downloads/HICP_Norway.csv")
View(HICP_Norway)
class(HICP_Norway)
plot(HICP_Norway$HICP)
HICP_TS = ts(HICP_Norway$HICP, start = c(2010,1), end = c(2021,8), frequency = 12)
HICP_NorwayTS <- window(HICP_TS,start=c(2014,01))
plot(HICP_NorwayTS)
summary(HICP_NorwayTS)
boxplot(HICP_NorwayTS)
HICP_Norwaydec =decompose(HICP_NorwayTS)
HICP_Norwaydec
plot(HICP_Norwaydec)
AHIP= Acf(HICP_NorwayTS)
###Naive
HICP_Norway_naive = naive(HICP_NorwayTS, h=6)
HICP_Norway_naive
autoplot(HICP_Norway_naive)
accuracy(HICP_Norway_naive)
###SNaive
HICP_Norway_snaive = snaive(HICP_NorwayTS, h=6)
HICP_Norway_snaive
autoplot(HICP_Norway_snaive)
accuracy(HICP_Norway_snaive)
###Mean Forecast
HICP_Norway_mf = meanf(HICP_NorwayTS, h=6)
HICP_Norway_mf
autoplot(HICP_Norway_mf)
accuracy(HICP_Norway_mf)
###Moving Average
MA3 = ma(HICP_NorwayTS, 3)
plot(MA3)
MA6 = ma(HICP_NorwayTS, 6)
plot(MA6)
MA12 = ma(HICP_NorwayTS, 12)
plot(MA12)
plot(HICP_NorwayTS)
lines(MA3, col="red")
lines(MA6, col="blue")
lines(MA12, col="green")
MAforecast = forecast(MA12,n= 6)
plot(MAforecast)
accuracy(MAforecast)
###Random Walk Forecast
rwf_f = rwf(HICP_NorwayTS, 6)
rwf_f
plot(rwf_f)
###Exponential Smoothing
ets_f = ets(HICP_NorwayTS)
ets_f
plot(ets_f)
etsf <- forecast(ets_f, h=6)
plot(etsf)
accuracy(etsf)
###Holt Winters Forecast
hw_forecast_level <- HoltWinters(HICP_NorwayTS, beta=FALSE,gamma=FALSE)
hw_forecast_level
hw_forecast_trend <- HoltWinters(HICP_NorwayTS,gamma=FALSE)
hw_forecast_trend
hw_forecast_season <- HoltWinters(HICP_NorwayTS)
hw_forecast_season
plot(HICP_NorwayTS)
plot(hw_forecast_level)
plot(hw_forecast_trend)
plot(hw_forecast_season)
hw_forecast_all <- forecast(hw_forecast_season, h=6)
accuracy(hw_forecast_all)
