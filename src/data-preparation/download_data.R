# Download the listings data from march
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2022-03-08/visualisations/listings.csv', 'listings_data_maart.csv')

# Download the calendar data from march
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2022-03-08/data/calendar.csv.gz', 'calendar_data_maart.csv')

# Download the listings data from december
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2021-12-07/data/listings.csv.gz', 'listings_data_december.csv')

# Download the calendar data from december
download.file("http://data.insideairbnb.com/united-states/la/new-orleans/2021-12-07/data/calendar.csv.gz", "calendar_data_december.csv")



# Read csv for both sets
library(readr)
data_maart <- read.csv('data_maart.csv')
data_september <- read.csv('data_september.csv')
calendar_data_maart <- read.csv('calendar_data_maart.csv')

# Generate summary statistics
View(data_maart)
summary(data_maart)
head(data_maart)

View(data_september)
summary(data_september)
head(data_september)

View(calendar_data_maart)
summary(calendar_data_maart)
head(calendar_data_maart)
tail(calendar_data_maart)
