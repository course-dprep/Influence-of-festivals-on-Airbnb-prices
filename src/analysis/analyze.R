# load libraries
library(readr)
library(dplyr)

# Read input
data_input <- read_csv("./gen/analysis/input/df_dummy_added.csv")

# Linear regression
regression_festivals <- lm(price_numeric ~ Festival+weekday+host_neighbourhood, data = data_input)
regression_summary <- summary(regression_festivals)
regression_summary$coefficients[,c(1,4)]

# create dataframe for means per festival
means_festival <- data_input %>% group_by(Festival) %>% summarize(festival_means = mean(price_numeric))

# Add controlled means
means_festival$controlled_means <- c(regression_summary$coefficients[1,1],regression_summary$coefficients[2,1]+ regression_summary$coefficients[1,1],regression_summary$coefficients[3,1]+ regression_summary$coefficients[1,1], regression_summary$coefficients[4,1]+ regression_summary$coefficients[1,1])

# Show controlled means per festival and regular means
means_festival[,c(1,3)]
means_festival[,c(1,2)]

# visualization
library(ggplot2)

# create plot
plot_festival_controlled_means <-ggplot(data=means_festival, aes(x=Festival, y=controlled_means)) + geom_bar(stat="identity")
plot_festival_regular_means <-ggplot(data=means_festival, aes(x=Festival, y=festival_means)) + geom_bar(stat="identity")


# show plot
plot_festival_regular_means
plot_festival_controlled_means
