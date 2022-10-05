# Load merged data 
df_merged <- read_csv("./gen/data-preparation/temp/df_merged_clean.csv")

# set price as numeric
df_merged$price_numeric <- as.numeric(parse_number(df_merged$price.x))



write.csv(df_merged,file="./gen/data-preparation/temp/df_merged_clean.csv")
