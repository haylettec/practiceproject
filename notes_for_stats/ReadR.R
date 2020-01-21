#.csv - comma seperated value
#read.csv - base R
#read_csv - readr
#1 first row may or may not be variable names
#2 typically each row is one row or observation in the data set
#3 the values for the columns are seperated by commas
#4 a variable is space separated or tab separated
#read.csv(file = url("urlhere.com"))

draft <- read.csv(file = url("https://raw.githubusercontent.com/STAT-JET-ASU/Datasets/master/Instructor/vietnamdraft.csv"))
#OR
draft2 <- read.csv("https://raw.githubusercontent.com/STAT-JET-ASU/Datasets/master/Instructor/vietnamdraft.csv")

str(draft)

library(dplyr)
glimpse(draft)

class(draft)

#atomic vectors in R
#numeric, integer (double)
#character, factor (read.csv turns all character vectors into factors)
#logical (factors)

library(readr)
draft3 <- read_csv(file = url("https://raw.githubusercontent.com/STAT-JET-ASU/Datasets/master/Instructor/vietnamdraft.csv"))

glimpse(draft3)
class(draft3)





library(readxl)
excel_sheets("powerball.xlsx")
















