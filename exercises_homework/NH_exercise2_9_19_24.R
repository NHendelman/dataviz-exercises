

library(dplyr)
library(ggplot2)

mpg

ggplot(mpg, aes(x = manufacturer, y = hwy)) +
  geom_point(size = 3, color = "blue") 
  theme_minimal()


"readRDS(here::here("exercises_homework", "NH_Updated_class_9_19_24.RDS"))"

