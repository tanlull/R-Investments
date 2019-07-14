#############################################
#                                           #
#           Capstone Project                #
#                                           #
#############################################

### Load relevant libraries
library(xts)
library(zoo)
library(quantmod)
library(PerformanceAnalytics)


### 1. Get historical data of CPALL from 01-Jan-2015 to 31-Dec-2018 from Yahoo Finance. Name it as 'cpall'
cpall   <- getSymbols(Symbols = 'CPALL.BK', src = 'yahoo', 
                    auto.assign = FALSE, getSymbols.warnings4.0 = FALSE, from = "2016-01-01", to = "2019-01-11")

head(cpall) 


### 2. Subset adjusted close price from cpall dataset and name it as 'price'
  
price <- cpall$CPALL.BK.Adjusted
head(price)  
  
### 3. Calculate daily returns from adjusted close price and name it as 'returns'. Use log return for calculation.
  
returns   <- periodReturn(price, period = 'daily', type = 'log', leading = FALSE)
head(returns)
    
### 4. Calculate mean, sd, and SharpeRatio of daily returns
  
mean.ret  <-  mean(returns, na.rm = TRUE)
head(mean.ret)

sd.ret    <- sd(returns, na.rm = TRUE)
sd.ret

sharpe    <- (mean.ret - 0.007)/sd.ret
sharpe
    
SharpeFunction  <- SharpeRatio(returns, Rf = 0.007)
SharpeFunction

SharpeRatio.annualized(returns, Rf = 0.007, scale = 12)

### 5. Technical indicator: Calculate Bollinger Bands and RSI with default parameters.

price$bband <- BBands(cpall$CPALL.BK.Adjusted, n = 20, sd=2.0)
  
head(price$bband,30)

price$rsi   <- RSI(cpall$CPALL.BK.Adjusted, n = 14)

head(price$rsi) 

### 6. Plot price with Bollinger Bands and RSI in one plot
  
chartSeries(cpall$CPALL.BK.Adjusted, theme = chartTheme("black"), TA = c(addBBands(),addRSI()))
  
### 7. Plot performance summary with cumulative returns, daily returns, and drawdown in one plot
  
charts.PerformanceSummary(returns)

### 8. Show top 10 drawdowns as a table
table.Drawdowns(returns, top = 10)
  
  