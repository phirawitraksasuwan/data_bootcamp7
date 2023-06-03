## create dataframe from scratch
# case_when
DF <- data.frame(
  id = 1:5 ,
  country = c("Thailand", "Korea", "Japan","USA", "Belgium")
)
DF %>%
  mutate(region = case_when(
    country %in% c("Thailand", "Korea", "Japan") ~ "Asia",
    country == "USA" ~ "America",
    country == "Belgium" ~ "Europe" # TRUE ~ "Other Regions" -> ประเทศอื่นจะเเสดงเป็น Other Regions
  ))
# %in% -> อยู่ใน
# ถ้าเกิด ประเทศ อยู่ใน list นี้
# ~ then
DF2 <- data.frame(id = 6:8,
                  country = c("Germany","Italy","Sweden"))
DF3 <- data.frame(id = 9:10, 
           country = c("Canada","Malaysia"))


# ความเเตกต่างระหว่าง R , SQL
# R
Full_df %>%
  mutate(region = case_when(
    country %in% c("Thailand","Korea", "Japan","Malaysia") ~ "Asia",
    country %in% c("Canada", "USA" ) ~ "America",
    TRUE ~ "Europw"
  ))

# SQL
library(sqldf)
sqldf("select * , case 
        when country in ('USA','Canada') then 'America'
        when country in ('Thailand','Korea','Japan','Malaysia') then 'Asia'
        else 'Europe'
        end as region
        from Full_df
      ")
