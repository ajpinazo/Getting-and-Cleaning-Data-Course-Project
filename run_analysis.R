
# Adding main data files (X_train and X_test)
features <- read.table("./UCI HAR Dataset/features.txt")[,2]
filteredFeatures <- sort(union(grep("mean\\(\\)", features), grep("std\\(\\)", features)))

cols_widths <- rep(-16, length(features))
cols_widths[filteredFeatures] <- 16
set <- read.fwf(file="./UCI HAR Dataset/test/X_test.txt", widths=cols_widths, col.names=features[filteredFeatures])
rawSet <- read.fwf(file="./UCI HAR Dataset/train/X_train.txt", widths=cols_widths, col.names=features[filteredFeatures])
               
set <- rbind(set, rawSet)

# Adding subjects
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")[,1]
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt" )[,1]
set$subject <-  c(subject_test, subject_train)      

# Adding activities
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")[,1]
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")[,1]
data_y <- c(y_test, y_train)

set$activity <- activities[data_y]
sets_x <- set[,seq(1, length(names(set)) - 2)]

summary_by <- by(sets_x, paste(set$subject, set$activity, sep="_"), FUN=colMeans)

summary <- do.call(rbind, summary_by)

write.table(summary, "tidy.txt")