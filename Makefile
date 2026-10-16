.PHONY: all clean

all: data/serena.csv outputs/serena_graph.png report.html report.pdf

data/SerenaWilliamsCareer.js: scripts/download_data.R
	Rscript scripts/download_data.R

data/serena.csv: scripts/data_cleaning.R data/SerenaWilliamsCareer.js
	Rscript scripts/data_cleaning.R

outputs/serena_graph.png: scripts/make_plot.R data/serena.csv
	Rscript scripts/make_plot.R

report.html: report.qmd outputs/serena_graph.png
	quarto render report.qmd --to html

report.pdf: report.qmd outputs/serena_graph.png
	quarto render report.qmd --to pdf

clean:
	Rscript -e "unlink(c('data/serena.csv', 'outputs/serena_graph.png', 'report.html', 'report.pdf', 'report_files'), recursive = TRUE)"