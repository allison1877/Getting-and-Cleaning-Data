# Getting-and-Cleaning-Data
Final project code and information for Coursera-Getting and Cleaning Data

**Description of run_analysis.R script**

Before starting script: install packages, set working directing, and load in required files

1. Merge the training data and the test sets to create one data set.  Note that I did the train data first and then the test data.  Do this for all of the x data, y data, and also subject data.

2. Assign all of the column names using the features data set.  Extract only the column names that include mean and std.

3. Add the subject, y data, and result from step 2 together.  Then rename the the column names to something descriptive.  Merge the activity labels with this new file.

4. All variables should have appropriate labels now from steps 2 and 3.

5. Then create a wide tidy file by melting and casting the data.  We want to group by activity and subject.  Then we will have columns of means for each of the variables.

6. Lastly, use write.table to save the wide tidy file to submit for the assignment.