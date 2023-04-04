Business-Forecasting Harmonized Index of Consumer Prices: Sugar, Jam, Honey, Chocolate, and Confectionery for Norway
- Hi, I’m Nishit Pabari
- I’m interested in Data Science and Analytics
- I’m currently learning a Masters student at Rutgers Business School majoring in Information Technology and Analytics. 
- I am currently working on a Bussines forecasting project, for which we are forecasting the HICP value for the basket goods mentioned above in Norway by processing the data from 2010-2021. The index tracks the prices of goods such as coffee, tobacco, meat, fruit, household appliances, cars, pharmaceuticals, electricity, clothing and many other widely used products. Thus it is also used as an Inflation Measure in the euro area and forecasting HICP can be used to understand inflation rates in the area.
- The project forecast could be a Point forecast but may also include a Range forecasting the possible values for HICP in the next year (2022).
- The accuracy of the forecast will be measured using one the below measures : MAD Mean Absolute Value , MSE Mean Squared Error, RMSE Root Mean Squared Error, MAPE Mean Absolute Percentage Error, MPE Mean Percentage Error
- The data was obtained from the economic research website FRED. (https://fred.stlouisfed.org/series/CP0118NOM086NEST) The frequency of the data is monthly starting from 2010 till 2021 August. The Harmonized Index of Consumer Prices category "Sugar, Jam, Honey, Chocolate, and Confectionery (01.1.8)" is a classification of nondurable goods that includes cane or beet sugar, unrefined or refined sugar, powdered sugar, crystallized sugar, or sugar lumps; jams, marmalades, chocolates etc.
- The github profile of my colleagues working on the project with me are as follows: 
Renuka Nair https://github.com/Renuka-Nair
William Cardona https://github.com/Wcard625
- Models
The project compared various models and below are some of the important ones :

 Naive,
 ETS,
 Moving Averages,
 Holt-Winters,
 ARIMA
- Conclusion
At the end of the project, we gained enough insights to conclude that Holt-Winters/ARIMA are the best models for this particular prediction as they gave a decent RMSE value (if not the best) and also gave satisfactory residual analysis. The FRED website now has the most recent HICP values for September, October and November 2021 that were not there previously. If we compare these values to the forecast outputs of ARIMA and Holt-Winters, we can see the predictions are pretty spot on.

| Month | Actual HICP | Holt-Winters | ARIMA |
|-------|------------|--------------|-------|
| Sep-21| 97.6       | 96.7         | 97.2  |
| Oct-21| 96.2       | 95.5         | 96.1  |
