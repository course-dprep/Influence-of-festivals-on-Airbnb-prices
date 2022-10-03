# Influence of festivals in New Orleans on Airbnb prices 
This research proposes to investigate the relationship between festivals taking place and the prices of Airbnb's, in New Orleans. It is hypothesized that whenever a festival is taking place, demand for Airbnb's will increase, and therefore average prices of Airbnb's will increase as well on these days. 

## Research motivation

## Research Question
What is the typical price mark-up for Airbnb accommodations during a festival in New Orleans?

## Research method

To analyze the price mark-up for Airbnb accommodations during a festival in New Orleans, we will use an ANOVA analysis. The dependent variable is the average price of an Airbnb accommodations per day. And as an independent variable, a dummy variable on whether any of the three festivals is taking place (whereas 0 = no festival taking place and 1 = either one of the 3 festivals is taking place), will be taken into the model.

Data from [Inside Airbnb](http://insideairbnb.com/new-orleans) will be used over 2022.

## Repository overview
```
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
```

##
This is a basic example repository using Gnu make for a reproducible research workflow, as described in detail here: [tilburgsciencehub.com](http://tilburgsciencehub.com/). 

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project.  In this example project, the following is done: 
1. Download and prepare data
2. Run some analysis
3. Present results in a final pdf generated using LaTeX

### Dependencies
- R 
- R packages: `install.packages("stargazer")`
- [Gnu Make](https://tilburgsciencehub.com/get/make) 
- [TeX distribution](https://tilburgsciencehub.com/get/latex/?utm_campaign=referral-short)
- For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path 
- Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)


### Notes
- `make clean` removes all unncessary temporary files. 
- Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!
