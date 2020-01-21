#ggplot2
#aesthetics is the what? geometry is the how?


library(ggplot2)

mtcars

ggplot(mtcars, aes(x = factor(cyl))) + #ggplot went through cyl and counted up how many times each category happens
  geom_bar(fill = "pink",
           color = "black",
           width = 0.5) +
  labs(title = "Number of Cylinders for Cars in mtcars",
     subtitle = "Cute Cars",
     x = "Number of Cylinders",
     y = "Number of Cars",
     caption = "source: mtcars") +
  theme_test() #setting particular settings, can use "ggthemes" to access many themes


#What else can be in aesthetics? 
#size, color, shape, fill
#when inside aesthetics the values are taken from a variable
#when outside of aesthetics (i.e., geometry) they control characteristics of the whole gemotry
#color vs. filled.
  #color controls: points, lines, outlines
  #fill controls: filled in shapes
#variable mapping = aesthetics
#stat: by default, it takes X and counts how many values of each
