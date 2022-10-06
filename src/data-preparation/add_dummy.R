# Load data
df_merged <- read_csv("./gen/data-preparation/temp/df_merged_clean.csv")
View(df_merged)

# Create dummy variables for festival dates

# Mardi Gras 23 February - 1 March 2022
# French Quarter Festival 21 April - 24 April 2022
# New Orleans Jazz & Heritage Festival 29 April - 8 May 2022

df_merged$Mardi_Gras_2022 <- if_else(df_merged$date >= as.Date('2022-02-23') & df_merged$date <= as.Date('2022-03-01'),TRUE,FALSE)
df_merged$French_Quarter_2022 <- if_else(df_merged$date >= as.Date('2022-04-21') & df_merged$date <= as.Date('2022-04-24'),TRUE,FALSE)
df_merged$Jazz_Heritage_2022 <- if_else(df_merged$date >= as.Date('2022-04-29') & df_merged$date <= as.Date('2022-05-08'),TRUE,FALSE)
df_merged$festival_date <- if_else(df_merged$Mardi_Gras_2022 |df_merged$French_Quarter_2022 | df_merged$Jazz_Heritage_2022 == 1, TRUE, FALSE)

# Include dummies as factor for analysis
df_merged$Mardi_Gras_2022_factor <- as.factor(df_merged$Mardi_Gras_2022)
df_merged$French_Quarter_2022_factor <- as.factor(df_merged$French_Quarter_2022)
df_merged$Jazz_Heritage_2022_factor <- as.factor(df_merged$Jazz_Heritage_2022)
df_merged$festival_date_factor <- as.factor(df_merged$festival_date)

# create weekday variable
df_merged$weekday <- weekdays(df_merged$date)

# add weekday as factor for analysis
df_merged$weekday_factor <- as.factor(df_merged$weekday)

# Save as df_dummy_added
write_csv(df_merged,file="./gen/data-preparation/temp/df_dummy_added.csv")
