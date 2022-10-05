# load libraries
library(readr)
library(car)

# Read input
data_input <- read_csv("./gen/analysis/input/data_ready_for_analysis.csv")

# Conduct Anova
Anova_festivals <- lm(price_numeric ~ 
                        Mardi_Gras_2022_factor+French_Quarter_2022_factor+Jazz_Heritage_2022_factor,data_input, 
                      contrasts=list(Mardi_Gras_2022_factor=contr.sum, French_Quarter_2022_factor=contr.sum, Jazz_Heritage_2022_factor=contr.sum))
Anova(anova_festivals, type=3)
