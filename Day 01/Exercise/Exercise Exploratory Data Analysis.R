#######################################
#                                     #
#         Exercise R1 - 2             #
#                                     #
#######################################

# Exploratory data analysis

### 1. Load 'airquality' dataset

data(airquality)

### 2. Explore structure of an 'airquality' dataset.

str(airquality)

### 3. Get the minimum, maximum, and number of missing values in the dataset

summary(airquality)
### 4. Print the first 4 rows and the last 5 rows of the dataset

print(head(airquality, n = 4))

print(tail(airquality, n = 3))

dim(airquality)

colnames(airquality)

rownames(airquality)


plot(airquality)

plot(x = airquality$Month, y = airquality$Wind, type = "p", col = "red")

cor(airquality$Month, airquality$Wind)

cor(airquality$Temp, airquality$Ozone)

plot(x = airquality$Temp, y = airquality$Ozone, type = "p", col = "red")
