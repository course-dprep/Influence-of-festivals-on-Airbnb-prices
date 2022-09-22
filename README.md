# Influence of festivals in New Orleans on Airbnb prices 

# 
# Research Question
What is the effect of festivals taking place in New Orleans on the Airbnb prices?

# Research motivation
Airbnb has been growing their sales inmensely the last few years. Airbnb is a company which facilitates as an online marketplace for lodging, homestays for vacation rentals and tourism activities. Therefore, festivals taking place might be a reason for users to use Airbnb. When demand increases, prices will increase as well. In order to research the effect of festivals on the Airbnb prices in that area, this project focusses on New Orleans and 3 festivals taking place in that city, namely Mardi Gras, French Quarter Festival and New Orleans Jazz Festival. 

# Research method

Looks like we are going to use a ANOVA. This is a test

# Repository overview
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

#
This is a basic example repository using Gnu make for a reproducible research workflow, as described in detail here: [tilburgsciencehub.com](http://tilburgsciencehub.com/). 

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project.  In this example project, the following is done: 
1. Download and prepare data
2. Run some analysis
3. Present results in a final pdf generated using LaTeX

## Dependencies
- R 
- R packages: `install.packages("stargazer")`
- [Gnu Make](https://tilburgsciencehub.com/get/make) 
- [TeX distribution](https://tilburgsciencehub.com/get/latex/?utm_campaign=referral-short)
- For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path 
- Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)


## Notes
- `make clean` removes all unncessary temporary files. 
- Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!
