LoadCleanAndMergeData <- function(zipfile)
{
  datadir <- "UCI HAR Dataset"
  traindir <- "train"
  testdir <- "test"

  if (!file.exists(datadir)){
    unzip(zipfile)
  }

  # generate file names
  xTrainFile <- paste(datadir, traindir, "X_train.txt", sep="/")
  yTrainFile <- paste(datadir, traindir, "y_train.txt", sep="/")
  subjectTrainFile <- paste(datadir, traindir, "subject_train.txt", sep="/")

  xTestFile <- paste(datadir, testdir, "X_test.txt", sep="/")
  yTestFile <- paste(datadir, testdir, "y_test.txt", sep="/")
  subjectTestFile <- paste(datadir, testdir, "subject_test.txt", sep="/")

  # load data from files
  xTrainData <- read.table(xTrainFile)
  yTrainData <- read.table(yTrainFile)
  subjectTrainData <- read.table(subjectTrainFile)

  xTestData <- read.table(xTestFile)
  yTestData <- read.table(yTestFile)
  subjectTestData <- read.table(subjectTestFile)

  activityLabels <- read.table(paste(datadir, "activity_labels.txt", sep="/"), stringsAsFactors = FALSE)

  # merge training and test files
  xData <- rbind(xTrainData, xTestData)
  yData <- rbind(yTrainData, yTestData)
  subjectData <- rbind(subjectTrainData, subjectTestData)

  # load feature names
  xNames <- read.table(paste(datadir, "features.txt",sep="/"), stringsAsFactors=FALSE)
  names(xData) <- xNames[,2]

  # extract only the measurements on the mean and standard deviation for each measurement. 
  # assume this requires only the features that contain the strings "mean()" and "std()"
  xData <- xData[,grep("mean\\(\\)|std\\(\\)", names(xData))]

  # update feature column names to be more meaningful
  names(xData) <- gsub("^t", "TimeDomain-", names(xData))
  names(xData) <- gsub("^f", "FrequencyDomain-", names(xData))
  names(xData) <- gsub("Acc", "Accelerometer", names(xData))
  names(xData) <- gsub("Gyro", "Gyroscope", names(xData))
  names(xData) <- gsub("Mag", "Magnitude", names(xData))
  names(xData) <- gsub("([XYZ])$", "\\1Axis", names(xData))
  names(xData) <- gsub("mean\\(\\)", "Mean", names(xData))
  names(xData) <- gsub("std\\(\\)", "StandardDeviation", names(xData))

  names(subjectData) <- "Subject"
  names(yData) <- "Activity"

  # merge feature data with subject and activity data
  yData[,1] <- factor(yData[,1], levels=activityLabels[,1], labels=activityLabels[,2])

  # join all data sources
  data <- cbind(xData, subjectData, yData)
  
  data
}
  
# load, merge and filter data
data <- LoadCleanAndMergeData("getdata-projectfiles-UCI HAR Dataset.zip");

# create a second, independent tidy data set with the average of each variable for each activity and each subject.
summaryData <- ddply(data, .(Subject, Activity), numcolwise(mean))

write.table(summaryData, "summaryData.txt", row.names=FALSE)

