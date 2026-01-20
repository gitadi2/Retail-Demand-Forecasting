library(forecast)
library(ggplot2)

data <- read.csv("../data/walmart_sales.csv")

data$Date <- as.Date(data$Date)

weekly_sales <- aggregate(Weekly_Sales ~ Date, data, sum)

ts_data <- ts(weekly_sales$Weekly_Sales, frequency = 52)

plot(ts_data)

arima_model <- auto.arima(ts_data)
summary(arima_model)

ets_model <- ets(ts_data)
summary(ets_model)

cat("----- ARIMA Accuracy -----\n")
print(accuracy(arima_model))

cat("----- ETS Accuracy -----\n")
print(accuracy(ets_model))

plot(forecast(arima_model, h = 52))

future_forecast <- forecast(arima_model, h = 52)

write.csv(future_forecast$mean,
          "../outputs/r_forecast_validation.csv",
          row.names = FALSE)
