message("Eval `run_analysis_to_file <- TRUE` if you want to save result to files `set.txt`, `tidySet.txt`")

# assumption - we do not have any read permissions problem
files <- c("test/X_test.txt", "test/y_test.txt", "test/subject_test.txt", "train/X_train.txt", "train/y_train.txt", 
"train/subject_train.txt", "features.txt", "activity_labels.txt")
if (any(file.exists(files) == FALSE)) {
    stop(paste("file not found", files[!file.exists(files)], sep=": "))
    return
}

# 1. Merges the training and the test sets to create one data set.
testSet <- read.table(files[1])
testActivity <- read.table(files[2])
testSubject <- read.table(files[3])
names(testActivity) <- "activity"
names(testSubject) <- "subject"

trainSet <- read.table(files[4])
trainActivity <- read.table(files[5])
trainSubject <- read.table(files[6])
names(trainActivity) <- "activity"
names(trainSubject) <- "subject"

test <- cbind(testSet, testActivity, testSubject)
train <- cbind(trainSet, trainActivity, trainSubject)
set <- rbind(test, train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table(files[7])
features <- rbind(features, data.frame(V1=c(562,563), V2=c("activity", "subject")))
names(set) <- features[,"V2"]

set <- set[,grepl('((mean|std)\\(\\)|activity|subject)', features$V2)]

# swap data and cut amount of variables here
set <- set %>% gather(measurement, value, -activity, -subject)

# 3. Uses descriptive activity names to name the activities in the data set

set <- set %>% mutate(activity=factor(activity))

activityLabels <-read.table(files[8])
activityLabels <- activityLabels %>% arrange(V1)
levels(set$activity) <- levels(activityLabels[[2]])
# 4. Appropriately labels the data set with descriptive variable names.
# @DONE

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidySet <- set %>% group_by(activity, subject, measurement) %>% summarize(mean=mean(value))

# @DONE - output is analysis, on 5 step
tidySet

if (run_analysis_to_file) {
    write.table(set, 'set.txt', sep="\t", row.names = FALSE)
    write.table(tidySet, 'tidySet.txt', sep="\t", row.names = FALSE)
}