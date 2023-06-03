read_csv("student.csv")
Rows: 5 Columns: 2                                                             
── Column specification ────────────────────
Delimiter: ","
chr (1): name
dbl (1): id

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
# A tibble: 5 × 2
     id name 
  <dbl> <chr>
1     1 toy  
2     2 anna 
3     3 marry
4     4 john 
5     5 lisa

student2 <-read_csv("student.csv")
## สามารถ View เพื่อดูรายละเอียดข้อมูลได้ 
