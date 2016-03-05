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
2. train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from the smartphone accelerometer X axis in standard gravity units g. Every row shows a 128 element vector. The same description applies for the total_acc_x_train.txt and total_acc_z_train.txt files for the Y and Z axis. 

3. train/Inertial Signals/body_acc_x_train.txt: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

4. train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

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

#add actual measurement names
names(XTrain) <- features[,2]
names(XTest) <- features[,2]

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set 4 Appropriately labels the data set with descriptive variable names.
A second independent tidy data ("tidy.txt") set has been created containing the averaged of each variable for each activity and each subject.
Status API Training Shop Blog About Pricing

