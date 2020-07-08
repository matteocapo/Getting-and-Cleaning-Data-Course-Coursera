# Getting-and-Cleaning-Data-Course-Coursera
The Getting and Cleaning Data Course Project repository contains all documents for evaluate the final course project of Getting and Cleaning Data
from Coursera.

#Script description
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The code present in run_analysis.R script is divided in 6 part, for each par you can see a simple description

#Library Prerequisites
1.dplyr

#Variables Code Book
You can find feature and activity list information in this three file:
- features_info.txt
- features.txt
- activity_labels.txt

Dataset has 68 variables (columns) the last 66 are given from the mean and std measurement of theese features

-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. First two are:

-Subject ID
-Activity Label


# Getting and Cleaning Data
This repository contains the scripts and data required to pass the [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning/home/welcome) final exam on Coursera

## Project Scope
The goal of this project was to create one R script called run_analysis.R that, taken data from [UCI HAR Datasets](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip), does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## File description
The directory 'UCI HAR Dataset' contains the original dataset.
There are also 2 file:
* CodeBook.md : A file containing description of variable and process to obtain the tidy dataset
* run_analisys.R : Script that manipulate the original data to obtain the tidy dataset

## Prerequisites
1. [RStudio](https://rstudio.com)
2. [MikTex](https://miktex.org)

## Usage
1. Clone this repository
2. Run the run_analisys.R script