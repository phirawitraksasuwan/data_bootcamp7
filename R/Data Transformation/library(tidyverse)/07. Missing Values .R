# missing values in R is NA\
# missing values
# NA (Not available)

v1 <- c(5,10,15,NA,25)
is.na(v1)

#ตัวอย่างเปลี่ยน  mtcars บางตัวให้เป็น NA
data(mtcars) #คือการเรียก mtcars vertion original ออกมาใหม่
mtcars [5,1] <- NA

mtcars %>%
  filter(is.na(mpg))

mtcars %>%
  select(mpg, hp, wt) %>%
  #filter(is.na(mpg)) #filter missing values
  filter(!is.na(mpg)) #filter ที่ไม่เป็น missing values
# เครื่องหมายตกใจ !  คือ not

# ไม่สามารถหาค่าทางสถิติได้ถ้า มี missing values อยู่ใน columns นั้นๆ

mtcars %>% 
  summarise(avg_mpg = mean(mpg))

# ต้อง remove ก่อนถึงจะหาค่าได้ ด้วย function na.rm = TRUE
mtcars %>%
  summarise(avg_mpg = mean(mpg, na.rm = TRUE))
# na.rm -> จงลบ missing values ก่อนหาค่าเฉลี่ยของ mpg

#หรือใช้ filter ลบ missing values ทิ้งไปก่อน
mtcars %>%
  filter(! is.na(mpg)) %>%
  summarise(avg_mpg = mean(mpg))

mean_mpg <- mtcars %>%
  summarise(mean(mpg, na = T))%>%
  pull()
#pull -> ดึงค่ามาอย่างเดียว ไม่ต้องดึงชื่อ columns มาด้วย
