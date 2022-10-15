library(readr)
library(tidyverse)

# Load datasets into R 
df_calendar_maart <- read_csv("./data/calendar/calendar_maart.csv")
df_calendar_december <- read_csv("./data/calendar/calendar_december.csv")
df_listings_maart <- read_csv("./data/listings/listings_maart.csv")
df_listings_december <- read_csv("./data/listings/listings_december.csv")

# Merge the calendar data sets together 
df_calendar <- bind_rows(df_calendar_maart, df_calendar_december)

# Merge the listings data sets together
df_listings <- bind_rows(df_listings_maart, df_listings_december)

# Remove duplicates in the id column
df_listings <- df_listings[!duplicated(df_listings$id),]

# Keep observations only from 1 March till May 31
df_calendar_clean <- df_calendar %>% arrange(date) %>% filter(between(date, as.Date("2022-1-31"), as.Date("2022-5-31")))

# Merge the full calendar dataset with the listings data set
df_merged <- inner_join(df_calendar_clean, df_listings,  by = c("listing_id"="id"))

# Keep date, price, neighborhood
df_merged_clean <- df_merged[,c(2,4,27)]

# Save merged data
write_csv(df_merged_clean,file="./gen/data-preparation/temp/df_merged.csv")
