# Project 1

**Author: Matthew Chang**

**Submission Date: October 16, 2026**

## Description
This homework is an extension from homework 1 with the goal of recreating a plot of Serena Williams's matches showing age and opponent's age with wins and losses. The original can be found [here](https://www.nytimes.com/interactive/2022/08/28/sports/tennis/serena-age-opponents.html)

## How to Run:
1. Clone the repo using `git clone https://github.com/dashboredplays/stat159-homework2`, then change directory to go into it using `cd stat159-homework2`.

2. Activate the conda environment:
```
conda env create -f environment.yml
conda activate hw2
```

3. Run the Makefile with `make all` to download data and create images and reports all at once.
- If you want to remove them, run `make clean`.

### Contents:
- data folder: After running make file, should output 2 files inside: `serena.csv` and `SerenaWilliamsCarrer.js`. This is the data that is used for analysis / plotting.
- outputs folder: Folder that contains outputs. In this case, `serena_graph.png`, the plot.
- scripts folder: Includes `data_cleaning.R` to clean the data and convert to csv, `download_data.R` to import the data from online into JS format, and `make_plot.R` which takes the cleaned data and graphs it out.
- `ai_documentation.txt` includes what AI was used in the project.
- `environment.yml` is used to configure libraries and dependencies.
- `Makefile` includes the commands to run all scripts at once.
- `report.html` is the outputted report in html format.
- `report.pdf` is the outputted report in pdf format.
- `report.qmd` is the file used to create the reports.


### Notes:
- Ensure you have quarto installed (https://quarto.org/docs/download/) and afterwards, tinytex using `quarto install tinytex`
- Ensure you have conda installed: https://anaconda.org/channels/anaconda/packages/conda/overview