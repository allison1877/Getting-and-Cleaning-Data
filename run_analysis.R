

# Getting and Cleaning Data - Final Project (Week 4)

library(stringr)
library(reshape)  # need for melt
library(utils)  # need for write.table

# Load in the data files

# Set the working directory
setwd("I:/DOE/Statistics Software/R/Final Project/")  

# Read in the test files for x, subject, and y
xtest <- read.table("test/X_test.txt")
subjecttest <- read.table("test/subject_test.txt")
ytest <- read.table("test/y_test.txt")

# Read in the train files for x, subject, and y
xtrain <- read.table("train/X_train.txt")
subjecttrain <- read.table("train/subject_train.txt")
ytrain <- read.table("train/y_train.txt.")

# Read in the activity labels and the features of the columns
activitylabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

# 1. Merge the training data and the test sets to create one data set

# merge xtrain and xtest files (train first, then test)
alldata <- rbind(xtrain, xtest)  # this is the main part of the data so we call it alldata
ally <- rbind(ytrain, ytest)    # this is the y part of the data so we call it ydata
allsubject <- rbind(subjecttrain, subjecttest)  # this is all of the subject data 

# Make the new column names of alldata the features
names(alldata) <- as.vector(features$V2)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement

# Here we are only keeping the columns when the colnames have M(m)ean or std
# The assignment was not explicit on what type of mean, so we include any column name...
# that includes mean() - meanFreq or meanAngle not included

# We call this meanstddata because it is only the data that contains means or stds
meanstddata <- alldata[, str_detect(names(alldata), "mean\\(|std")]

# 3. Uses descriptive activity names to name the activities in the data set

# First need to add allsubject and ally to the reduced dataset of just means/stds
# Since I have not changed the order of any of the columns yet, we do a straight cbind
meanstddata <- cbind(allsubject, ally, meanstddata)

# Second need to rename the columns so they are descriptive
# allsubject = the person who performed the activity
# ally = labels for the activity
names(meanstddata)[1:2] <- c("subject", "activityid")
names(activitylabels) <- c("activityid", "activity")

# 4. Appropriately labels the data with descriptive variable names
# Then merge meanstddata and activity to update the feature column
combineddata <- merge(activitylabels, meanstddata, by = "activityid")

# 5. From step 4, create a second, independent tidy data set with the average of each 
# variable for each activity and each subject
datamelt <- melt(combineddata, id=c("activityid", "activity", "subject"))
meansbygroup <- cast(datamelt, activityid + activity + subject ~ variable, mean, id.var = c("activityid", "activity", "subject"))

# Save final tidy data file as a .txt - THIS IS A WIDE DATA FILE
finaltidywide <- write.table(meansbygroup, file = "finaltidywide.txt", row.name = FALSE)
