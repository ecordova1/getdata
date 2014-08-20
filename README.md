#Getting and Cleaning Data Course Project

This is the course project for the John Hopkins University Getting and Cleaning Data course on Coursera.

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

The files in this repository are:

Readme.md: This file.
CodeBook.md: Describes the variables, the data, and any transformations performed to clean up the data.
run_analysis.R: The R script that download data, transfom it, and create a summarized tidy data set.
tidydata.txt: Final tidy data set.

More information about the original data set can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


The R Script does the following:

Merges the training and the test sets to create one data set.

Extracts only the measurements on the mean and standard deviation for each measurement. 

Uses descriptive activity names to name the activities in the data set

Appropriately labels the data set with descriptive variable names. 

Creates a second, independent tidy data set with the average of each variable for each activity and each subject.



After the script runs successfully, you will have a new file in the current working directory called "tidydata.txt" which has the tidy data set.

You could open the file using:




 

