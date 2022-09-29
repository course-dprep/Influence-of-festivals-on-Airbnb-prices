
#.....Downloading the raw files......#

# Download the listings data from march
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2022-03-08/visualisations/listings.csv', 'data/dataset1/data_maart.csv')

# Download the listings data from september
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2021-12-07/data/listings.csv.gz', 'data/dataset1/data_september.csv')

# Read csv for both sets
library(readr)
data_maart <- read.csv('data/dataset1/data_maart.csv')
data_september <- read.csv('data/dataset1/data_september.csv')

# Generate summary statistics
View(data_maart)
summary(data_maart)
head(data_maart)

View(data_september)
summary(data_september)
head(data_september)

# Download the calendar data from march
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2022-03-08/data/calendar.csv.gz', 'data/dataset1/calendar_data_maart.csv')

# Read calendar data set
library(readr)
calendar_data_maart <- read.csv('data/dataset1/calendar_data_maart.csv')

# Generate summary statistics for calendar data
View(calendar_data_maart)
summary(calendar_data_maart)
head(calendar_data_maart)
tail(calendar_data_maart)
