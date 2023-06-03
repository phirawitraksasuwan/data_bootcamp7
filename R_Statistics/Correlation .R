### Correlation 

head(mtcars)

#pearson
cor(mtcars$mpg, mtcars$hp)
cor(mtcars$hp, mtcars$mpg)
#  ความสัมพันธ์อะไรก่อนหลังก็ได้มีผลเหมือนกัน 

plot(mtcars$mpg, mtcars$hp , pch = 16) # pch = ความหน่าของจุด
# ก่อนหลังมีผลต่างกัน  ก่อนเเก่น x , หลังเเก่น y
plot(mtcars$hp, mtcars$mpg , pch = 16)
plot(mtcars$wt, mtcars$mpg , pch = 16)
plot(mtcars$wt, mtcars$hp , pch = 16)

## correlation matrix
cor(mtcars[ , c("mpg", "wt", "hp")])

mtcars[  , c("mpg", "wt", "hp")] # ดึงมา3Columns ที่ว่างๆคือ ทุก Row

## dplyr
library(dplyr)
# ไปท์ %>%

mtcars %>%
  select(mpg, wt, hp) %>% 
  cor()

cor(mtcars$hp, mtcars$mpg)
cor.test(mtcars$hp, mtcars$mpg) # Pearson's product-moment correlation 
## cor.test ค่าที่ต้องการออกมาหมด p-value ถ้า p-value < 0.05 ถือว่าใช้ได้
### confidence interval ช่วงความเชื่อมั่นโดยมั่นใจได้เเค่ 95% 

######################################################################
# ตัวอย่าง Multiple Correlation
> cor(mtcars[ , c("mpg", "wt", "hp")])
           mpg         wt         hp
mpg  1.0000000 -0.8676594 -0.7761684
wt  -0.8676594  1.0000000  0.6587479
hp  -0.7761684  0.6587479  1.0000000

# ตัวอย่าง Multiple Correlation อีก1วิธี โดย Pipes
> mtcars %>%
+   select(mpg, wt, hp) %>% 
+   cor()
           mpg         wt         hp
mpg  1.0000000 -0.8676594 -0.7761684
wt  -0.8676594  1.0000000  0.6587479
hp  -0.7761684  0.6587479  1.0000000
