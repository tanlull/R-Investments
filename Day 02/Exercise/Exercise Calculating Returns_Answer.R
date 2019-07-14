# 1. Load package require for getting financial data from Yahoo finance

library(quantmod)


# 2. Get 'BANPU' historical data from Yahoo finance use R function (from 1 Jan 2013 to 31 Dec 2017)

banpu <- getSymbols(Symbols = 'BANPU.BK', scr = 'yahoo', 
                    auto.assign = FALSE, warnings = FALSE, from = "2013-01-01", to = "2017-12-31")

# 3. Show first 3 rows of data
head(banpu, n = 3)

# 4. Calculate daily log returns and show first 3 rows

daily <- periodReturn(banpu, period = 'daily', type = 'log', leading = FALSE)

head(daily, n = 3)

# 5. Calculate monthly log returns and show first 3 rows

monthly <- periodReturn(banpu, period = 'monthly', type = 'log', leading = FALSE)

head(monthly, n = 3)