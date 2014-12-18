#Load dplyr library.  This will be needed for some transformations.
library(dplyr)

#Read in all needed raw data sets.

#Set the directory.
#setwd("H:\\Data Science\\course3project\\getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset")

#Read activity enumeration.
df_activity <- read.table("activity_labels.txt")
names(df_activity) <- c("activity_id", "activity_name")

#Read feature enumeration.
df_feature <- read.table("features.txt")
names(df_feature) <- c("feature_id", "feature_name")

#Set the directory to read test data.
setwd("test")

#Read data indicating which subject performed each observation.
df_subject_test <- read.table("subject_test.txt")
names(df_subject_test) <- "subject_id"

#Read all features for each observation.
df_x_test <- read.table("X_test.txt")
names(df_x_test) <- df_feature$feature_name

#Read data indicating which activity that was being performed for each observation.
df_y_test <- read.table("y_test.txt")
names(df_y_test) <- "activity_id"

#Set the directory to read training data.
setwd("..\\train")

#Read data indicating which subject performed each observation.
df_subject_train <- read.table("subject_train.txt")
names(df_subject_train) <- "subject_id"

#Read all features for each observation.
df_x_train <- read.table("X_train.txt")
names(df_x_train) <- df_feature$feature_name

#Read data indicating which activity that was being performed for each observation. 
df_y_train <- read.table("y_train.txt")
names(df_y_train) <- "activity_id"

#Collect test data together.
df_test <- cbind(df_subject_test, df_x_test, df_y_test)

#Collect training data together.
df_train <- cbind(df_subject_train, df_x_train, df_y_train)

#Combine test and training data together.
df_all <- rbind(df_test, df_train)

#Bring in activity names, and make them third column.
suppressWarnings(df_all <- merge(df_all, df_activity, by = "activity_id"))
df_all <- df_all[,c(1:2,length(df_all),3:(length(df_all) - 1))]

#Select only features based on means and standard deviations.
df_ms <- df_all[,grepl("mean\\()|std\\()|activity_name|subject_id", names(df_all))]

#Remove parentheses from column names, change hyphens to underscores
#to avoid confusion with function calls and subtraction operators,
#change "t" and "f" to "time" and "freq" for clarity, and remove extraneous
#Body designations from some variable names.
names(df_ms) <- gsub("\\(\\)", "", names(df_ms))
names(df_ms) <- gsub("-", "_", names(df_ms))
names(df_ms) <- gsub("^t", "time", names(df_ms))
names(df_ms) <- gsub("^f", "freq", names(df_ms))
names(df_ms) <- gsub("BodyBody", "Body", names(df_ms))


#Group by subject and activity and find the means by each group.
#(NOTE: We begin using dplyr package functions here.)
#Use chained dplyr commands:  df_summary <- original df %>% group_by(...) %>% summarise(...)
df_summary <- df_ms %>%
                group_by(subject_id, activity_name) %>%
                summarise(timeBodyAcc_mean_X = mean(timeBodyAcc_mean_X),
                          timeBodyAcc_mean_Y = mean(timeBodyAcc_mean_Y),
                          timeBodyAcc_mean_Z = mean(timeBodyAcc_mean_Z),
                          timeBodyAcc_std_X = mean(timeBodyAcc_std_X),
                          timeBodyAcc_std_Y = mean(timeBodyAcc_std_Y),
                          timeBodyAcc_std_Z = mean(timeBodyAcc_std_Z),
                          timeGravityAcc_mean_X = mean(timeGravityAcc_mean_X),
                          timeGravityAcc_mean_Y = mean(timeGravityAcc_mean_Y),
                          timeGravityAcc_mean_Z = mean(timeGravityAcc_mean_Z),
                          timeGravityAcc_std_X = mean(timeGravityAcc_std_X),
                          timeGravityAcc_std_Y = mean(timeGravityAcc_std_Y),
                          timeGravityAcc_std_Z = mean(timeGravityAcc_std_Z),
                          timeBodyAccJerk_mean_X = mean(timeBodyAccJerk_mean_X),
                          timeBodyAccJerk_mean_Y = mean(timeBodyAccJerk_mean_Y),
                          timeBodyAccJerk_mean_Z = mean(timeBodyAccJerk_mean_Z),
                          timeBodyAccJerk_std_X = mean(timeBodyAccJerk_std_X),
                          timeBodyAccJerk_std_Y = mean(timeBodyAccJerk_std_Y),
                          timeBodyAccJerk_std_Z = mean(timeBodyAccJerk_std_Z),
                          timeBodyGyro_mean_X = mean(timeBodyGyro_mean_X),
                          timeBodyGyro_mean_Y = mean(timeBodyGyro_mean_Y),
                          timeBodyGyro_mean_Z = mean(timeBodyGyro_mean_Z),
                          timeBodyGyro_std_X = mean(timeBodyGyro_std_X),
                          timeBodyGyro_std_Y = mean(timeBodyGyro_std_Y),
                          timeBodyGyro_std_Z = mean(timeBodyGyro_std_Z),
                          timeBodyGyroJerk_mean_X = mean(timeBodyGyroJerk_mean_X),
                          timeBodyGyroJerk_mean_Y = mean(timeBodyGyroJerk_mean_Y),
                          timeBodyGyroJerk_mean_Z = mean(timeBodyGyroJerk_mean_Z),
                          timeBodyGyroJerk_std_X = mean(timeBodyGyroJerk_std_X),
                          timeBodyGyroJerk_std_Y = mean(timeBodyGyroJerk_std_Y),
                          timeBodyGyroJerk_std_Z = mean(timeBodyGyroJerk_std_Z),
                          timeBodyAccMag_mean = mean(timeBodyAccMag_mean),
                          timeBodyAccMag_std = mean(timeBodyAccMag_std),
                          timeGravityAccMag_mean = mean(timeGravityAccMag_mean),
                          timeGravityAccMag_std = mean(timeGravityAccMag_std),
                          timeBodyAccJerkMag_mean = mean(timeBodyAccJerkMag_mean),
                          timeBodyAccJerkMag_std = mean(timeBodyAccJerkMag_std),
                          timeBodyGyroMag_mean = mean(timeBodyGyroMag_mean),
                          timeBodyGyroMag_std = mean(timeBodyGyroMag_std),
                          timeBodyGyroJerkMag_mean = mean(timeBodyGyroJerkMag_mean),
                          timeBodyGyroJerkMag_std = mean(timeBodyGyroJerkMag_std),
                          freqBodyAcc_mean_X = mean(freqBodyAcc_mean_X),
                          freqBodyAcc_mean_Y = mean(freqBodyAcc_mean_Y),
                          freqBodyAcc_mean_Z = mean(freqBodyAcc_mean_Z),
                          freqBodyAcc_std_X = mean(freqBodyAcc_std_X),
                          freqBodyAcc_std_Y = mean(freqBodyAcc_std_Y),
                          freqBodyAcc_std_Z = mean(freqBodyAcc_std_Z),
                          freqBodyAccJerk_mean_X = mean(freqBodyAccJerk_mean_X),
                          freqBodyAccJerk_mean_Y = mean(freqBodyAccJerk_mean_Y),
                          freqBodyAccJerk_mean_Z = mean(freqBodyAccJerk_mean_Z),
                          freqBodyAccJerk_std_X = mean(freqBodyAccJerk_std_X),
                          freqBodyAccJerk_std_Y = mean(freqBodyAccJerk_std_Y),
                          freqBodyAccJerk_std_Z = mean(freqBodyAccJerk_std_Z),
                          freqBodyGyro_mean_X = mean(freqBodyGyro_mean_X),
                          freqBodyGyro_mean_Y = mean(freqBodyGyro_mean_Y),
                          freqBodyGyro_mean_Z = mean(freqBodyGyro_mean_Z),
                          freqBodyGyro_std_X = mean(freqBodyGyro_std_X),
                          freqBodyGyro_std_Y = mean(freqBodyGyro_std_Y),
                          freqBodyGyro_std_Z = mean(freqBodyGyro_std_Z),
                          freqBodyAccMag_mean = mean(freqBodyAccMag_mean),
                          freqBodyAccMag_std = mean(freqBodyAccMag_std),
                          freqBodyAccJerkMag_mean = mean(freqBodyAccJerkMag_mean),
                          freqBodyAccJerkMag_std = mean(freqBodyAccJerkMag_std),
                          freqBodyGyroMag_mean = mean(freqBodyGyroMag_mean),
                          freqBodyGyroMag_std = mean(freqBodyGyroMag_std),
                          freqBodyGyroJerkMag_mean = mean(freqBodyGyroJerkMag_mean),
                          freqBodyGyroJerkMag_std = mean(freqBodyGyroJerkMag_std)
                )

#Set the directory back to the main data directory.
setwd("..")

#Write out the final summary table.
write.table(df_summary, "UCI HAR Data Summary.txt", row.names = FALSE)

