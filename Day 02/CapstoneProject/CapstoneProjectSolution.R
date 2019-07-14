#############################################
#                                           #
#       Capstone Project Solution           #
#                                           #
#############################################

### Load relevant libraries
library(quantmod)
library(xts)
library(zoo)
library(PerformanceAnalytics)
library(TTR)


### 1. Get historical data of CPALL from 01-Jan-2015 to 31-Dec-2018 from Yahoo Finance. Name it as 'cpall'

cpall     <- getSymbols(Symbols = 'CPALL.BK', src = "yahoo", from = "2015-01-01", to = "2018-12-31", 
                        warnings = FALSE, auto.assign = FALSE)
print(head(cpall, n = 5))  


### 2. Subset adjusted close price from cpall dataset and name it as 'price'

price <- Ad(cpall)
print(head(price, n = 5))  

### 3. Calculate daily returns from adjusted close price and name it as 'returns'. Use log return for calculation.

returns   <- periodReturn(price, period = "daily", type = "log", leading = TRUE)
print(head(returns, n = 5))

### 4. Calculate mean, sd, and SharpeRatio of daily returns. Use risk free rate = 0, annualize = TRUE

mean.ret  <- mean(returns)
print(mean.ret)  

sd.ret    <- sd(returns)
print(sd.ret)

sharpe    <- SharpeRatio(returns, Rf = 0, annualize = TRUE)
print(sharpe)

### 5. Technical indicator: Calculate Bollinger Bands and RSI with default parameters.

price$bband <- BBands(price$CPALL.BK.Adjusted, n = 20, sd = 2)
  
price$rsi   <- RSI(price$CPALL.BK.Adjusted, n = 14)
  
print(head(price, n = 5))  

### 6. Plot price with Bollinger Bands and RSI in one plot
chartSeries(price$CPALL.BK.Adjusted, theme = chartTheme("white"), TA = c(addBBands(), addRSI()))


### 7. Plot performance summary with cumulative returns, daily returns, and drawdown in one plot
charts.PerformanceSummary(returns)

### 8. Show top 10 drawdowns as a table
table.Drawdowns(returns, top = 10)

