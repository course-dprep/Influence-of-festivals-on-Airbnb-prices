library(readr)
library(tidyverse)

# Load datasets into R 
df_calendar_maart <- read_csv("calendar_data_maart.csv")
df_calendar_december <- read_csv("calendar_data_december.csv")
df_listings <- read_csv("listings_data_maart.csv")

# Merge the calendar data sets together 
df_calendar <- bind_rows(df_calendar_maart, df_calendar_december)

# Keep observations only from 1 March till May 31
df_calendar_clean <- df_calendar %>% arrange(date) %>% filter(between(date, as.Date("2022-2-28"), as.Date("2022-5-31")))

# Merge the full calendar dataset with the listings data set
df_merged <- inner_join(df_calendar_clean, df_listings,  by = c("listing_id"="id"))

# Save merged data
save(df_merged,file="./gen/data-preparation/temp/data_merged.RData")
