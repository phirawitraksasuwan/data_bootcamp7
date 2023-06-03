# Arrange = Sort Data

mtcars1 %>% 
  select(model, mpg, am)%>% 
  arrange(mpg)  # เรียงจากน้อยไปมาก
  
mtcars1 %>% 
  select(model, mpg, am)%>% 
  arrange(desc(mpg))  %>% # เรียงจากมากไปน้อย
  head()       

  # สามารถเรียงข้อมูลได้หลาย columns พร้อมกันได้
mtcars1 %>% 
  select(model, am , mpg) %>%
  arrange(am, mpg) 

mtcars1 %>% 
  select(model, mpg ,am ) %>%
  arrange(mpg, am)
