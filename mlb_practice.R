#importing csv package, using read_csv (readr package)... readr is apart of tidyverse

library(readr)
library(dplyr)


mlb2013 <- read_csv("https://raw.githubusercontent.com/STAT-JET-ASU/Datasets/master/Instructor/mlb2013.csv")

glimpse(mlb2013)
class(mlb2013) #tells you what type of object something is
class(mlb2013$name)

#use ctrl+shift+m to generate function


mlb_AL_east <- mlb2013 %>% filter(division == "AL East") #variable with given value
mlb_no_AL_east <- mlb2013 %>% filter(division != "AL East")
mlb_over5M <- mlb2013 %>% filter(salary > 5000000)

mlb_richpitchers <- mlb2013 %>% 
  filter(position %in% c("Starting pitcher", "Closer", "Bullpen"), salary > 5000000) 
#if you want a set of values in a variable;like ==, but for a set of criteria


mlb_NYY <- mlb2013 %>% 
  filter(team == "New York Yankees") %>% 
  select(name, position, salary, age)

mlb_NYY2 <- mlb2013 %>% 
  filter(team == "New York Yankees") %>% 
  select(name, age, salary, position)

mlb_NYY3 <- mlb2013 %>% 
  filter(team == "New York Yankees") %>% 
  select(name, position, salary, age) %>% 
  rename(player_name = name)

mlb_NYY4 <- mlb2013 %>% 
  filter(team == "New York Yankees") %>% 
  select(player_name = name, position, salary, age) #combining the rename step with the select step

#arrange is like sort, sort your dataset according to some criteria
mlb_NYY5 <- mlb2013 %>% 
  filter(team == "New York Yankees") %>% 
  select(player_name = name, position, salary, age) %>% 
  arrange(salary)


mlb_NYY5 %>% select(salary) #still a data.frame
mlb_NYY5 %>% pull(salary) #this is now a vector

#mutate() adds additional variable to the dataset
#mutuate keeps the originial column and new one
#transmute deletes the original column and replaces it with the new one

mlb2013 <- mlb2013 %>% mutate(salaryM = salary / 1000000,
                              age_months = age * 12)

summarize(mlb2013)





