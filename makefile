all: analysis data-preparation 

run_install_package:
	Rscript install_packages.R

data-preparation:
	make -C src/data-preparation
	
analysis: data-preparation
	make -C src/analysis
	
clean:
	-rm -r data
	-rm -r gen
