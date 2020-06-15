#Loading packages
library(dplyr)
filename <- "GCD_arebollon.zip"

#Downloading the file
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, filename, method="curl")

#naming tables from file
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")              

#Creating a merge dataset betwen train and subject
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
subjects <- rbind(subject_train, subject_test)
one_data <- cbind(subjects, Y, X)

#creating a tidy data set
onetidy <-one_data %>% select(subject, code, contains("mean"), contains("std"))
onetidy$code <- activities[onetidy$code, 2]
names(onetidy)[2] = "activity"
cleandata <- onetidy %>%
        group_by(subject, activity) %>%
        summarise_all(funs(mean))
write.table(cleandata, "cleandata.txt", row.name=FALSE)

#Reviewing clean dataset
head(cleandata)


