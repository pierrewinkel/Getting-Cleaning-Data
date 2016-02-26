# Getting and Cleaning Data Course Project 

## Project Description
The project aim is to collect raw data from : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data will be analysed, merged, renamed and selected.
Eventually, a tidy dataset will be produced.

## Input data
The data can be collected from the Machine Learning Repository of the University of California Irvine :
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data describe a human activity recognition using smartphones : The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

## Creating the tidy dataset

##### STEP 0 : Download data and prepare raw data tables
1. Downloads the zip file
2. Unzips the file
3. Creates subject tables : test and training
4. Creates activity tables : test and training
5. Creates measures tables : test and training
6. Creates the features file

##### STEP 1 : Merges the training and test data
1. Creates first column : subject
2. Creates second column : activity
3. Creates all the measures columns
4. Merges the columns in a global dataset : subject + activity + measures of dataset
5. Give a name to all the measures columns according to the "features.txt" file.

##### STEP 2 : Creates a new dataframe "dt" containing the first two columns of "dataset" and all the columns containing "mean()" or "std()"

##### STEP 3 : replace the activityLabel by the activity name described in the file "activity_labels.txt"

##### STEP 4  : Appropriately labels the data set with descriptive variable names

##### STEP 5 : Creates a dataset with the average of each variable for each activity and each subject. 


##### Code Description
The code description can be found in this repository : **Code Description.md**


## Description of the variables in the tidy.txt file

Class of the variable
Unique values/levels of the variable
Unit of measurement (if no unit of measurement list this as well)
In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels).

- Name of file : tidy.txt
- Description : tidy data set with the average of each variable for each activity and each subject.
- Dimension : tidy.txt is a data frame with 180 observations of the following 68 variables.

#### Variable 1 : Subject
- an integer vector 
- values : 1 to 30
- unit of measurement : no unit
- the experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each of them is identified by a number from 1 to 30.

#### Variable 2 : ActivityLabel
- a character vector
- values :  "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
- each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist

#### Variable 3 to Variable 68 : 
- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAccelerometer-XYZ and TimeGyroscope-XYZ.

These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeAccelerometer-XYZ and TimeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude and TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrequencyBodyAccelerometerJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude. (Note the 'Frequency" to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- The 66 following columns are the average (mean) of each variable for each activity (ActivityLabel) and each volunteer (Subject)
- TimeBodyAccelerometer-mean()-X : a numeric vector / no unit
- TimeBodyAccelerometer-mean()-Y : a numeric vector / no unit
- TimeBodyAccelerometer-mean()-Z : a numeric vector / no unit
- TimeGravityAccelerometer-mean()-X : a numeric vector / no unit
- TimeGravityAccelerometer-mean()-Y : a numeric vector / no unit
- TimeGravityAccelerometer-mean()-Z : a numeric vector / no unit
- TimeBodyAccelerometerJerk-mean()-X : a numeric vector / no unit
- TimeBodyAccelerometerJerk-mean()-Y : a numeric vector / no unit
- TimeBodyAccelerometerJerk-mean()-Z : a numeric vector / no unit
- TimeBodyGyroscope-mean()-X : a numeric vector / no unit
- TimeBodyGyroscope-mean()-Y : a numeric vector / no unit
- TimeBodyGyroscope-mean()-Z : a numeric vector / no unit
- TimeBodyGyroscopeJerk-mean()-X : a numeric vector / no unit
- TimeBodyGyroscopeJerk-mean()-Y : a numeric vector / no unit
- TimeBodyGyroscopeJerk-mean()-Z : a numeric vector / no unit
- TimeBodyAccelerometerMagnitude-mean() : a numeric vector / no unit
- TimeGravityAccelerometerMagnitude-mean() : a numeric vector / no unit
- TimeBodyAccelerometerJerkMagnitude-mean() : a numeric vector / no unit
- TimeBodyGyroscopeMagnitude-mean() : a numeric vector / no unit
- TimeBodyGyroscopeJerkMagnitude-mean() : a numeric vector / no unit
- FrequencyBodyAccelerometer-mean()-X : a numeric vector / no unit
- FrequencyBodyAccelerometer-mean()-Y : a numeric vector / no unit
- FrequencyBodyAccelerometer-mean()-Z : a numeric vector / no unit
- FrequencyBodyAccelerometerJerk-mean()-X : a numeric vector / no unit
- FrequencyBodyAccelerometerJerk-mean()-Y : a numeric vector / no unit
- FrequencyBodyAccelerometerJerk-mean()-Z : a numeric vector / no unit
- FrequencyBodyGyroscope-mean()-X : a numeric vector / no unit
- FrequencyBodyGyroscope-mean()-Y : a numeric vector / no unit
- FrequencyBodyGyroscope-mean()-Z : a numeric vector / no unit
- FrequencyBodyAccelerometerMagnitude-mean() : a numeric vector / no unit
- FrequencyBodyAccelerometerJerkMagnitude-mean() : a numeric vector / no unit
- FrequencyBodyGyroscopeMagnitude-mean() : a numeric vector / no unit
- FrequencyBodyGyroscopeJerkMagnitude-mean() : a numeric vector / no unit
- TimeBodyAccelerometer-std()-X : a numeric vector / no unit
- TimeBodyAccelerometer-std()-Y : a numeric vector / no unit
- TimeBodyAccelerometer-std()-Z : a numeric vector / no unit
- TimeGravityAccelerometer-std()-X : a numeric vector / no unit
- TimeGravityAccelerometer-std()-Y : a numeric vector / no unit
- TimeGravityAccelerometer-std()-Z : a numeric vector / no unit
- TimeBodyAccelerometerJerk-std()-X : a numeric vector / no unit
- TimeBodyAccelerometerJerk-std()-Y : a numeric vector / no unit
- TimeBodyAccelerometerJerk-std()-Z : a numeric vector / no unit
- TimeBodyGyroscope-std()-X : a numeric vector / no unit
- TimeBodyGyroscope-std()-Y : a numeric vector / no unit
- TimeBodyGyroscope-std()-Z : a numeric vector / no unit
- TimeBodyGyroscopeJerk-std()-X : a numeric vector / no unit
- TimeBodyGyroscopeJerk-std()-Y : a numeric vector / no unit
- TimeBodyGyroscopeJerk-std()-Z : a numeric vector / no unit
- TimeBodyAccelerometerMagnitude-std() : a numeric vector / no unit
- TimeGravityAccelerometerMagnitude-std() : a numeric vector / no unit
- TimeBodyAccelerometerJerkMagnitude-std() : a numeric vector / no unit
- TimeBodyGyroscopeMagnitude-std() : a numeric vector / no unit
- TimeBodyGyroscopeJerkMagnitude-std() : a numeric vector / no unit
- FrequencyBodyAccelerometer-std()-X : a numeric vector / no unit
- FrequencyBodyAccelerometer-std()-Y : a numeric vector / no unit
- FrequencyBodyAccelerometer-std()-Z : a numeric vector / no unit
- FrequencyBodyAccelerometerJerk-std()-X : a numeric vector / no unit
- FrequencyBodyAccelerometerJerk-std()-Y : a numeric vector / no unit
- FrequencyBodyAccelerometerJerk-std()-Z : a numeric vector / no unit
- FrequencyBodyGyroscope-std()-X : a numeric vector / no unit
- FrequencyBodyGyroscope-std()-Y : a numeric vector / no unit
- FrequencyBodyGyroscope-std()-Z : a numeric vector / no unit
- FrequencyBodyAccelerometerMagnitude-std() : a numeric vector / no unit
- FrequencyBodyAccelerometerJerkMagnitude-std() : a numeric vector / no unit
- FrequencyBodyGyroscopeMagnitude-std() : a numeric vector / no unit
- FrequencyBodyGyroscopeJerkMagnitude-std() : a numeric vector / no unit

In order to have a better view of the tidyData file, you can use the following commands :
summary(tidyData)
str(tidyData)

str(tidyData)
'data.frame':	180 obs. of  68 variables:
 $ Subject                                       : int  1 1 1 1 1 1 2 2 2 2 ...
 $ ActivityLabel                                 : chr  "laying" "sitting" "standing" "walking" ...
 $ TimeBodyAccelerometer-mean()-X                : num  0.222 0.261 0.279 0.277 0.289 ...
 $ TimeBodyAccelerometer-mean()-Y                : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ TimeBodyAccelerometer-mean()-Z                : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ TimeGravityAccelerometer-mean()-X             : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ TimeGravityAccelerometer-mean()-Y             : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ TimeGravityAccelerometer-mean()-Z             : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ TimeBodyAccelerometerJerk-mean()-X            : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 $ TimeBodyAccelerometerJerk-mean()-Y            : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 $ TimeBodyAccelerometerJerk-mean()-Z            : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 $ TimeBodyGyroscope-mean()-X                    : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 $ TimeBodyGyroscope-mean()-Y                    : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 $ TimeBodyGyroscope-mean()-Z                    : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 $ TimeBodyGyroscopeJerk-mean()-X                : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 $ TimeBodyGyroscopeJerk-mean()-Y                : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 $ TimeBodyGyroscopeJerk-mean()-Z                : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 $ TimeBodyAccelerometerMagnitude-mean()         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ TimeGravityAccelerometerMagnitude-mean()      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ TimeBodyAccelerometerJerkMagnitude-mean()     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ TimeBodyGyroscopeMagnitude-mean()             : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ TimeBodyGyroscopeJerkMagnitude-mean()         : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ FrequencyBodyAccelerometer-mean()-X           : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 $ FrequencyBodyAccelerometer-mean()-Y           : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 $ FrequencyBodyAccelerometer-mean()-Z           : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 $ FrequencyBodyAccelerometerJerk-mean()-X       : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 $ FrequencyBodyAccelerometerJerk-mean()-Y       : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 $ FrequencyBodyAccelerometerJerk-mean()-Z       : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 $ FrequencyBodyGyroscope-mean()-X               : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 $ FrequencyBodyGyroscope-mean()-Y               : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 $ FrequencyBodyGyroscope-mean()-Z               : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 $ FrequencyBodyAccelerometerMagnitude-mean()    : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ FrequencyBodyAccelerometerJerkMagnitude-mean(): num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ FrequencyBodyGyroscopeMagnitude-mean()        : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ FrequencyBodyGyroscopeJerkMagnitude-mean()    : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ TimeBodyAccelerometer-std()-X                 : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ TimeBodyAccelerometer-std()-Y                 : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ TimeBodyAccelerometer-std()-Z                 : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ TimeGravityAccelerometer-std()-X              : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 $ TimeGravityAccelerometer-std()-Y              : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 $ TimeGravityAccelerometer-std()-Z              : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 $ TimeBodyAccelerometerJerk-std()-X             : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 $ TimeBodyAccelerometerJerk-std()-Y             : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 $ TimeBodyAccelerometerJerk-std()-Z             : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 $ TimeBodyGyroscope-std()-X                     : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 $ TimeBodyGyroscope-std()-Y                     : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 $ TimeBodyGyroscope-std()-Z                     : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 $ TimeBodyGyroscopeJerk-std()-X                 : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 $ TimeBodyGyroscopeJerk-std()-Y                 : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 $ TimeBodyGyroscopeJerk-std()-Z                 : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 $ TimeBodyAccelerometerMagnitude-std()          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ TimeGravityAccelerometerMagnitude-std()       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ TimeBodyAccelerometerJerkMagnitude-std()      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ TimeBodyGyroscopeMagnitude-std()              : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ TimeBodyGyroscopeJerkMagnitude-std()          : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ FrequencyBodyAccelerometer-std()-X            : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 $ FrequencyBodyAccelerometer-std()-Y            : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 $ FrequencyBodyAccelerometer-std()-Z            : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 $ FrequencyBodyAccelerometerJerk-std()-X        : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 $ FrequencyBodyAccelerometerJerk-std()-Y        : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 $ FrequencyBodyAccelerometerJerk-std()-Z        : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 $ FrequencyBodyGyroscope-std()-X                : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 $ FrequencyBodyGyroscope-std()-Y                : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 $ FrequencyBodyGyroscope-std()-Z                : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 $ FrequencyBodyAccelerometerMagnitude-std()     : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ FrequencyBodyAccelerometerJerkMagnitude-std() : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ FrequencyBodyGyroscopeMagnitude-std()         : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ FrequencyBodyGyroscopeJerkMagnitude-std()     : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
