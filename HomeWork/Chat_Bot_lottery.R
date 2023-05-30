bot <- function(){
  
  name = readline("What your name : ")
  print(paste("Hello",name,"nice to meet you"))
  
  feel = readline("How are you to day :")
  print(paste(feel,"Okeyyyy! Hope today is your good day"))
  
  print("------------------------------------------------------------------")
  
  print("We are a random lottery machine. Would you like us to help? [Yes] or [No]")
  while (TRUE){
    play = readline("Do you want random? [Yes] or [No] ")
    if (play == "No" ){
      print( "Thank you for using chatbot and 'Have a nice day' " )
      break
    } else {
      print("We have numbers for you to choose -> Numeric [1], [2], [3]")
      nums <- c(1,2,3)
      num_of <- readline(" Choose one ")
      num_of <- as.numeric(num_of)
      print( paste( "You want " , num_of , " right ?") )
      
      num_lottery1 <- c(0:9)
      num_lottery2 <- c(0:99)
      num_lottery3 <- c(0:999)
      
    
      if (num_of == 1) {
        
        computer_select1 <- sample(num_lottery1,1)
        print(computer_select1)
        
      } else if (num_of == 2) {
        
        computer_select2 <- sample(num_lottery2,1)
        print(computer_select2)
        
      } else {
        computer_select3 <- sample(num_lottery3,1)
        print(computer_select3)
      }
      
    }
  }
}

bot()
