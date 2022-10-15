# Data preparation/cleaning

# Load merged data 
df_merged <- read_csv("./gen/data-preparation/temp/df_merged.csv")

# Set price as numeric
df_merged$price_numeric <- as.numeric(parse_number(df_merged$price.x))

# Load dplyr
library(dplyr)

# Exclude NA's for neighborhoods
df_merged <- df_merged %>% filter(!is.na(df_merged$host_neighbourhood))

# Write csv
write.csv(df_merged,file="./gen/data-preparation/temp/df_merged_clean.csv")
