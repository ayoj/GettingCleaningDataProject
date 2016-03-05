# GettingCleaningDataProject
Ayo Johnson

Repo contents
1. README.md (this document)
2. Codebook.md
3. run_analysis.R
4. A tidy dataset ("tidy.txt")

This is the final project of Coursera's Getting and Cleaning Data course.

As described in the project instructions, its purpose is to demonstrate "ability to collect, work with, and clean a data set". 
The goal is to prepare tidy data that can be used for later analysis. 

In this repo you will find a codebook (Codebook.md) that describes the variables, the data, and work performed to clean up the data.

The data for this exercise was collected from accelerometers of Samsung Galaxy S smartphones for a study on Human Activity Recognition (HAR) Using Smartphones conducted by the Centre for Machine Learning and Intelligence Systems (UCI) involving 30 participants (subjects).
The subjects were fitted with waist-mounted smartphones with inertial sensors which generated data as they performed activities.

The data was obtained from the following site:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

It was downloaded from this address:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Background
UCI provides the following background on the dataset:
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

The repo also contains an R script called run_analysis.R that does the following, as per the instructions.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4 Appropriately labels the data set with descriptive variable names.
5. A second independent tidy data ("tidy.txt") set has been created containing the averaged of each variable for each activity and each subject.
