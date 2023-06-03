# filter model name -> regular expression
mtcars1 <- mtcars %>% 
  rownames_to_column() %>%
  rename(model = rowname)

# ต้องการ Model ที่ชื่อขึ้นต้นด้วยตัว M
mtcars1 %>%
  select(model,mpg, hp ,wt) %>%
  filter(grepl("^M", model)) # start with "M"

grepl("^M", mtcars1$model) #จะretrue ออกมาเป็น TRUE, FALSE
grepl("n$", mtcars1$model) #ลงท้ายด้วยตัว n
