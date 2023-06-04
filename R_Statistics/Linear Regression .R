# Y = f(x)
# mpg = f(hp)
lm(mpg ~ hp, data = mtcars)
lmFit <- lm(mpg ~ hp, data = mtcars)

###########################
> summary(lmFit)
Call:
lm(formula = mpg ~ hp, data = mtcars)

Residuals:
    Min      1Q  Median      3Q     Max 
-5.7121 -2.1122 -0.8854  1.5819  8.2360 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) 30.09886    1.63392  18.421  < 2e-16 ***
hp          -0.06823    0.01012  -6.742 1.79e-07 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.863 on 30 degrees of freedom
Multiple R-squared:  0.6024,	Adjusted R-squared:  0.5892 
F-statistic: 45.46 on 1 and 30 DF,  p-value: 1.788e-07
#################
#
new_car$mpg_predict <- predict(lmFit, new_car)
> new_car
   hp mpg_predict
1 250  13.0417910
2 320   8.2658116
3 400   2.8075493
4 410   2.1252665
5 450  -0.6038646

################
#
> summary(mtcars$hp)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   52.0    96.5   123.0   146.7   180.0   335.0
