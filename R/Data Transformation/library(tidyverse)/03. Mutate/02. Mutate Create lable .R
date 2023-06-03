## mutate create lable
# am (0 = auto , 1 = manual)

mtcars1 <- mtcars1 %>% 
  mutate(am = ifelse(am == 0 , "Auto", "Manual"))
View(mtcars1)
