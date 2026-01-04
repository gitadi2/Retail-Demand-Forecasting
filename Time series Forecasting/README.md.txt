** Walmart Weekly Sales Forecasting **

## Project Goal
Predict weekly sales for Walmart stores using time series forecasting (ARIMA model).

## Dataset
- Source: Kaggle
- Columns: Store, Dept, Date, Weekly_Sales, IsHoliday

## Steps Taken
1. Data Loading & Cleaning
   - Converted Date column to datetime
   - Aggregated Weekly_Sales across stores and departments
2. Visualization
   - Total weekly sales plot
   - Rolling mean trend
   - Seasonal decomposition
3. Train-Test Split
   - Last 52 weeks used as test data
4. Stationarity Check
   - Augmented Dickey-Fuller (ADF) test
5. Model Training
   - ARIMA(1,0,1) model on training data
6. Forecasting & Evaluation
   - Forecasted test data
   - RMSE calculated
7. Future Forecast
   - Forecasted next 12 months
   - Saved forecast as `future_forecast.csv`

## Skills Used
- Python: pandas, matplotlib, seaborn
- Time series analysis: ARIMA, trend & seasonality decomposition
- Forecasting & evaluation metrics
