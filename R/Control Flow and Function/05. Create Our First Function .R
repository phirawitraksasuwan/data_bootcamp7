greeting <- function() {
  print("Hello world")
}
##function ในตัวอย่างนี่จะไม่รับ input อะไรเลย
greeting()
[1] "Hello world"
# เป็นเหมือนกับ opjact  ในR ที่สามารถเรียกซ้ำได้ด้วย 
#ถ้าไม่มีวงเล็บ จะเรียกเป็น code ที่เราสร้าง

greeting_name <- function(name){
  print( paste("Hi" ,name) )
}
greeting_name("xo")
[1] "Hi xo"

greeting_name <- function(name){
  print( paste("Hi" ,name) )
}
greeting_name("xo")

func <- function(){
  greeting()
  greeting_name("xo")
}
func()
[1] "Hello world"
[1] "Hi xo"
