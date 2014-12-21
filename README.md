Getting And Cleaning Data
=========================

Repo for Coursera "Getting And Cleaning Data" - December 2014

R Source file: "get_data.R"

R Source file: "run_analysis.R"

"Tidy" data file: "tidydata"

get_data.R:
===========
If you have not already downloaded the data required for the project analysis, then:

Running "get_data.R" in R Studio downloads and unpacks the source data currently stored at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

(If the zip file, or path to the zip file changes, then edit lines get_data.R 6/7 accordingly).

"get_data.R" creates a sub-directory "data", and populates it with the data required by "run_analysis.R"

The "README.txt" file in the "data" directory contains details of the "Human Activity Recognition Using Smartphones Dataset"
recorded as part of the experiments carried out by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.

run_analysis.R
==============

run_analysis.R:

  should be run in the "data" directory

  reads in various data files from the "data" directory 

  outputs a tidy data set to file "tidydata"                    # dataframe of dimensions [10,299 x 81 ]
  
tidydata
========

tidydata is written using write.table, and can therefore be loaded back into R by simple read.table:

d <- read.table("tidydata", header = TRUE)

then viewed by:
View(d)


