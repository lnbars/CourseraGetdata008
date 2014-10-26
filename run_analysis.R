## You should create one R script called run_analysis.R that does the following. 
##
##    1. Merges the training and the test sets to create one data set.
##    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##    3. Uses descriptive activity names to name the activities in the data set
##    4. Appropriately labels the data set with descriptive variable names. 
##    5. From the data set in step 4, creates a second, independent tidy data set with
##       the average of each variable for each activity and each subject.

## library(plyr)
loaddata <- function() {
   library(plyr)
   training_data <- load_training_data()
   testing_data <- load_testing_data()
   all_data <- rbind(training_data, testing_data)
   all_data[order(all_data$Group.2, all_data$Group.1), ]
}

load_training_data <- function() {
   subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
   colnames(subject_train) <- c("subject")

   x_train<-read.table("UCI HAR Dataset/train/X_train.txt")

   ##    4. Appropriately label the data set with descriptive variable names. 
   fv <- read.table("UCI HAR Dataset/features.txt")
   colnames(x_train) <- fv[,2]

   ##    2. Extract only the measurements on the mean and standard deviation for each measurement. 
   x_train_mean_and_std <- x_train[,grep("mean\\(|std\\(", fv[,2])]

   ##    3. Use descriptive activity names to name the activities in the data set
   y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
   activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
   xf1 <- cbind(x_train_mean_and_std, y_train)
   x_train_labeled <- join(xf1, activity_labels)
   x_train_labeled_subj <- cbind(x_train_labeled, subject_train)

   ##    5. From the data set in step 4, creates a second, independent tidy data set with
   ##       the average of each variable for each activity and each subject.
   aggdata <-aggregate( x_train_labeled_subj[, 1:66], by=list(x_train_labeled_subj$V2, x_train_labeled_subj$subject),  FUN=mean, na.rm=TRUE)
   aggdata
}

load_testing_data <- function() {
   subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
   colnames(subject_test) <- c("subject")

   x_test<-read.table("UCI HAR Dataset/test/X_test.txt")

   ##    4. Appropriately label the data set with descriptive variable names. 
   fv <- read.table("UCI HAR Dataset/features.txt")
   colnames(x_test) <- fv[,2]

   ##    2. Extract only the measurements on the mean and standard deviation for each measurement. 
   x_test_mean_and_std <- x_test[,grep("mean\\(|std\\(", fv[,2])]

   ##    3. Use descriptive activity names to name the activities in the data set
   y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
   activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
   xf1 <- cbind(x_test_mean_and_std, y_test)
   x_test_labeled <- join(xf1, activity_labels)
   x_test_labeled_subj <- cbind(x_test_labeled, subject_test)

   ##    5. From the data set in step 4, creates a second, independent tidy data set with
   ##       the average of each variable for each activity and each subject.
   aggdata <-aggregate( x_test_labeled_subj[, 1:66], by=list(x_test_labeled_subj$V2, x_test_labeled_subj$subject),  FUN=mean, na.rm=TRUE)
   aggdata
}

# try aggregate(B ~ A, mydf, sum)
## aggdata <-aggregate( xtl, by=list(xtl$V2, xtl$subject),  FUN=mean, na.rm=TRUE)
## ave(xtl, xtl$V2, xtl$subject, FUN=mean)
# try data.table

## head(aggdata[order(aggdata[,1]), 1:8], 31)
## order(aggdata$Group.2, aggdata$Group.1)


