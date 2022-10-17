

#........DOWNLOAD DATA..........#


library(tidyverse)
library(readr)

dir.create('./data/listings')
dir.create('./data/calendar')

# download listings data
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2022-03-08/data/listings.csv.gz', 
              './data/listings/listings_maart.csv')
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2021-12-07/data/listings.csv.gz', 
              './data/listings/listings_december.csv')

# download calendar data
download.file('http://data.insideairbnb.com/united-states/la/new-orleans/2022-03-08/data/calendar.csv.gz',
              './data/calendar/calendar_maart.csv')
download.file("http://data.insideairbnb.com/united-states/la/new-orleans/2021-12-07/data/calendar.csv.gz",
              './data/calendar/calendar_december.csv')



