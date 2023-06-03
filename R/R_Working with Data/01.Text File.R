-- read_table() อ่านไฟล์ .txt ที่ใช้ whitespace อยู่ระกว่างคอลัมน์

read_table("student.txt") ##คำสั่งให้อ่านไฟล์ student.txt

── Column specification ────────────────────
cols(
  id = col_double(),
  name = col_character()
)

# A tibble: 5 × 2
     id name 
  <dbl> <chr>
1     1 toy  
2     2 anna 
3     3 marry
4     4 john 
5     5 lisa
