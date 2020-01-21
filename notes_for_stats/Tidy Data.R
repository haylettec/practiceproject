#DRINKS EXAMPLE
library(tidyverse)
library(fivethirtyeight)
data(drinks)
glimpse(drinks)

drinks_smaller <- drinks %>% 
  filter(country %in% c("USA", "China", "Italy", "Saudi Arabia")) %>% 
  select(-total_litres_of_pure_alcohol) %>% 
  rename(beer = beer_servings, spirit = spirit_servings, wine = wine_servings)
drinks_smaller

#gather function "gathers 2 or more columns into a single function

#key = new variable that contains the former column header information - 
#it is the key to identifying the column the data was originally in

#value = what we do cal the colum that contains all the gathered up data? 
#it should tell us what the data represents

#1# 
drinks_smaller_tidyalt <- drinks_smaller %>% 
  gather(key = type, value = servings, c(wine, spirit, beer))
drinks_smaller_tidyalt

#2 - more efficient & cleaner#
drinks_smaller_tidy <- drinks_smaller %>% 
  gather(key = type, value = servings, -country)
drinks_smaller_tidy



#WEATHER DAYS IN WATAUGA COUNT
wcs <- read_csv(file = url("https://raw.githubusercontent.com/STAT-JET-ASU/Datasets/master/Instructor/wcsweatherdays.csv")) %>%
  select(-start_date, -end_date, -total_days, -total_snow) %>% 
  rename(aug = aug_days, 
         sep = sep_days, 
         oct = oct_days,
         nov = nov_days, 
         dec = dec_days, 
         jan = jan_days, 
         feb = feb_days, 
         mar = mar_days, 
         apr = apr_days, 
         may = may_days) %>% 
  gather(key = month, value = days, c(aug:may))

wcs  

#undoing what we did above, spreading out the data across different columns
wcs2 <- spread(wcs, key = month, value = days)


#powerball dataset






