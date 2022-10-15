INPUT = gen/analysis/input/
OUTPUT = ../../output

all: $(INPUT)/data_ready_for_analysis.csv $(OUTPUT)analysis.pdf

$(INPUT)/data_ready_for_analysis.csv: analyze.R
        R --vanilla < analyze.R
        
$(OUTPUT)/analysis.pdf : analysis.Rmd
        Rscript -e 'rmarkdown::render("analysis.Rmd")'
