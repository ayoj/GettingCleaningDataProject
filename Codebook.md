Introduction

This codebook describes the variables, the data, and work performed to clean up data for the Coursera Getting and Cleaning Data course project.

The HAR Dataset contains the following files:

features_info.txt: Shows information about the variables used on the feature vector.                                                    features.txt: List of all features.
activity_labels.txt: Links the class labels with their activity name.
train/X_train.txt: Training set.
train/y_train.txt: Training labels.
test/X_test.txt: Test set.
test/y_test.txt: Test labels.

Files for the train and test data. Their descriptions are equivalent. 

1. train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
2. test.subject_test.txt: See above

Variables

zip.file.location:  Stores the website address from which the data was downloaded
dateDownloaded:     Stores the date on which the data was downloaded
file.names:         Stores the names of the files in the dataset, extracted from the zip file and UCI/HAR/Dataset directory

Data were read into R and the file names transformed by assigning simplified variable names as follows:

Variable Name       Original file name



featuresInfo        features_info.txt
features            features.txt
activity            activity_labels.txt
XTrain              train/X_train.txt
YTrain              train/y_train.txt
XTest               test/X_test.txt
YTest               test/y_test.txt
README              README.txt
subjectTest         test/subject_test.txt
subjectTrain        train/subject_train.txt

Transformations

Merge:
MergedData:         A dataset consisting of training and test data along with subject IDs and set labels combined using cbind and rbind functions

MergedMeanStd       A dataset extracted from MergedData by subsetting

tidydata            A dataset of the mean measurements of MergedMeanStd by subject and activity obtained using the plyr package
tidy.txt            File output by above computation



