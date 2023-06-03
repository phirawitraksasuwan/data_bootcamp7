library(jsonlite)

> fromJSON("blackpink.json")
$id
[1] 1 2 3 4 5

$name
[1] "toy"   "john"  "marry" "lisa"  "jisoo"

$love_singing
[1]  TRUE FALSE FALSE  TRUE  TRUE

> data <- fromJSON("blackpink.json")
> data
$id
[1] 1 2 3 4 5

$name
[1] "toy"   "john"  "marry" "lisa"  "jisoo"

$love_singing
[1]  TRUE FALSE FALSE  TRUE  TRUE

> bp <- data.frame(data)
> bp
  id  name love_singing
1  1   toy         TRUE
2  2  john        FALSE
3  3 marry        FALSE
4  4  lisa         TRUE
5  5 jisoo         TRUE

###
bp <- data.frame(fromJSON("blackpink.json"))

View(bp)
