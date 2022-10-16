DATA = ../../data
TEMP = /gen/data-preparation/temp/
DATAPREPARATION = ../src/data-preparation

# OVERALL BUILD

all: $(DATA)/listings_maart.csv $(DATA)/listings_december.csv $(DATA)/calendar_maart.csv $(DATA)/calendar_december.csv $(TEMP)/df_merged_clean.csv $(TEMP)/df_dummy_added.csv $(DATAPREPARATION)/data_preparation.pdf

#SUB BUILD

$(DATA)/listings_maart.csv $(DATA)/listings_december.csv $(DATA)/calendar_maart.csv $(DATA)/calendar_december.csv: download_data.R
       R --vanilla < download_data.R
       
$(TEMP)/df_merged_clean.csv: merge_data.R
      R --vanilla < merge_data.R
        
$(TEMP)/df_dummy_added.csv: add_dummy.R
       R --vanilla < add_dummy.R

$(DATAPREPARATION)/data_preparation.pdf: data_preparation.Rmd
       Rscript -e 'rmarkdown::render("data_preparation.Rmd")'
