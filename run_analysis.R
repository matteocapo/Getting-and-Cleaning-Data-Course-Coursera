library(dplyr)

#Load test and train dataset
x_test_set <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test_set <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test_set <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_train_set <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train_set <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train_set <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Merge train and test dataset in one dataset (one for x, one for y and one for subject set)
x_set <- rbind(x_test_set, x_train_set)
y_set <- rbind(y_test_set, y_train_set)
subject_set <- rbind(subject_test_set, subject_train_set)
x_y_subject_set <- cbind(x_set, subject_set, y_set)

#Extracts mean and standard deviation
features_name <- read.table("UCI HAR Dataset/features.txt", colClasses = "character")
features_index <- grep("mean()|std()", features_name$V2)
mean_std_features <- x_y_subject_set[c(features_index, 562, 563)]

#Set descriptive activity names to name the activities and assign labels
colnames(mean_std_features) <- c(features_name$V2[features_index], "Subject", "Activity")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
mean_std_features$Activity <- activity_labels$V2[mean_std_features$Activity]

#Create tidy dataset
tidy_dataset <- tbl_df(mean_std_features)
tidy_dataset <- tidy_dataset %>% group_by(Subject, Activity) %>% summarise(across(1:66, mean))
write.table(new_dataset, "tidy.txt", row.name=FALSE)

#Remove all variables
rm(x_test_set, y_test_set, subject_test_set, x_train_set, y_train_set, subject_train_set, x_set, y_set, subject_set, x_y_subject_set)
rm(features_name, features_index, activity_labels, mean_std_features)