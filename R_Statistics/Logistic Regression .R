## Logistic Regression

library(dplyr)
mtcars %>%
  head()

str(mtcars)

## convert am to factor
mtcars$am <- factor(mtcars$am, 
                    levels = c(0,1),
                    labels = c("Auto", "Manual"))
class(mtcars$am)
table(mtcars$am)

## split Data
set.seed(42)
n <- nrow(mtcars)
id <- sample(1:n , size = n*0.7)
train_data <- mtcars[id, ]
test_data <- mtcars[-id, ]


# คำนวน
## train model
logit_model <- glm(am ~ mpg , data = train_data ,family = "binomial") # data ที่ใช้คือ train data /// family = "binomial" คือการทำนาย ค่าam ที่เป็นได้สองค่า 
P_logit_train <- predict(logit_model, type = "response") ## probability ค่าความน่าจะเป็น อยู่ในช่วง [0:1]
train_data$pred <- if_else(P_logit_train >= 0.5, "Manual","Auto")
train_data$am == train_data$pred
mean(train_data$am == train_data$pred)
# 81.81%


## test model
P_logit_test <- predict(logit_model, test_data , type = "response")
test_data$pred <- if_else(P_logit_test >= 0.5, "Manual","Auto")
test_data$am == test_data$pred
mean(test_data$am == test_data$pred)
# 60% 
## Over fit -> ปัญหาคือ data ไม่ได้มากพอที่จะมาสอน model ให้ออกมาดี
