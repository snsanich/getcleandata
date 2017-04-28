Analysis files
=========

How to use
-------
Download run_analysis.R into `UCI HAR DATASET` folder and run [R]. Set cwd path by `setwd()` into `UCI HAR DATASET` folder. Type `source('run_analysis.R')` to prepare data sets.

Raw data
---------

All information about *Raw data* can be found [Getting And Cleaning Data Course Project](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project)

Files
-----

*run_analysis.R* - R script that does the following:
+ Merges the training and the test sets to create one data set.
+ Extracts only the measurements on the mean and standard deviation for each measurement.
+ Uses descriptive activity names to name the activities in the data set
+ Appropriately labels the data set with descriptive variable names.
+ From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

output variables: *set* after step 4, *tidySet* after step 5.

*CodeBook.md* - variable description for both result sets. All details about original data set can be found by link [Getting And Cleaning Data Course Project](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project)

### Review criterialess 
* The Github repo contains the required scripts.
* GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
* The README that explains the analysis files is clear and understandable.
* The work submitted for this project is the work of the student who submitted it.