# Codebook

The raw data was collected as part of the UCI Human Activity Recognition Using Smartphones project.

A full description of the original data set can be found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The goal is to create a tidy data set with the average mean and standard deviations for each subject and activity level. 

In order to extracts only the measurements on the mean and standard deviation for each measurement we select features with the string "mean" and "std" in the names excluding the features with the string 'meanFreq'.

There are 30 subjects and 6 activity labels. To create the tidy dataset the average was calculated for each feature for each activity and each subject.

In the tidy data set there are 180 rows with the following columns:

subject

activity

tBodyAccmeanX

tBodyAccmeanY

tBodyAccmeanZ

tBodyAccstdX

tBodyAccstdY

tBodyAccstdZ

tGravityAccmeanX

tGravityAccmeanY

tGravityAccmeanZ

tGravityAccstdX

tGravityAccstdY

tGravityAccstdZ

tBodyAccJerkmeanX

tBodyAccJerkmeanY

tBodyAccJerkmeanZ

tBodyAccJerkstdX

tBodyAccJerkstdY

tBodyAccJerkstdZ

tBodyGyromeanX

tBodyGyromeanY

tBodyGyromeanZ

tBodyGyrostdX

tBodyGyrostdY

tBodyGyrostdZ

tBodyGyroJerkmeanX

tBodyGyroJerkmeanY

tBodyGyroJerkmeanZ

tBodyGyroJerkstdX

tBodyGyroJerkstdY

tBodyGyroJerkstdZ

tBodyAccMagmean

tBodyAccMagstd

tGravityAccMagmean

tGravityAccMagstd

tBodyAccJerkMagmean

tBodyAccJerkMagstd

tBodyGyroMagmean

tBodyGyroMagstd

tBodyGyroJerkMagmean

tBodyGyroJerkMagstd

fBodyAccmeanX

fBodyAccmeanY

fBodyAccmeanZ

fBodyAccstdX

fBodyAccstdY

fBodyAccstdZ

fBodyAccJerkmeanX

fBodyAccJerkmeanY

fBodyAccJerkmeanZ

fBodyAccJerkstdX

fBodyAccJerkstdY

fBodyAccJerkstdZ

fBodyGyromeanX

fBodyGyromeanY

fBodyGyromeanZ

fBodyGyrostdX

fBodyGyrostdY

fBodyGyrostdZ

fBodyAccMagmean

fBodyAccMagstd

fBodyBodyAccJerkMagmean

fBodyBodyAccJerkMagstd

fBodyBodyGyroMagmean

fBodyBodyGyroMagstd

fBodyBodyGyroJerkMagmean

fBodyBodyGyroJerkMagstd
