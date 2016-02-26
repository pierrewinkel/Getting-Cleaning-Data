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

#####  STEP 5 : Creates a dataset with the average of each variable for each activity and each subject. 

#####Code Description
The code description can be found in : 
[Getting-Cleaning-Data/Code description.md]

