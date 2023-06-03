-- Bind Rows (Union All) คือ ก่ารนำข้อมูลมาเรียงต่อกันตามคอลัมน์

library(dplyr)
library(readxl)

#read excall file 
econ <- read_excel("students.xlsx", sheet = 1)
business <- read_excel("students.xlsx", sheet = 2)
data <- read_excel("students.xlsx", sheet = 3)

# bind_row == SQL UNION ALL

bind_rows(econ, business, data)
### ผลลัพธ์คือ การนำ dataframe มาเรียงต่อกันรวมเป็น 15 row 

## หรือถ้ามีหลาย dataframe 
list_df <- list(econ, business, data)
bind_rows(list_df)
