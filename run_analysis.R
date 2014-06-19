## ------------------- run_analysis.r Function -----------------------------

run_analysis <- function() {
  
  ##------------------------------------------------------------------------
  ##
  ##  The run_analysis function will:
  ##       1. combine data sets to form one large data set with
  ##          descriptive column name and descriptive variables
  ##       2. compute means and std deviations on a subset of data columns
  ##       3. produce a summarized data set
  ##------------------------------------------------------------------------
  ##
  ##    Part 1:   Read common data and combine data sets
  ##
  ##------------------------------------------------------------------------
  ##  Read the data which both the test and training data sets will use:
  ##
  ##  features contains the column headings for x_ test and x_train data files.
  ##       The column headings text contains variable names which are illegal
  ##       to R so change the variable names to R friendly variable names
  ##       before assigning the names to a columns in the dataset
  ##  activityLabels contains the data which corresponds the number of an activity to its
  ##       to the activity's name
  ##
  features <- read.table("UCI HAR Dataset/features.txt")
  features$V2 <- make.names(features$V2)
  activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
  colnames(activityLabels) <- c("activityNum","activityName")
  
  ##  Read the data observations:
  ##
  ##  files X_test and X_train contain observations on 561 different variables
  ##  append the x_test set to the bottom of the x_train set to create one
  ##  large data set, allObs, containing all the observations on the 561 variables
  ##
  testObs <- read.table("UCI HAR Dataset/test/X_test.txt")
  trainObs <- read.table("UCI HAR Dataset/train/X_train.txt")
  allObs <- rbind(testObs,trainObs)
  
  ##  assign the column names to the 561 variables
  colnames(allObs) <- features$V2
  
  ##  Read in the activity number:
  ##
  ##  files y_test and y_train contain a vector (column) which corresponds to each
  ##  each row in files x_test and y_test.  The value in the vector represents an
  ##  activity number.  Match the activity number with a activity name and create a 
  ##  new column in the exsiting data set which contains the activity name
  
  testActnum <- read.table("UCI HAR Dataset/test/y_test.txt")
  trainActnum <- read.table("UCI HAR Dataset/train/y_train.txt")
  actbyObs <- rbind(testActnum,trainActnum)
  colnames(actbyObs) <- c("activityNum")
  actbyObs <- transform(actbyObs, activityName=activityLabels[match(actbyObs$activityNum,
                          activityLabels$activityNum),]$activityName)
  
  ##  files subject_test and subject_train contain the number of a subject (column)
  testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
  trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
  allsubject <- rbind(testsubject,trainsubject)
  ##  assign a column name to the allsubject vector
  colnames(allsubject) <- c("subject")
  
  ##  Bind the columns together to produce 1 large data set
  allData1 <- cbind(actbyObs,allObs)
  allDataSet <- cbind(allsubject,allData1)
  
  ##------------   ***Completes steps 1, and 3 of Project***  --------------
  
  ##------------------------------------------------------------------------
  ##
  ##    Part 2: Compute means on a subset of the data
  ##
  ##------------------------------------------------------------------------
  
  ##  Create a dataframe with only mean and std deviation measurements by subject
  ##  by activity
  meanVars <- grep("mean.", colnames(allDataSet),fixed=TRUE)
  stdVars <- grep("std", colnames(allDataSet))
  allVarsforext <- sort(c(meanVars,stdVars))
  ##Keepcols <- c("subject","activityNum","activityName",
  ##              "tBodyAcc.mean...X","tBodyAcc.mean...Y","tBodyAcc.mean...Z",
  ##              "tBodyAcc.std...X","tBodyAcc.std...Y","tBodyAcc.std...Z",
  ##              "tGravityAcc.mean...X","tGravityAcc.mean...Y","tGravityAcc.mean...Z",
  ##              "tGravityAcc.std...X","tGravityAcc.std...Y","tGravityAcc.std...Z",
  ##              "tBodyAccJerk.mean...X","tBodyAccJerk.mean...Y","tBodyAccJerk.mean...Z",
  ##              "tBodyAccJerk.std...X","tBodyAccJerk.std...Y","tBodyAccJerk.std...Z")
  MeansandStds <- allDataSet[,c(1:3,allVarsforext)]
  ##  compute the means for all the measurement data columns
  aggdata <- aggregate(MeansandStds[,-c(1:3)],MeansandStds[,1:2],mean)
  ##  aggregate drops out the activityName column since it is not used so it needs
  ##  to be added back in - maybe there is a way to keep the column using aggregate
  ##  but I have not figured out how
  ##  split the aggregate data into two parts
  ##  create a column containing the activitiy Name and append it to the first part
  ##  bring all the data together in one dataframe
  finaldata1 <- aggdata[,1:2]
  finaldata2 <- aggdata[,-c(1:2)]
  ##  place descriptive names on final data variables
  newColnames <- colnames(finaldata2)
  newColnames <- sub("...",".",newColnames,fixed=TRUE)
  newColnames <- paste("avg", newColnames,sep=".")
  colnames(finaldata2) <- newColnames
  finaldata1 <- transform(finaldata1,
                         activityName=activityLabels[match(finaldata1$activityNum,
                                      activityLabels$activityNum),]$activityName)
  finalsumdataset <- cbind(finaldata1,finaldata2)
  ##-------------  ***Completes step 2 of Project*** ---------------------------
  
  
  ##----------------------------------------------------------------------------
  ##
  ##    Part 3: Produce a data set with the summarized data
  ##
  ##----------------------------------------------------------------------------
  
  write.table(finalsumdataset,
              file = "avg.all.vars.by.subject.and.activity.txt",row.names = FALSE)
  
  ##----------    ***Completes steps 4 and 5 of Project***    -----------------
  
}  ##  end run_analysis.R