#Run the library necessary to use read_sheet()
library(googlesheets4) 
#Assign Google Sheets url to a variable
url <- "Google Sheets Link"
#If the file is open to public, use gs4_deauth
gs4_deauth()
#Then, use read_sheet to read Google Sheets's spreadsheet
read_sheet(url, sheet = "sheet's Name")
