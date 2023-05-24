> data("mtcars")
> # am = f(mpg)
> 
> # prepare data
> # เปลี่ยนให้เป็น factor เเละ Auto, Manual
> mtcars$am <- factor(mtcars$am,
+                     levels = c(0,1),
+                     labels = c("Auto","Manual"))
> 
> # split data
> train_test_split <- function(data) {
+   set.seed(42)
+   n <- nrow(data)
+   id <- sample(n, size = 0.7*n)
+   train_data <- data[id, ]
+   test_data <- data[-id, ]
+   return(list(train_data, test_data))
+ }
> 
> split_data <- train_test_split(mtcars)
> 
> # train model
> glm_model <- train(am ~ mpg , # classification
+                    data = split_data[[1]],
+                    method = "glm") # Generalizes Linear Model
Warning messages:
1: glm.fit: fitted probabilities numerically 0 or 1 occurred 
2: glm.fit: fitted probabilities numerically 0 or 1 occurred 
> 
> # score and evaluate
> p <- predict(glm_model,
+              newdata = split_data[[2]])
> 
> acc <- mean(p == split_data[[2]]$am)
> 
> glm_model
Generalized Linear Model 

22 samples
 1 predictor
 2 classes: 'Auto', 'Manual' 

No pre-processing
Resampling: Bootstrapped (25 reps) 
Summary of sample sizes: 22, 22, 22, 22, 22, 22, ... 
Resampling results:

  Accuracy   Kappa    
  0.8063117  0.4721862

> acc
[1] 0.6
