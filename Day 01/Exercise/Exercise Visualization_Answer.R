# 1.

library(ggplot2)
data(diamonds)
head(diamonds, n = 3)


# 2.

plot(x = diamonds$y, diamonds$price)


# 3.

plot(x = diamonds$y, diamonds$price,
     main = "Relationship of diamond price and diamond width", #Chart title
     xlab = "Diamond width (mm)",                              #x-axis label
     ylab = "Diamond price (USD)",                             #y-axis label
     col  = "aquamarine")                                      #color of plot