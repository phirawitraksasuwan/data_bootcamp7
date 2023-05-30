library(rvest)
library(tidyverse)

# Web Scraping  
# Ex.1
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

# Ex.2
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

# Ex.3
datarockie_url <- "https://datarockie.com/blog/data-analyst-complete-career-guide/"

topic_h3 <- datarockie_url %>%
  read_html() %>%
  html_elements("h3.wp-block-heading") %>% 
  html_text2()
topic_h3

# Ex.4
crypto_url <- "https://www.investing.com/crypto/currencies"

name_crypto <- crypto_url %>%
  read_html() %>%
  html_elements("td.left.bold.elp.name.cryptoName.first.js-currency-name") %>%
  html_text2()
#left bold elp name cryptoName first js-currency-name

symbol <- crypto_url %>%
  read_html() %>%
  html_elements("td.left.noWrap.elp.symb.js-currency-symbol") %>%
  html_text2()
#left noWrap elp symb js-currency-symbol

price_usd <- crypto_url %>%
  read_html() %>%
  html_elements("td.price.js-currency-price") %>%
  html_text2()
#price js-currency-price

marketcap <- crypto_url %>%
  read_html() %>%
  html_elements("td.js-market-cap") %>%
  html_text2() 
#js-market-cap

vol_24 <- crypto_url %>%
  read_html() %>%
  html_elements("td.js-24h-volume") %>%
  html_text2() 
#js-24h-volume

chg_24 <- crypto_url %>%
  read_html() %>%
  html_elements("td.js-currency-change-24h.redFont.pid-1057391-pcp") %>%
  html_text2()
#js-currency-change-24h redFont pid-1057391-pcp

crypto_price <- data.frame(name_crypto, symbol, price_usd, marketcap, vol_24, chg_24) %>%
  mutate(date = Sys.time()) 

View(crypto_price)
