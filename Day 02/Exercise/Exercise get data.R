#############################################
#                                           #
#          Exercise Get Data                #
#                                           #
#############################################


# 1. Load package require for getting financial data from Yahoo finance

library(quantmod)


# 2. Get 'CPALL' historical data from Yahoo finance use R function (from 1 Jan 2013 to 31 Dec 2015)

data <- getSymbols(Symbols = 'CPALL.BK', scr = 'yahoo', 
                   auto.assign = FALSE, warnings = FALSE, from = "2013-01-01 ", to = Sys.Date())

# 3. Show first 3 rows of data
head(data, n = 3)

# 4. Show last 3 rows of data
tail(data, n = 3)

plot(Ad(data))
plot(Cl(data))
