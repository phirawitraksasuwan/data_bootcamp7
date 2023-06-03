--`greeting() <- function( **name** = **"Toy"** ) { print(paste("Hi!", name)) }`
-- name คือ parameter
-- "Toy" คือ argument

## EP07 - Function Parameter & Argument

greeting_name <- function(name ="xo"){
  print( paste("Hi" ,name) )
}
greeting_name()
[1] "Hi xo"
greeting_name("yeen")
"Hi yeen"

greeting_name <- function(name ="xo", age = 25){
  print( paste("Hi" ,name) )
  print( paste("Age :" , age) )
}
greeting_name(name = "yeen", age = 24)
[1] "Hi yeen"
[1] "Age : 24"
greeting_name(age = 24, name = "yeen")
[1] "Hi yeen"
[1] "Age : 24"
greeting_name( 18 , "peet")
[1] "Hi 18"
[1] "Age : peet"
## ถ้าไม่ใส่ parameter จะรันลำดับผิดจากที่เราต้องการ
