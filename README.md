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

Data from [Inside Airbnb](http://insideairbnb.com/new-orleans) will be used over \<\<\< still to insert exact dates of our analysis here \>\>\>.

### Results

From our conducted analysis we conclude the following:

-   The average price of an AirBnB when there is no festival taking place is €...
-   The average price of an AirBnB during \<\< festival \>\> is €.... higher compared to when there is no festival taking place
-   The average price of an AirBnB during \<\< festival \>\> is €.... higher compared to when there is no festival taking place
-   The average price of an AirBnB during \<\< festival \>\> is €.... higher compared to when there is no festival taking place

## Repository overview

    - .github
    - data
    - gen
      - analysis
      - data-preparation
      - paper
    - src
      - analysis
      - data-preparation
      - paper
    - README.md
    - Makefile

## Running instructions

-   How to run the workflow
-   Software including how to install them
-   How to run the workflow

## About

This research project was created by Roel Timmerman, Kansu Turay, Mandy Vervoort, Gijs van Uden and Daan van Woudenberg for the Data Preparation and Workflow Management course at Tilburg University.

## 

This is a basic example repository using Gnu make for a reproducible research workflow, as described in detail here: [tilburgsciencehub.com](http://tilburgsciencehub.com/).

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project. In this example project, the following is done: 1. Download and prepare data 2. Run some analysis 3. Present results in a final pdf generated using LaTeX

### Dependencies

-   R
-   R packages: `install.packages("stargazer")`
-   [Gnu Make](https://tilburgsciencehub.com/get/make)
-   [TeX distribution](https://tilburgsciencehub.com/get/latex/?utm_campaign=referral-short)
-   For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path
-   Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)

### Notes

-   `make clean` removes all unncessary temporary files.
-   Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac)
-   IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193.
-   Many possible improvements remain. Comments and contributions are welcome!
