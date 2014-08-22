# check folder and creates one if it doesn't exist
if (!file.exists("data")) {
    dir.create("data")
}
# download and unzip dataset
if (!file.exists("data/Dataset.zip")) {  
  fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  zipfile="data/Dataset.zip"
  download.file(fileURL, destfile=zipfile)
  unzip(zipfile,exdir="data")
}


#read feature names and removing characters 
features <- read.table("data/UCI HAR Dataset/features.txt", header=FALSE)
features$V2<-gsub("[(),-]","",features$V2)

#read activity names
activity_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt", header=FALSE)

#read training data and assign descriptive columns names
x_train = read.table("data/UCI HAR Dataset/train/X_train.txt",col.names = features$V2)
y_train = read.table("data/UCI HAR Dataset/train/y_train.txt",col.names="activity")
subject_train = read.table("data/UCI HAR Dataset/train/subject_train.txt",col.names="id")

#read test data and assign descriptive columns names
x_test = read.table("data/UCI HAR Dataset/test/X_test.txt",col.names = features$V2)
y_test = read.table("data/UCI HAR Dataset/test/y_test.txt",col.names="activity")
subject_test = read.table("data/UCI HAR Dataset/test/subject_test.txt",col.names="id")

#merge training and test dataset 
x_merge = rbind(x_train , x_test)
y_merge = rbind(y_train , y_test)
subject_merge = rbind(subject_train,subject_test)
data_merge <- cbind(subject_merge, y_merge, x_merge)

# extracts only the measurements on the mean and standard deviation for each measurement
colNames <- colnames(data_merge)
vector = (grepl("id", colNames) | grepl("activity", colNames) | grepl("mean", colNames) & !grepl("meanFreq",colNames) | grepl("std", colNames));
data_merge = data_merge[,vector]

# label the dataset with descriptive activity names
data_merge$activity[data_merge$activity == 1] = as.character(activity_labels[1,2])
data_merge$activity[data_merge$activity == 2] = as.character(activity_labels[2,2])
data_merge$activity[data_merge$activity == 3] = as.character(activity_labels[3,2])
data_merge$activity[data_merge$activity == 4] = as.character(activity_labels[4,2])
data_merge$activity[data_merge$activity == 5] = as.character(activity_labels[5,2])
data_merge$activity[data_merge$activity == 6] = as.character(activity_labels[6,2])

# create a second tidy dataset with the average of each variable for each activity and each subject
tidy = aggregate(data_merge[,-c(1:2)], by=list(subject = data_merge$id,activity = data_merge$activity),FUN=mean)
write.table(tidy,"tidydata.txt",row.names=FALSE)
