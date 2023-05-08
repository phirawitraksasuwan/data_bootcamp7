library(rvest)
library(tidyverse)

# ตัวอย่างเเละลองทำ IMDB 
url <- "https://www.imdb.com/search/title/?groups=top_100&sort=user_rating,desc"

movie_name <- url %>%
  read_html() %>%
  html_elements("h3.lister-item-header") %>%
  html_text2()

ratings <- url %>%
  read_html() %>%
  html_elements("div.ratings-imdb-rating") %>%
  html_text2() %>%
  as.numeric()

votes <- url %>%
  read_html() %>%
  html_elements("p.sort-num_votes-visible") %>%
  html_text2()

df <- data.frame(movie_name, ratings, votes)
View(df)

df %>%
  separate(votes, sep=" \\| ", into=c("votes", "gross", "tops")) %>%
  View()
# มีสาเหตุที่ทำไมใช้ "\\|" ไปดูใน notions

# ตัวอย่างเเละลองทำ static website
specphone_url <- "https://specphone.com/Samsung-Galaxy-S23-5G.html"

topic <- specphone_url %>%
  read_html() %>%
  html_elements("div.topic") %>%
  html_text2()

detail <- specphone_url %>%
  read_html() %>%
  html_elements("div.detail") %>%
  html_text2()
df2 <- data.frame(topic , detail)
View(df2)
