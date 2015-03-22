Getting and Cleaning Data Course Project - UCI HAR Dataset Analysis
========================================================================

Introduction
-----------------

The purpose of this project is to be able to to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.  Data  ihas been collected from the accelerometers from the Samsung Galaxy S smartphone, from 
the [UCI HAR Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


Requirements
-----------------

Create a R script that does the following

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Steps 
-----------------

1) Load features into data set and modify names to be legible  
2) Load data files for train and testand bind them into a data set
3) Load subjects files for train and test and bind them into a data set
4) Merge subjects into mdata set 
5) Load activities
7) Merge subjects and activies into main data set 
8) Create txt file with tidy data from main data set


How to run
-----------------

```R
source("run_analysis.R")
```
