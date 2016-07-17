library(dplyr)

#Read in the category/reference data
activitylabels.df <- read.table('./activity_labels.txt', header = FALSE)

features.df <- read.table("./features.txt", header = FALSE)

#Process Training Data
#====================================================================================================
#Read in the training data
train.subjects.df <- read.table("./train/subject_train.txt", header = FALSE)
train.x.df <- read.table("./train/x_train.txt", header = FALSE)
train.y.df <- read.table("./train/y_train.txt", header = FALSE)

#Link the training data & rename the columns
train.complete.df <- cbind(train.subjects.df, train.y.df, train.x.df)
names(train.complete.df) <- c('subject', 'activity', as.character(features.df$V2))



#Process Test Data
#====================================================================================================
#Read in the test data
test.subjects.df <- read.table("./test/subject_test.txt", header = FALSE)
test.x.df <- read.table("./test/x_test.txt", header = FALSE)
test.y.df <- read.table("./test/y_test.txt", header = FALSE)

#Link the test data & rename the columns
test.complete.df <- cbind(test.subjects.df, test.y.df, test.x.df)
names(test.complete.df) <- c('subject', 'activity', as.character(features.df$V2))


#Combine Training and Test data
#====================================================================================================
complete.df <- rbind(train.complete.df, test.complete.df)


#Extract only columns with mean() and std() information (plus the subject & activity data)
#NOTE: Assuming that MeanFreq() is not meant to be included.
#====================================================================================================
filtered.df <- complete.df[,grep("subject|activity|mean\\(\\)|std\\(\\)", names(complete.df))]


#Add descriptive activity names
#====================================================================================================
filtered.df <- merge(filtered.df, activitylabels.df, by.x = "activity", by.y = "V1", all.x = TRUE)

#Give the new column a meaningful name
filtered.df <- rename(filtered.df, 'ActivityName' = V2)
filtered.df <- rename(filtered.df, 'ActivityId' = activity)

#reorder the columns for readability
filtered.df <- filtered.df[, c(1, 69, 2:68)]


#Rename the columns descriptively
#====================================================================================================
names(filtered.df) <- gsub("-", "", names(filtered.df))
names(filtered.df) <- gsub("^t", "Time", names(filtered.df))
names(filtered.df) <- gsub("^f", "Frequency", names(filtered.df))
names(filtered.df) <- gsub("Acc", "Acceleration", names(filtered.df))
names(filtered.df) <- gsub("Gyro", "Gyroscope", names(filtered.df))
names(filtered.df) <- gsub("Mag", "Magnitude", names(filtered.df))
names(filtered.df) <- gsub("mean\\(\\)", "Mean", names(filtered.df))
names(filtered.df) <- gsub("std\\(\\)", "StandardDeviation", names(filtered.df))


#Group by subject and activity, then summarize mean() on this basis
#====================================================================================================
summarised.df <- group_by(filtered.df, ActivityName, subject)
summarised.df <- summarise_each(summarised.df, funs(mean))

#Write out the tidy datasets
#====================================================================================================
write.table(filtered.df, "tidydata.txt", row.names = FALSE)
write.table(summarised.df, "summarydata.txt", row.names = FALSE)



