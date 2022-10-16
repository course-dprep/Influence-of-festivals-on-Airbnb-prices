INPUT = gen/analysis/input/
ANALYSIS = ../src/analysis/

all: $(INPUT)/data_ready_for_analysis.csv $(ANALYSIS)analysis.pdf

$(INPUT)/data_ready_for_analysis.csv: analyze.R
        R --vanilla < analyze.R
        
$(ANALYSIS)/analysis.pdf : analysis.Rmd
        Rscript -e 'rmarkdown::render("analysis.Rmd")'
