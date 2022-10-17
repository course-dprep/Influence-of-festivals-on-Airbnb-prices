# Influence of festivals in New Orleans on Airbnb prices

This research proposes to investigate the relationship between festivals taking place and the prices of Airbnb's, in New Orleans. It is hypothesized that whenever a festival is taking place, demand for Airbnb's will increase, and therefore average prices of Airbnb's will increase as well on these days. This README contains a detailed description of our research motivation, research question, repository overview, research method, results and a conclusion.

## Motivation

Airbnb is a company which facilitates as an online marketplace for lodging, homestays for vacation rentals and tourism activities. Since Airbnb is an online marketplace, its prices depend highly on the demand for B&Bs. When demand is increasing, so will the prices of Airbnb's. In this research project, festivals will be taken into account as they can increase the demand for Airbnb's. During festivals the demand for Airbnb's is expected to increase, due to visitors at the festivals that do not live nearby, and therefore need an accommodation to stay during the time of the festival. As for Airbnb customers it is interesting to know the average prices during these festivals, to calculate their total costs of renting an Airbnb during any of these festivals. Furthermore, for Airbnb hosts it can help them in setting their prices during these days to make more profit, while still being able to attract customers. In order to research the effect of festivals on the Airbnb prices, this project focusses on Airbnb's in New Orleans and 3 festivals taking place in that area, namely:

-   Mardi Gras: 1 march 2022
-   French Quarter Festival: 21 april 2022 - 24 april 2022
-   New Orleans Jazz Festival: 29 april - 8 may 2022

Furthermore, this project also takes into account several control variables (e.g. neighborhood, weekdays) to make this research more valid.

### Research Question

What is the typical price mark-up for Airbnb accommodations during a festival in New Orleans?

## Method & results

### Method

To analyze the price mark-up for Airbnb accommodations during a festival in New Orleans, we will use a regression analysis. The independent variable is the average price of an Airbnb accommodations per day and as a dependent variable, we created dummy variables of whether the festival is taking place or not (whereas 0 = no festival taking place and 1 = festival taking place). Moreover, we also added 2 control variables (e.g. neighborhood and weekdays) to investigate whether the differences in price mark-up may be due to the day of the week on which the festival is taking place and whether the prices differ largely across neighborhoods.

Data from [Inside Airbnb](http://insideairbnb.com/new-orleans) will be used over January 2022 - May 2022. The datasets that are used are the calendar datasets and the listings datasets from the Airbnb site. Using these sets allows for analysis for each listing on each day, so that prices can be compared between dates. The listings dataset will be merged to the calendar dataset to add extra information to the calendar data, of which the control variable host neighbourhood will be included in the analysis. 

### Results

From our conducted analysis we conclude the following:

-   The average price of an AirBnB when there is no festival taking place is €319.00
-   The average price mark-up of an AirBnB during French Quarter Festival is approximately €40.21
-   The average price mark-up of an AirBnB during New Orleans Heritage & Jazz Festival is approximately €105.59
-   The average price mark-up of an AirBnB during Mardi Gras is approximately €192.84

## Repository overview

    - .github
    - data
      - calendar(created by running code)
      - listings(created by running code)
    - gen
      - analysis
        - input
        - output
        - temp
      - data-preparation
        - temp  
    - src
      - analysis
      - data-preparation
    - README.md
    - Makefile

## Dependencies
-   R
-   R packages: 
```
'install.packages("tidyverse")', 'install.packages("dplyr"), 'install.packages("readr")', 'install.packages("knitr")', 'install.packages("ggplot2")', 'install.packages("here")'
```
-   Gnu Make: to be downloaded from: https://tilburgsciencehub.com/get/make

## Running instructions

To run the entire project at once:
1. Fork this repository
2. Open the terminal and run the following: 
```
git clone https://github.com/course-dprep/Influence-of-festivals-on-Airbnb-prices.git
```
3. Set you working directory to Influence-of-festivals-on-Airbnb-prices and run the following command: 
```
make
```

## References
New Orleans data. (n.d.). Retrieved September 29, 2022, from http://insideairbnb.com/get-the-data/

Inside Airbnb Data Dictionary. (2022, August). Retrieved October 7, 2022, from https://docs.google.com/spreadsheets/d/1iWCNJcSutYqpULSQHlNyGInUvHg2BoUGoNRIGa6Szc4/edit

Lopez, G. (2022, January 26). 12 Best New Orleans Festivals to Attend in 2022. Time Out New Orleans. Retrieved September 22, 2022, from https://www.timeout.com/new-orleans/things-to-do/best-new-orleans-festivals


## About

This research project was created by Roel Timmerman, Kansu Turay, Mandy Vervoort, Gijs van Uden and Daan van Woudenberg for the Data Preparation and Workflow Management course at Tilburg University.
