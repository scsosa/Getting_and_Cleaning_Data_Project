### run_analysis

Read Accelerometer Data and Output a Summary Dataset
------------------------------------------------------

### Description

A specific function which reads specific data files and outputs a summary for specific variables.

The specific data files are from a study which captured Samsung Galaxy S smartphone accelerometer data from 30 volunteers between the age of 19 and 48.  The data was captured while the volunteers performed 6 different activities.  The data observations are contained in two separate data files (test and train).  This function assembles the data files, extracts only the measurements for mean and standard deviations for each observation then summarizes the data and produces a file which contains the average of each mean and standard deviation variable by activity by volunteer (i.e. subject).

### Usage

run_analysis()


### Arguments

NULL - Assumes data files reside in your working directory


### Input

Data files from *https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip* must be downloaded and reside in your working directory.   Specific files are:

File Name     |    File Description
--------------|--------------------
features.txt | 561 variable names for the data observation data files 
activity_labels.txt | activity name and activity number
train/X_train.txt  | data observations for 561 variables
train/y_train.txt | the actvity number for each row of data in train/x_train.txt
train/subject.txt | the subject number for each row of data in train/x_train.txt
test/X_test.txt  |  data observations for 561 variables
test/y_test.txt | the activity number for each row of data in test/x_test.txt
test/subject.txt | the subject number for each row of data in test/x_test.txt



### Output

A test file: __*avg.all.vars.by.subject.and.activity.txt*__ that contains the means of all acceleration and standard deviation variables by activity by subject.


### References

Github scsosa/Getting_and_Cleaning_Data_Project: CodeBook.md

SamsungGalaxy S Smartphone Study: 
*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones* 