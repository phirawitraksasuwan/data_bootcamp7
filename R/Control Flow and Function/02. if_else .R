score <- 88 
ifelse(score >= 80, "Passed" ,"Failed")
score <- 72 
ifelse(score >=80, "Passed" , "Failed" )
---------------------------------------------------------------
score <- 70
ifelse(score >= 90,"Passed", ifelse(
  score >= 50,"OK" ,"Enroll again"
))
---------------------------------------------------------------
ifelse(score >= 90, "A",
       ifelse(score >= 70, "B",
              ifelse(score >= 60, "C",
                     ifelse(score >= 50, "D", "F"))))
