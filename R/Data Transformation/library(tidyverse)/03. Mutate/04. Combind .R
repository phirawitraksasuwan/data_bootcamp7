## Combind การเอา dataframe มาต่อกัน
DF %>%
  bind_rows(DF2)
# เสร็จเเล้วจะฝากค่าในdf ใหม่ 
Full_df <- DF %>%
  bind_rows(DF2) %>%
  bind_rows(DF3)
  # หรือใช้ list
list_df <- list(DF,DF2,DF3)
list_df
bind_rows(list_df)
