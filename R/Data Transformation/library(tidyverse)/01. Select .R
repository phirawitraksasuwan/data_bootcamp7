select(mtcars, mpg, hp, wt)
select(mtcars, hp , wt)
######
# เลือกเป็นตำเเหน่ง
select(mtcars, 1,3,5)
select(mtcars, 1:5,am)
select(mtcars, mpg, cyl, disp)

### %>% pipe Operator
mtcars %>% 
  select(mpg, hp , wt)
  
--สำหรับการหาตัวอักษรในคอลัมน์นัน้ๆ
  select(mtcars, mpg, hp, wt)
select(mtcars, hp , wt)
######
# เลือกเป็นตำเเหน่ง
select(mtcars, 1,3,5)
select(mtcars, 1:5,am)
select(mtcars, mpg, cyl, disp)

### %>% pipe Operator
mtcars %>% 
  select(mpg, hp , wt)
