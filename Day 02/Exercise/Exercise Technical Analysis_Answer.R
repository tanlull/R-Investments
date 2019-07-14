##### Exercise R2-3 Answer #####

# 1. Load 4 packages related to constructing technical indicators and handling time series data
library(quantmod)
library(TTR)
library(xtx)
library(zoo)


# 2. Get historical data of 'KTB' from '2013-01-01' to '2018-12-31' and name it as 'ktb'

ktb <- getSymbols(Symbols = 'KTB.BK', src = 'yahoo', from = "2013-01-01", to = "2018-12-31" , auto.assign = FALSE)


# 3. Contruct Bollinger bands and MACD indicators from adjusted closed price 
###Bolling bands with moving averape of 20 days and sd of 2
bband <- BBands(Ad(ktb), n = 20, sd = 2)

###MACD with fast moving average of 12 days and slow moving average of 26 days, signal 9 days
macd  <- MACD(Ad(ktb), nFast = 12, nSlow = 26, nSig = 9, maType = SMA)

# 4. Plot adjusted close price with Bolling Bands and MACD with charSeries( ) function
chartSeries(Ad(ktb), theme = chartTheme("white"), TA = c(addBBands(), addMACD()))
