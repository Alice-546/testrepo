library(datasets)
library(tidyr)
library(dplyr)
library(ggplot2)
data("mpg")
head(mpg, 10)


#1.gathering info. relating to the manufacturer and model and display other attributes in the same way 

q1 <- mpg %>% 
    group_by(manufacturer, model) 


#2.combine fuel type col. and drive vs. cylinder attributes to understand the fuel efficiency

q2 <- mpg %>%
    select(fl, drv, cyl, displ) %>%
    group_by(fl) %>%
    summarise(mean(displ))
    
    
    
    
    
    
    
    
    