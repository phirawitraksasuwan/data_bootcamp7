-- ใช้ SQL ใน R เพื่อจัดการ dataframe

# load library sqldf
library(sqldf)
library(readr)

school <- read_csv("school.csv")

sqldf("select * from school;")

sqldf("select avg(student), sum(student) from school;")

sqldf("select school_id, school_name, country from school;")

sql_query <- "select * from school where country = 'USA';"
usa_school <- sqldf(sql_query)
