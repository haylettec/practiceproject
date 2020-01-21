#Simple linear model
#y = f(x) + w = Beta0 + Beta1x + E #greek letters are used for theoretical models

library(readr)
anthro <- read_csv(file = url("https://raw.githubusercontent.com/STAT-JET-ASU/Datasets/master/Instructor/anthropometric.csv"))

library(dplyr)
set.seed(1)
anthro_sample <- sample_n(anthro, 20)
head(anthro_sample)

#least squares method to find the line of best fit
#lm() -> generates our least squares line and otherstats output is a list (a collection of vectors)
ggplot(anthro_sample, aes(x = height, y = armspan)) +
  geom_point() + #point layer
  geom_smooth(method = "lm", se = FALSE) + #model layer #without anything it, it is making a local fit #not straight
  geom_abline(intercept = 0, slope = 1, color = "red") + #our theoretical "perfect squares" line "y = 0 + x"
  coord_fixed(xlim = c(60, 80), ylim = c(60, 80))

lm(armspan ~ height, data = anthro_sample)

square_model <- lm(armspan ~ height, data = anthro_sample)
square_model$coefficients
square_model$residuals
square_model$fitted.values
square_model$effects
square_model$df.residual
summary(square_model)

#moderndive has useful funtions to easily access regression output; 
#called wrapper functions bc it takes output from lm function and extracts bits of information
library(moderndive)
get_regression_table()
get_regression_points()
get_regression_summaries() # the input to all of these is the output from the lm() function
#the output is a tibble

get_regression_table(square_model, digits = 2, print = TRUE)
#y-hat (inches of armspan)
-9.25 + (1.13 * 69)




#parallel lines from project 2

#Finding points for geom_segment(13.75)
36.039 + (1.154*12.5) - 14.702
36.039 + (1.154*12.5)