# CODEBOOK - Getting-and-Cleaning-Data
*FOR ACTIVITY TRACKER MEASUREMENT DATA*

## Description of the data

==================================================================  
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==========  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==========  

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

***********************

## Description of the variables

**Variables in final output file**

* **activityid**
	+ ID CODE OF THE ACTIVITY THE MEASUREMENT DESCRIBES (CODE FROM 1-6)
	+	1 .WALKING
	+	2 .WALKING UPSTAIRS
	+	3 .WALKING DOWNSTAIRS
	+	4 .SITTING
	+	5 .STANDING
	+	6 .LAYING

* **activity**
	+ LABEL DESCRIBING THE ACTIVITY (TEXT FIELD)
	+	1 .WALKING
	+	2 .WALKING UPSTAIRS
	+	3 .WALKING DOWNSTAIRS
	+	4 .SITTING
	+	5 .STANDING
	+	6 .LAYING

* **subject**
    +	SUBJECT ID NUMBER FROM 1-30
    +	1. SUBJECT 1
    +	2. SUBJECT 2
    +	3. SUBJECT 3
    +	4. SUBJECT 4
    +	5. SUBJECT 5
    +	6. SUBJECT 6
    +	7. SUBJECT 7
    +	8. SUBJECT 8
    +	9. SUBJECT 9
    +	10. SUBJECT 10
    +	11. SUBJECT 11
    +	12. SUBJECT 12
    +	13. SUBJECT 13
    +	14. SUBJECT 14
    +	15. SUBJECT 15
    +	16. SUBJECT 16
    +	17. SUBJECT 17
    +	18. SUBJECT 18
    +	19. SUBJECT 19
    +	20. SUBJECT 20
    +	21. SUBJECT 21
    +	22. SUBJECT 22
    +	23. SUBJECT 23
    +	24. SUBJECT 24
    +	25. SUBJECT 25
    +	26. SUBJECT 26
    +	27. SUBJECT 27
    +	28. SUBJECT 28
    +	29. SUBJECT 29
    +	30. SUBJECT 30
    
* **tBodyAcc-mean()-X**
    + MEAN
    + -1 to 1
* **tBodyAcc-mean()-Y**
    + MEAN
    + -1 to 1
* **tBodyAcc-mean()-Z**    
    + MEAN
    + -1 to 1
* **tBodyAcc-std()-X**
    + STANDARD DEVIATION
    + 0 TO 1
* **tBodyAcc-std()-Y**
    + STANDARD DEVIATION
    + 0 TO 1
* **tBodyAcc-std()-Z**
    + STANDARD DEVIATION
    + 0 TO 1
* **tGravityAcc-mean()-X**
    + MEAN
    + -1 to 1
* **tGravityAcc-mean()-Y**    
    + MEAN
    + -1 to 1
* **tGravityAcc-mean()-Z**
    + MEAN
    + -1 to 1
* tGravityAcc-std()-X
    + STANDARD DEVIATION
    + 0 TO 1
* tGravityAcc-std()-Y
    + STANDARD DEVIATION
    + 0 TO 1
* tGravityAcc-std()-Z
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyAccJerk-mean()-X
    + MEAN
    + -1 to 1
* tBodyAccJerk-mean()-Y
    + MEAN
    + -1 to 1
* tBodyAccJerk-mean()-Z
    + MEAN
    + -1 to 1
* tBodyAccJerk-std()-X
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyAccJerk-std()-Y
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyAccJerk-std()-Z
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyro-mean()-X
    + MEAN
    + -1 to 1
* tBodyGyro-mean()-Y
    + MEAN
    + -1 to 1
* tBodyGyro-mean()-Z
    + MEAN
    + -1 to 1
* tBodyGyro-std()-X
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyro-std()-Y
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyro-std()-Z
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyroJerk-mean()-X
    + MEAN
    + -1 to 1
* tBodyGyroJerk-mean()-Y
    + MEAN
    + -1 to 1
* tBodyGyroJerk-mean()-Z
    + MEAN
    + -1 to 1
* tBodyGyroJerk-std()-X
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyroJerk-std()-Y
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyroJerk-std()-Z
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyAccMag-mean()
    + MEAN
    + -1 to 1
* tBodyAccMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* tGravityAccMag-mean()
    + MEAN
    + -1 to 1
* tGravityAccMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyAccJerkMag-mean()
    + MEAN
    + -1 to 1
* tBodyAccJerkMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyroMag-mean()
    + MEAN
    + -1 to 1
* tBodyGyroMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* tBodyGyroJerkMag-mean()
    + MEAN
    + -1 to 1
* tBodyGyroJerkMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyAcc-mean()-X
    + MEAN
    + -1 to 1
* fBodyAcc-mean()-Y
    + MEAN
    + -1 to 1
* fBodyAcc-mean()-Z
    + MEAN
    + -1 to 1
* fBodyAcc-std()-X
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyAcc-std()-Y
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyAcc-std()-Z
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyAccJerk-mean()-X
    + MEAN
    + -1 to 1
* fBodyAccJerk-mean()-Y
    + MEAN
    + -1 to 1
* fBodyAccJerk-mean()-Z
    + MEAN
    + -1 to 1
* fBodyAccJerk-std()-X
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyAccJerk-std()-Y
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyAccJerk-std()-Z
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyGyro-mean()-X
    + MEAN
    + -1 to 1
* fBodyGyro-mean()-Y
    + MEAN
    + -1 to 1
* fBodyGyro-mean()-Z
    + MEAN
    + -1 to 1
* fBodyGyro-std()-X
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyGyro-std()-Y
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyGyro-std()-Z
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyAccMag-mean()
    + MEAN
    + -1 to 1
* fBodyAccMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyBodyAccJerkMag-mean()
    + MEAN
    + -1 to 1
* fBodyBodyAccJerkMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyBodyGyroMag-mean()
    + MEAN
    + -1 to 1
* fBodyBodyGyroMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
* fBodyBodyGyroJerkMag-mean()
    + MEAN
    + -1 to 1
* fBodyBodyGyroJerkMag-std()
    + STANDARD DEVIATION
    + 0 TO 1
		
**********************
		
## Description of the transformations conducted to clean data

1. Install and open stringr, reshape, and utils packages

2. Set working directory

3. Read in all files (x_test, subject_test, y_test, x_train, subject_train, y_train, activity_labels, and features) 

4. Merge the training data and the test data for each group (alldata: xtrain to xtest, ally: ytrain to ytest, allsubject: subjecttrain to subjecttest)

5. Assign new column names to the alldata using the features file

6. Extract the column names that have mean or std and only keep those columns in a new file called meanstddata.  Note MeanFreq not included.

7. Use cbind to add in the allsubject and ally to the meanstddata.

8. Rename the columns so they are descriptive (V1 = subject, V2 = activityid, etc.)

9. Merge the activity labels in the meansstdata with the activity_labels file by activity id

10. Create a wide tidy dataset using melt and cast.  Call the melted file datamelt and the cast file meansbygroup.

11. Output this wide tidy dataset to a .txt file called finaltidywide.txt
