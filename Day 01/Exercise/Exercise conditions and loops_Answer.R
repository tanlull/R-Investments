
# 1. If-else
#Calculate BMI from weight and height and print the condition

weight <- 55   #Input your weight in kg
height <- 1.68   #Input your height in cm
  
BMI    <- weight/(height)^2

if(BMI < 18.5){
  
  print("Let's eat fried chicken.")
  
}else if(BMI <= 24.9){
  
  print("You're a supermodel.")
  
}else{
  
  print("Let's work out.")
  
}


# 2. For Loop - use for loop to calculate BMI of 5 persons and store it in BMIvector

weight2   <- c(45, 55, 65, 75, 85)
height2   <- c(1.60, 1.63, 1.70, 1.50, 1.53)
BMIvector <- double()

for(i in 1:length(weight2)){
  
  BMIvector[i] <- weight2[i]/height2[i]^2
    
}

print(BMIvector)
