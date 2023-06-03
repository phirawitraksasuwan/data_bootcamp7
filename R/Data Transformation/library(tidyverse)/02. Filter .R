# filter เขียนได้มากกว่า1 เงื่อนไข
mtcars %>% 
  select(mpg, hp , wt) %>%
  filter(mpg > 30 & hp > 100)
##  อยากดูเเค่ชื่อ 
mtcars %>% 
  select(mpg, hp , wt) %>%
  filter(mpg > 30 & hp > 100) %>%
  rownames()
# ฝากค่าไว้ใช้ได้ 
car_mpg30_hp100 <- mtcars %>% 
  select(mpg, hp , wt) %>%
  filter(mpg > 30 & hp > 100) %>%
  rownames() # ชื่อเเถว
# รถยนต์ที่มีเเรงม้ามากกว่า 100
mtcars %>% 
  filter(hp > 100)%>%
  rownames()
  
  -AND
  mtcars %>% 
  select(mpg, hp ,wt , am) %>%
  filter(mpg > 30 & am == 1)
  
  --OR
  mtcars %>% 
  select(mpg, hp ,wt , am) %>%
  filter(mpg > 30 | am == 1)
  --------
  mtcars %>% 
  select(mpg, hp ,wt , am) %>%
  filter(mpg > 30 | am == 1) %>%
  filter(mpg < 20)
