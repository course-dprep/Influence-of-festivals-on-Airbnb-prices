DATA = ../../data
TEMP = /gen/data-preparation/temp/

# OVERALL BUILD

all: $(DATA)/listings_maart.csv $(DATA)/listings_december.csv $(DATA)/calendar_maart.csv $(DATA)/calendar_december.csv $(TEMP)/df_merged_clean.csv $(TEMP)/df_dummy_added.csv

#SUB BUILD

$(DATA)/listings_maart.csv $(DATA)/listings_december.csv $(DATA)/calendar_maart.csv $(DATA)/calendar_december.csv: download_data.R
       R --vanilla < download_data.R
       
$(TEMP)/df_merged_clean.csv: merge_data.R
      R --vanilla < merge_data.R
        
$(TEMP)/df_dummy_added.csv: add_dummy.R
       R --vanilla < add_dummy.R
