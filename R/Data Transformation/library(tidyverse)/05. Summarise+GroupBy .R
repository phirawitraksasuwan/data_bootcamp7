### summarise + group by in R
### aggregate function in SQL

# การหาค่าสถิติ

mtcars %>%
  summarise(avg_mpg = mean(mpg),
            sum_mpg = sum(mpg),
            min_mpg = min(mpg),
            max_mpg = max(mpg),
            n = n() )

# Group by
mtcars1 %>%
  group_by(am) %>%
  summarise(avg_mpg = mean(mpg),
            sum_mpg = sum(mpg),
            min_mpg = min(mpg),
            max_mpg = max(mpg),
            n = n() )

# mutate 
# Group by สามารถทำได้หลาย columns  พร้อมกัน

result <- mtcars1 %>%
  mutate(vs = ifelse(vs == 0 ,"v-shapes","straight")) %>%
  group_by(am,vs) %>%
  summarise(avg_mpg = mean(mpg),
            sum_mpg = sum(mpg),
            min_mpg = min(mpg),
            max_mpg = max(mpg),
            n = n() )
View(result)
