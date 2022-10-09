# load libraries
library(readr)
library(car)

# Read input
data_input <- read_csv("./gen/analysis/input/data_ready_for_analysis.csv")

# Linear regression
regression_festivals <- lm(price_numeric ~ 
                        Mardi_Gras_2022_factor+French_Quarter_2022_factor+Jazz_Heritage_2022_factor+weekday_factor+host_neighbourhood_factor, data = data_input)
summary(regression_festivals)
