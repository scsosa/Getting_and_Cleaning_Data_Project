run_analysis.R Function
========================================================


Study Design 
-------------

The run_analysis.R function was produced for the Coursera course, Data Science: Getting and Cleaning Data.

The function uses raw data from a study performed by Smartlab.  In summary, the study collected data recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.  More information regarding the study cam be found at: 
*http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones* 

The run_analysis.R function:

1. Reads in the study data files
2. Assembles the data into one comprehensive set of data
3. Extracts all measurements for mean and standard deviation
4. Computes the mean for all the extracted variables
5. Summarizes the mean variables by activity by subject
6. Outputs a data file containing the summarized data with descriptive variable names



Code Book
---------

The data should be interpreted as follows:

Subject represents one of 30 volunteers participating in the study.

Activity number and activity name are associated with the type of activity the subject was performing when the measurement was captured.

All remaining data elements represent an average of multiple 3-axial (that is, X, Y, and Z) accelerometer and gyroscope reading measurements for a Subject and Activity combination.

The readings are normalized and bounded within [-1,1].

Variables reflect the transformations and combinations of the raw signals as indicated by the terms in the variable names as follows:

* Time (t): time domain signals.
* Frequency (f): frequency domain signals.
* Acceleration (Acc): an accelerometer reading.
* Gyroscope (Gyro): a gyroscope reading.
* Body (Body): the body component of the acceleration signal.
* Gravity (Gravity): the gravity component of the acceleration signal.
* Jerk (Jerk): a derivation from the body linear acceleration and angular velocity readings.
* Magnitude (Mag): a calculation using the Euclidean norm.
* Mean (mean): a statistical mean value calculation of the raw signals.
* Standard Deviation (std): a statistical standard deviation calculation of the raw signals.
* X indicates a reading for the X-axis.
* Y indicates a reading for the y-axis.
* Z indicates a reading for the z-axis.


The function produces an output file, __*avg.all.vars.by.subject.and.activity.txt*__   , with the following file description:


   |  Variable Name   |  Variable Description | Variable Value
---|----------------|-----------------------|-----------------
1 | subject | number of the test subject | numeric 1-30
2 | activityNum | number associated with an activity | values numeric 1-6
3 | activityName | name of the activity in order of activity number (i.e. 1 = WALKING, 2 = WALKING_UPSTAIRS, etc.) | character: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
4 | avg.tBodyAcc.mean.X |  avg of time body acceleration mean for the X axis | numeric
5 | avg.tBodyAcc.mean.Y |  avg of time body acceleration mean for the Y axis | numeric
6 | avg.tBodyAcc.mean.Z |  avg of time body acceleration mean for the Z axis | numeric
7 | avg.tBodyAcc.std.X |  avg of time body acceleration standard deviation for the X axis | numeric
8 | avg.tBodyAcc.std.Y |  avg of time body acceleration standard deviation for the Y axis | numeric
9 | avg.tBodyAcc.std.Z |  avg of time body acceleration standard deviation for the Z axis | numeric
10 | avg.tGravityAcc.mean.X |  avg of time gravity acceleration mean for the X axis |  numeric
11 |avg.tGravityAcc.mean.Y |  avg of time gravity acceleration mean for the Y axis |  numeric
12 | avg.tGravityAcc.mean.Z |  avg of time gravity acceleration mean for the Z axis |  numeric
13 | avg.tGravityAcc.std.X |  avg of time gravity acceleration standard deviation for the X axis |  numeric
14 | avg.tGravityAcc.std.Y |  avg of time gravity acceleration standard deviation for the Y axis | numeric
15 | avg.tGravityAcc.std.Z |  avg of time gravity acceleration standard deviation for the Z axis | numeric
16 | avg.tBodyAccJerk.mean.X |  avg of time body acceleration jerk mean for the X axis | numeric
17 | avg.tBodyAccJerk.mean.Y |  avg of time body acceleration jerk mean for the Y axis | numeric
18 | avg.tBodyAccJerk.mean.Z |  avg of time body acceleration jerk mean for the Z axis | numeric
19 | avg.tBodyAccJerk.std.X |  avg of time body acceleration jerk standard deviation for the X axis | numeric
20 | avg.tBodyAccJerk.std.Y |  avg of time body acceleration jerk standard for the Y axis | numeric
21 | avg.tBodyAccJerk.std.Z |  avg of time body acceleration jerk standard for the Z axis | numeric
22 | avg.tBodyGyro.mean.X | avg of time body gyroscope mean for the X axis | numeric
23 | avg.tBodyGyro.mean.Y | avg of time body gyroscope mean for the Y axis | numeric
24 | avg.tBodyGyro.mean.Z | avg of time body gyroscope mean for the Z axis | numeric
25 | avg.tBodyGyro.std.X | avg of time body gyroscope standard deviation for the X axis | numeric
26 | avg.tBodyGyro.std.Y | avg of time body gyroscope standard deviation for the Y axis | numeric
27 | avg.tBodyGyro.std.Z | avg of time body gyroscope standard deviation for the Z axis | numeric
28 | avg.tBodyGyroJerk.mean.X | avg of time body gyroscope jerk mean for the X axis | numeric
29 | avg.tBodyGyroJerk.mean.Y | avg of time body gyroscope jerk mean for the Y axis | numeric
30 | avg.tBodyGyroJerk.mean.Z | avg of time body gyroscope jerk mean for the Z axis | numeric
31 | avg.tBodyGyroJerk.std.X | avg of time body gyroscope jerk standard deviation for the X axis | numeric
32 | avg.tBodyGyroJerk.std.Y | avg of time body gyroscope jerk standard deviation for the Y axis | numeric
33 | avg.tBodyGyroJerk.std.Z | avg of time body gyroscope jerk standard deviation for the Z axis | numeric
34 | avg.tBodyAccMag.mean.. | avg of time body acceleration magnitude mean | numeric
35 | avg.tBodyAccMag.std.. | avg of time body acceleration magnitude standard deviation | numeric
36 | avg.tGravityAccMag.mean.. | avg of time gravity acceleration magnitude mean | numeric
37 | avg.tGravityAccMag.std.. | avg of time gravity acceleration magnitude standard deviation | numeric
38 | avg.tBodyAccJerkMag.mean.. | avg of time body acceleration jerk magnitude mean | numeric
39 | avg.tBodyAccJerkMag.std.. | avg of time body acceleration jerk magnitude standard deviation | numeric
40 | avg.tBodyGyroMag.mean.. | avg of time body gyroscope magnitude mean | numeric
41 | avg.tBodyGyroMag.std.. | avg of time body gyroscope magnitude standard deviation | numeric
42 | avg.tBodyGyroJerkMag.mean.. | avg of time body gyroscope jerk magnitude mean | numeric
43 | avg.tBodyGyroJerkMag.std.. | avg of time body gyroscope jerk magnitude standard deviation | numeric
44 | avg.fBodyAcc.mean.X | avg of frequency body acceleration mean for the X axis | numeric
45 | avg.fBodyAcc.mean.Y | avg of frequency body acceleration mean for the Y axis | numeric
46 | avg.fBodyAcc.mean.Z | avg of frequency body acceleration mean for the Z axis | numeric
47 | avg.fBodyAcc.std.X | avg of frequency body acceleration standard deviation for the X axis | numeric
48 | avg.fBodyAcc.std.Y | avg of frequency body acceleration standard deviation for the Y axis | numeric
49 | avg.fBodyAcc.std.Z | avg of frequency body acceleration standard deviation for the Z axis | numeric
50 | avg.fBodyAccJerk.mean.X | avg of frequency body acceleration jerk mean for the X axis | numeric
51 | avg.fBodyAccJerk.mean.Y | avg of frequency body acceleration jerk mean for the Y axis | numeric
52 | avg.fBodyAccJerk.mean.Z | avg of frequency body acceleration jerk mean for the Z axis | numeric
53 | avg.fBodyAccJerk.std.X | avg of frequency body acceleration jerk standard deviation for the X axis | numeric
54 | avg.fBodyAccJerk.std.Y | avg of frequency body acceleration jerk standard deviation for the Y axis | numeric
55 | avg.fBodyAccJerk.std.Z  | avg of frequency body acceleration jerk standard deviation for the Z axis | numeric
56 | avg.fBodyGyro.mean.X  | avg of frequency body gyroscope mean for the X axis | numeric
57 | avg.fBodyGyro.mean.Y | avg of frequency body gyroscope mean for the Y axis | numeric
58 | avg.fBodyGyro.mean.Z | avg of frequency body gyroscope mean for the Z axis | numeric
59 | avg.fBodyGyro.std.X | avg of frequency body gyroscope standard deviation for the X axis | numeric
60 | avg.fBodyGyro.std.Y | avg of frequency body gyroscope standard deviation for the Y axis | numeric
61 | avg.fBodyGyro.std.Z | avg of frequency body gyroscope standard deviation for the Z axis | numeric
62 | avg.fBodyAccMag.mean.. | avg of frequency body accelerator magnitude mean | numeric
63 | avg.fBodyAccMag.std.. | avg of frequency body accelerator magnitude standard deviation | numeric
64 | avg.fBodyBodyAccJerkMag.mean.. | avg of frequency body accelerator jerk magnitude mean | numeric
65 | avg.fBodyBodyAccJerkMag.std..| avg of frequency body accelerator jerk magnitude standard deviation | numeric
66 | avg.fBodyBodyGyroMag.mean.. | avg of frequency body gyroscope magnitude mean | numeric
67 | avg.fBodyBodyGyroMag.std..| avg of frequency body gyroscope magnitude standard deviation | numeric
68 | avg.fBodyBodyGyroJerkMag.mean.. | avg of frequency body gyroscope jerk magnitude mean | numeric
69 | avg.fBodyBodyGyroJerkMag.std..| avg of frequency body gyroscope jerk magnitude standard deviation | numeric


Instruction List
----------------

### Description of the Raw Data

Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The data is parsed into several data files and before performing the analysis it must be reassembled into one comprehensive data set. 

The files required for this analysis are:

File Name     |    File Description
--------------|--------------------
features.txt | 561 variable names for the data observation data files 
activity_labels.txt | activity name and activity number
test/X_test.txt  |  data observations for 561 variables
test/y_test.txt | the activity number for each row of data in test/x_test.txt
test/subject.txt | the subject number for each row of data in test/x_test.txt
train/X_train.txt  | data observations for 561 variables
train/y_train.txt | the actvity number for each row of data in train/x_train.txt
train/subject.txt | the subject number for each row of data in train/x_train.txt


*NOTE:* It is most important to always assemble the data in the same order, I choose to combine test data before train data.

The raw measurement data is contained in two data files, one in the test directory, X_test.txt and one in the train directory, X_train.txt.  You can think of the X in front of each file representing data that runs along the X axis on a graph.

The features.txt file contains the variable names for each variable in X_test.txt and X_train.txt.

The files test/subject.txt and train/subject.txt contain the subject number for each row of data in test/X_test.txt and train/X_train.txt.  

The files test/y_test.txt and train/y_train.txt contain the number of the activity for each row of data in test/X_test.txt and train/X_train.txt.  You can think of the y in front of each file representing data that runs along the y axis on a graph.

The file activity_labels.txt associates an activity number with the name of the activity.

### Assembling the Raw Data Into One Data Set for Analysis

The run_analysis function first step is to read the data files common to both the test and train data files.


1)  features.txt is read.  The variables names in this file contain names illegal to r so the names are converted to legal r variable names using the names function.
 
2)  activity_labels.txt is read.  The data is placed in a lookup table to be used to look-up an activity number and create an activity name that corresponds to the number.


Next the data files containing the data observations are read and assembled into 1 data file.

3)  X_test and X_train are read.  The data in the files are combined using cbind() into one large data set containing all the observations on the 561 variables.

The activity numbers and subject numbers are read in next.

4)  y_test and y_train are read.  The data is combined using rbind() into 1 data set containing all the activity numbers for each row of data in the data observation set.  Using the lookup table created in step 2, a variable is created for each observation that contains the activity name.

5)  subject_test and subject_train are read.  The data is combined using rbind() into one data set containing all the subject numbers for each row of data in the data observation set.

The comprehensive data set is created.

6)  The activity number and activity name data is combined with the data observations using cbind.  The subject number data is then combined to this data using cbind().

### Perform Analysis

Now that the data has been assembled, the analysis steps can begin.  The function   extracts only the measurements on the mean and standard deviation for each data observation and computes an average of each variable for each activity and each subject.

7)  Extract the data from the comprehensive data set when the variable name contains the word "mean" or "std".  Use grep() to find the target variable names and create a vector containing their position in the data set.  Subset the comprehesive data set using the vector.

8)  Compute the average for each mean and std deviation variable by activity by subject using aggregate() with the mean function and create a data set containing the aggregated data.

9)   Name the variables in the aggregated data set with names that describe the data. 

### Output a Data File

The final step produces a data file __*avg.all.vars.by.subject.and.activity.txt*__  which is described in the Code Book section of this document.

10)  Write the aggregated data set to a file.
