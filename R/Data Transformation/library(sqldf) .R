# run sql query with R dataframe

sqldf("select * 
      from mtcars
      where mpg > 30")

sqldf("select mpg, wt , hp 
      from mtcars 
      where wt < 2 ")

sqldf("select am, avg(mpg), sum(mpg)
      from mtcars 
      group by am ")
