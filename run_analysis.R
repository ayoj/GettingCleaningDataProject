# Download the file, document the date downloaded and unzip

zip.file.location <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zip.file.location, "dataset.zip", mode = "wb")
dateDownloaded <- date()
file.names <- unzip("dataset.zip", exdir = ".")

#simplify filenames. We read in each file in the file.names list and assigned them an easily recognised name
activity <- read.table(file.names[1])
features <- read.table(file.names[2])
featuresInfo <- read.table(file.names[3], header= F, fill =T, sep ="\t")
README <- read.table(file.names[4], header = F, fill = T, sep ="\t")
subjectTest <- read.table(file.names[14])
XTest <- read.table(file.names[15])
YTest <- read.table(file.names[16])
subjectTrain <- read.table(file.names[26])
XTrain <- read.table(file.names[27])
YTrain <- read.table(file.names[28])

#add actual measurement names
names(XTrain) <- features[,2]
names(XTest) <- features[,2]

#add subject ID names
names(subjectTrain) <- c("subject")
names(subjectTest) <- c("subject")

#add activity label names
names(YTrain) <- c("activity")
names(YTest) <- c("activity")




#merge training and test datasets into one
trainingdata <- cbind(YTrain, subjectTrain, XTrain)
testdata <- cbind(YTest,subjectTest, XTest)
MergedData <- rbind(trainingdata, testdata)

#extract mean and standard deviations 
MergedMeanStd <- MergedData[,c("activity", "subject", (grep ("mean|std", names(MergedData), value = TRUE)))]

#replace activity codes with descriptive activity names
MergedMeanStd$activity[MergedMeanStd$activity == 1] <- "Walking" 
MergedMeanStd$activity[MergedMeanStd$activity == 2] <- "Walking_upstairs"
MergedMeanStd$activity[MergedMeanStd$activity == 3] <- "Walking_downstairs"
MergedMeanStd$activity[MergedMeanStd$activity == 4] <- "Sitting" 
MergedMeanStd$activity[MergedMeanStd$activity == 5] <- "Standing"
MergedMeanStd$activity[MergedMeanStd$activity == 6] <- "Laying"

#Choosing descriptive variable names

names(MergedMeanStd) <- gsub("^t", "time", names(MergedMeanStd))
names(MergedMeanStd) <- gsub("^f", "frequency", names(MergedMeanStd))
names(MergedMeanStd) <- gsub("Acc", "Accelerometer", names(MergedMeanStd))
names(MergedMeanStd) <- gsub("Gyro", "Gyroscope", names(MergedMeanStd))
names(MergedMeanStd) <- gsub("Mag", "Magnitude", names(MergedMeanStd))
names(MergedMeanStd) <- gsub("BodyBody", "Body", names(MergedMeanStd))


#create a tidy data set giving average for each variable and each activity and each subject

## first factorise activity and subject
MergedMeanStd$activity <- as.factor(MergedMeanStd$activity)
MergedMeanStd$subject <- as.factor(MergedMeanStd$subject)


library(plyr)
tidydata <- aggregate(. ~subject + activity, MergedMeanStd, mean)
tidydata <- tidydata[order(tidydata$subject, tidydata$activity),]
write.table(tidydata, file = "tidy.txt", row.names = FALSE)
