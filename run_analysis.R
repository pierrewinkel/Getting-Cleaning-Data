## Devoir week 4 ##############################
library(data.table)
library(dplyr)

###############################################
##                STEP 0                     ##
## Downloads the zip file in data directory, ##
## unzips it and creates tables              ##
###############################################

###############################################
## Downloads the zip file                    ##
if (!file.exists("data")){
        dir.create("data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./data/data.zip")

###############################################
## Unzips the file                           ##
unzip ("./data/data.zip", exdir = "./data/")
## This creates a repository named "UCI HAR Dataset"
## which contains four txt files and two repos ("test" & "train")

## The files "subject_test.txt" and "subject_train.txt" describes 
## the subject who performed the activity for each window sample. 
## The test subject range is from 1 to 24.
## The training subject range is from 1 to 30.

################################################
## Creates subject tables : test and training ##
subjecttest <- data.table(read.table("./data/UCI HAR Dataset/test/subject_test.txt"))
## subjecttest is a table of 2947 rows of 1 variable.
subjecttrain <- data.table(read.table("./data/UCI HAR Dataset/train/subject_train.txt"))
## subjecttest is a table of 7352 rows of 1 variable.

#################################################
## Creates activity tables : test and training ##
## The file "activity_labels.txt" describes the activity codes (1 to 6)
## used in the "y_test.txt" and the "y_train.txt"
activitylabels <- data.table(read.table("./data/UCI HAR Dataset/activity_labels.txt"))
activitytest <- data.table(read.table("./data/UCI HAR Dataset/test/y_test.txt"))
## activitytest is a table of 2947 rows of 1 variable.
activitytrain <- data.table(read.table("./data/UCI HAR Dataset/train/y_train.txt"))
## activitytrain is a table of 7352 rows of 1 variable.

#################################################
## Creates measures tables : test and training ##
## X_test and X_train                          ##
datatest <- data.table(read.table("./data/UCI HAR Dataset/test/X_test.txt"))
## datatest is a table of 2947 rows of 561 variables.
datatrain <- data.table(read.table("./data/UCI HAR Dataset/train/X_train.txt"))
## datatrain is a table of 7352 rows of 561 variables.

##############################################
## Creates the features file                ##
features <- data.table(read.table("./data/UCI HAR Dataset/features.txt"))

##############################################
##              STEP 1                      ##
## Merges the training and test data        ##
##############################################

###############################################
## Creates first column : subject            ##
subject <- rbind(subjecttest, subjecttrain)
setnames(subject, "V1", "Subject")
## subject is a table of 10299 rows of 1 variable.

###############################################
## Creates second column : activity          ##
activity <- rbind(activitytest, activitytrain)
setnames(activity, "V1", "ActivityLabel")

###############################################
## Creates all the measures columns          ##
dataset <- rbind(datatest, datatrain)
## dataset is a table of 10299 rows of 561 variables.

###############################################
## Merges the columns in a global dataset :  ##
## subject + activity + measures of dataset  ##
subject <- cbind(subject, activity)
dataset <- cbind(subject, dataset)
## dataset is now a table of 10299 rows of 563 variables : 
## 1st column : subject
## 2nd column : activity label
## 3rd to 563rd columns : measures

###############################################
## Give a name to all the measures columns   ##
## according to the "features.txt" file.     ##
givenames2measures <- function(dataset){
        for (i in 1:561){
                old <- paste0("V",i)
                new <- as.character(features$V2[i])
                setnames(dataset,old,new)   
                }
}
givenames2measures(dataset)

###############################################
###############################################
##                   STEP 2                  ##
## Creates a new dataframe "dt" containing   ##
## the first two columns of "dataset" and    ##
## all the columns containing "mean()" or    ##
## "std()"                                   ##
###############################################
dt <- select(dataset, starts_with("subject"))
dt <- cbind(dt,select(dataset, starts_with("activity")))
dt <- cbind(dt,select(dataset, contains("mean()")))
dt <- cbind(dt,select(dataset, contains("std()")))
## dt is now a dataset of 10299 rows of 68 variables : the first, the second 
## + 66 measures of mean or standard deviation


###############################################
##                      STEP 3               ##
## replace the activityLabel by the activity ##
## name described in the file                ##
## "activity_labels.txt"                     ##
###############################################
dt$ActivityLabel[dt$ActivityLabel=="1"] <- "walking"
dt$ActivityLabel[dt$ActivityLabel=="2"] <- "walking upstairs"
dt$ActivityLabel[dt$ActivityLabel=="3"] <- "walking downstairs"
dt$ActivityLabel[dt$ActivityLabel=="4"] <- "sitting"
dt$ActivityLabel[dt$ActivityLabel=="5"] <- "standing"
dt$ActivityLabel[dt$ActivityLabel=="6"] <- "laying"

###############################################
##                      STEP 4               ##
## Appropriately labels the data set with    ##
## descriptive variable names                ##
###############################################
## prefix t is replaced by Time
## prefix f is replaced by Frequency
## Acc is replaced by Accelerometer
## Gyro is replaced by Gyroscope
## Mag is replaced by Magnitude
## BodyBody is replaced by Body

names(dt)<-gsub("^t", "Time", names(dt))
names(dt)<-gsub("^f", "Frequency", names(dt))
names(dt)<-gsub("Acc", "Accelerometer", names(dt))
names(dt)<-gsub("Gyro", "Gyroscope", names(dt))
names(dt)<-gsub("Mag", "Magnitude", names(dt))
names(dt)<-gsub("BodyBody", "Body", names(dt))


###############################################
##                      STEP 5               ##
## Creates a dataset with the average of     ##
## each variable for each activity           ##
## and each subject.                         ##
###############################################
tidyData <- aggregate(. ~Subject + ActivityLabel, dt, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$ActivityLabel),]
## tidyData is a table of 180 rows (30 volunteers x 6 activities)
## and 68 variables (Subject = volunteer + Activity Label
## + 66 averages of the measures)
write.table(tidyData, file = "./data/Tidy.txt", row.names = FALSE)

