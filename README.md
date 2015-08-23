Getting and Cleaning Data - Course Project
==========================================

Description of How the Scripts Work
-----------------------------------

This is the README.md file for the script used to complete this assignment.
The script name is runanalysis.R.  If begins by reading in the data and
merges the files (as long as they are in the working directory) and cleans
up the variable names. 

###The list below describes the steps in the code:

* Reads in the activty data (both the training and test dataset)
* Merges the data to create one data set.
* Subsets for only the mean and standard deviation (std) measurements
* Provides appropriate names and labels for the variables
* Creates and outputs "tidy data" of the averages of each variable, for each subject and each different kind of activity

###A more detailed description of the runanalysis.R file is in the CodeBook.md file.