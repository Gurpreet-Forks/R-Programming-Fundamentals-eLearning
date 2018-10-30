#tables
#one-way table
table(iris$Species)

library(ggplot2) #ggplot2 has the diamonds dataset which we want to use
#one-way table
table(diamonds$cut)
table(diamonds$color)
#two-way table
table(diamonds$cut, diamonds$color)

#three-way table
table(diamonds$cut, diamonds$color, diamonds$clarity)

#continuous variable
table(mtcars$mpg)

### 
#dplyr methods

library(ggplot2)
library(dplyr)

diamonds %>% 
  group_by(cut, color, clarity) %>% 
  summarise(n())

diamonds %>% 
  group_by(cut) %>% 
  summarise(mean = mean(price), median = median(price))

diamonds %>% 
  filter(color != "D" & color != "J") %>% 
  group_by(cut) %>% 
  summarise(mean = mean(price))
