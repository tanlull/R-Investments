## Install and load package

install.packages('plotly')
library(plotly)
library(quantmod)

## Get historical data for Apple stock

getSymbols("AAPL",src='yahoo')

## Convert xts data to dataframe


df <- data.frame(Date=index(AAPL),coredata(AAPL))
df <- tail(df, 50)

## basic example of ohlc charts
p <- df %>%
  plot_ly(x = ~Date, type="candlestick",
          open = ~AAPL.Open, close = ~AAPL.Close,
          high = ~AAPL.High, low = ~AAPL.Low) %>%
  layout(title = "Basic Candlestick Chart")

p
