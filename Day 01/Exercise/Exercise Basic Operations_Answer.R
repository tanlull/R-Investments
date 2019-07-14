#######################################
#                                     #
#    Exercise Basic Operations        #
#                                     #
#######################################


### 1. You bought 5 stocks at a price of 15, 125, 30, 11, 78 THB. Construct a vector of buying price and name it as 'day01'.

day01 <- c(15, 125, 30, 11, 78)
print(day01)


### 2. Day 2, your stock prices decreases by 1, 2, 3, 4, 5 THB per unit. Calculate the new price and name it as day03.

day02 <-    day01 - c(1, 2, 3, 4, 5)
print(day02)


### 3. At the end of day2, you would like to know how many stocks that have a value higher than 80THB per unit. 
### Use relational operators to find out and name it as 'higher80'.

higher80 <- day02 > 80 

print(higher80)



