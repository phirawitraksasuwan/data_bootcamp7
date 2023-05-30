library(caret)
library(tidyverse)
library(readxl)
HPIndia_2016 <-read_excel("House Price India.xlsx", sheet = 1)
View(HPIndia_2016)
HPIndia_2017 <-read_excel("House Price India.xlsx", sheet = 2)
View(HPIndia_2017)

colnames(HPIndia_2016)

colnames(HPIndia_2016) <- c("id",
                            "Date",
                            "number_of_badrooms",
                            "number_of_bathrooms",
                            "living_area",
                            "lot_area",
                            "number_of_floors",
                            "waterfront_present",
                            "number_of_views",
                            "condition_of_the_house",
                            "grade_of_the_house",
                            "Area_of_the_house",
                            "Area_of_the_basement",
                            "Built_Year",
                            "Renovation_Year",
                            "Postal_Code",
                            "Lattitude",
                            "Longitude",
                            "living_area_renov",
                            "lot_area_renov",
                            "Number_of_schools_nearby",
                            "Distance_from_the_airport",
                            "Price")

colnames(HPIndia_2017) <- c("id",
                            "Date",
                            "number_of_badrooms",
                            "number_of_bathrooms",
                            "living_area",
                            "lot_area",
                            "number_of_floors",
                            "waterfront_present",
                            "number_of_views",
                            "condition_of_the_house",
                            "grade_of_the_house",
                            "Area_of_the_house",
                            "Area_of_the_basement",
                            "Built_Year",
                            "Renovation_Year",
                            "Postal_Code",
                            "Lattitude",
                            "Longitude",
                            "living_area_renov",
                            "lot_area_renov",
                            "Number_of_schools_nearby",
                            "Distance_from_the_airport",
                            "Price")

for (i in 1:ncol(HPIndia_2016)) {
  # print(cor(HPIndia_2016[i], HPIndia_2016[23]))
  if(cor(HPIndia_2016[i], HPIndia_2016[23]) > 0.5)
    print(cor(HPIndia_2016[i], HPIndia_2016[23]))
}
## split data  80:20
n <- nrow(HPIndia_2016)
id <- sample(1:n, size = 0.9*n)

train_data <- HPIndia_2016[id, ]
test_data <- HPIndia_2016[-id, ]

# Nomalize
  #train
train_data$Price <- log(train_data$Price)

  #test
test_data$Price <- log(test_data$Price)

## train model
model <- lm(Price ~ number_of_badrooms + 
              number_of_bathrooms + 
              living_area + 
              number_of_floors + 
              waterfront_present + 
              number_of_views + 
              grade_of_the_house + 
              Area_of_the_house + 
              Renovation_Year +
              living_area_renov, data = train_data)

pred_train <- predict(model)
error_train <- train_data$Price - pred_train
sqrt((mean(error_train**2)))
pred_test <- predict(model, newdata = test_data)
error_test <- test_data$Price - pred_test
sqrt((mean(error_test**2)))
## Score 
# prediction 
pred_price <- predict(model,newdata = test_data)
##Evaluate
# Error
error_test <- test_data$Price - pred_price
sqrt(mean(error_test**2))
rmse_test <- sqrt(mean(error_test**2))



##################################################################################################
## train 
# >0.1
model_0.1 <- lm(Price ~ number_of_badrooms + 
     number_of_bathrooms + 
     living_area + 
     number_of_floors + 
     waterfront_present + 
     number_of_views + 
     grade_of_the_house + 
     Area_of_the_house + 
     Renovation_Year +
     living_area_renov, data = HPIndia_2016)

# พยายามทำ Price-> normalize

HPIndia_2016$Price <- scale(HPIndia_2016$Price)
View(HPIndia_2016)
HPIndia_2017$Price <- scale(HPIndia_2017$Price)
View(HPIndia_2017)
# >0.5
model_0.5 <- lm(Price ~  number_of_bathrooms + 
     living_area + 
     grade_of_the_house + 
     Area_of_the_house + 
     living_area_renov, 
     data = HPIndia_2016,
     #preProcess = c("center", "scale")  ##ไม่สามารถใช้function นี้กับ lm ได้ 
     )

## score
# prediction 
pred_price <- predict(model_0.1,newdata = HPIndia_2017)
##Evaluate
# Error
error_test <- HPIndia_2017$Price - pred_price
rmse_test <- sqrt(mean(error_test**2))
#######################################

# train() function
HPIndia <-read_excel("House Price India.xlsx", sheet = 1)
View(HPIndia_2016)
colnames(HPIndia) <- c("id",
                            "Date",
                            "number_of_badrooms",
                            "number_of_bathrooms",
                            "living_area",
                            "lot_area",
                            "number_of_floors",
                            "waterfront_present",
                            "number_of_views",
                            "condition_of_the_house",
                            "grade_of_the_house",
                            "Area_of_the_house",
                            "Area_of_the_basement",
                            "Built_Year",
                            "Renovation_Year",
                            "Postal_Code",
                            "Lattitude",
                            "Longitude",
                            "living_area_renov",
                            "lot_area_renov",
                            "Number_of_schools_nearby",
                            "Distance_from_the_airport",
                            "Price")
n <- nrow(HPIndia)
id <- sample(1:n, size = 0.9*n)

train_data <- HPIndia[id, ]
test_data <- HPIndia[-id, ]

train_data$Price <- scale(train_data$Price)
test_data$Price <- scale(test_data$Price)

model <- train(Price ~ number_of_badrooms + 
              number_of_bathrooms + 
              living_area + 
              number_of_floors + 
              waterfront_present + 
              number_of_views + 
              grade_of_the_house + 
              Area_of_the_house + 
              Renovation_Year +
              living_area_renov, 
              data = train_data,
              method = "lm")
model

p <- predict(model,newdata = test_data)

error <- test_data$Price - p
sqrt(mean(error**2))
