# Split Data (80% ; 20%)
sample(1:n , size = n*0.8) 
id <- sample(1:n , n*0.8) 
train_data <- mtcars[id, ]
test_data <- mtcars[-id, ] 

## Train model
model1 <- lm(mpg ~ hp + wt , data = train_data) 
P_mpg_train <- predict(model1)
error_train <- (train_data$mpg - P_mpg_train)
rmse_train <- sqrt(mean( error_train**2 ))

## Test model
P_mpg_test <- predict(model1 , newdata = test_data)
error_test <- (test_data$mpg - P_mpg_test)
rmse_test <- sqrt(mean(error_test**2))

cat("RMSE Train:", rmse_train , "\nRMSE Test:" ,rmse_test)

#############################
> sample(1:n , size = n*0.8) 
 [1] 28 32 15 29 25 20 31 16 22  1  6 11  9 13  5 21 30 18  2
[20] 27 24 23 17 14  7
> id <- sample(1:n , n*0.8) 
> train_data <- mtcars[id, ]
> test_data <- mtcars[-id, ] 
> 
> ## Train model
> model1 <- lm(mpg ~ hp + wt , data = train_data) 
> P_mpg_train <- predict(model1)
> error_train <- (train_data$mpg - P_mpg_train)
> rmse_train <- sqrt(mean( error_train**2 ))
> 
> ## Test model
> P_mpg_test <- predict(model1 , newdata = test_data)
> error_test <- (test_data$mpg - P_mpg_test)
> rmse_test <- sqrt(mean(error_test**2))
> 
> cat("RMSE Train:", rmse_train , "\nRMSE Test:" ,rmse_test)
RMSE Train: 2.595522 
RMSE Test: 2.032551
