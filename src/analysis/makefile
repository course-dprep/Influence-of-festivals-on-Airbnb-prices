INPUT = gen/analysis/input/

all: $(INPUT)/data_ready_for_analysis.csv: 

$(INPUT)/data_ready_for_analysis.csv: analyze.R
        R --vanilla < analyze.R
