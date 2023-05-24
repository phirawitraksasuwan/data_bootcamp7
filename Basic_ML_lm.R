> # split data
> train_test_split <- function(data) {
+   set.seed(42)
+   n <- nrow(data)
+   id <- sample(n, size = 0.8*n)
+   train_data <- data[id, ]
+   test_data <- data[-id, ]
+   return(list(train_data,test_data))
+ }
> 
> split_data <- train_test_split(mtcars)
> split_data[[2]]
                mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Valiant        18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
Merc 240D      24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Honda Civic    30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
Toyota Corolla 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
AMC Javelin    15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2
Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4
Ferrari Dino   19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6
> 
> # train model
> lm_model <- train(mpg ~ hp,
+       data = split_data[[1]],
+       method = "lm")
> 
> # score and evaluate
> p <- predict(lm_model,
+              newdata = split_data[[2]])
> 
> error <- split_data[[2]]$mpg - p
> rmse <- sqrt(mean(error**2))
> 
> rmse
[1] 4.658885
> lm_model
Linear Regression 

25 samples
 1 predictor

No pre-processing
Resampling: Bootstrapped (25 reps) 
Summary of sample sizes: 25, 25, 25, 25, 25, 25, ... 
Resampling results:

  RMSE    Rsquared   MAE     
  4.2868  0.6976851  3.067114

Tuning parameter 'intercept' was held constant at a value of TRUE
