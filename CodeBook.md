Descriptions of variables
=================

The variables for this database come from estimated result set, created by "Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto." for "Human Activity Recognition Using Smartphones Dataset". 

They collected multiple measurements from 30 individuals, each of those performed 6 activities.

More details about their work described [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). More details can be found [Getting And Cleaning Data Course Project](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project).


Variables
--------

### `activity`

Activity label, 6 in total.

+ WALKING
+ WALKING_UPSTAIRS
+ WALKING_DOWNSTAIRS
+ SITTING
+ STANDING
+ LAYING
 
### `subject`
An identifier of the subject (person), who carried out the experiment. Numbers from 1 till 30

### `measurement`
Measurements have two types: 
* signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* magnitude of three-dimensional signals were calculated using the Euclidean norm. Pattern: 'Mag'

It were estimated variables, based on raw signals, created during experiment. In total we have 33 measurements, both signals and magnitude. For each measurement we have mean and standard deviasions.

+ tBodyAcc-XYZ
+ tGravityAcc-XYZ
+ tBodyAccJerk-XYZ
+ tBodyGyro-XYZ
+ tBodyGyroJerk-XYZ
+ tBodyAccMag
+ tGravityAccMag
+ tBodyAccJerkMag
+ tBodyGyroMag
+ tBodyGyroJerkMag
+ fBodyAcc-XYZ
+ fBodyAccJerk-XYZ
+ fBodyGyro-XYZ
+ fBodyAccMag
+ fBodyAccJerkMag
+ fBodyGyroMag
+ fBodyGyroJerkMag


### value
Each measurement was normalized and bounded within [-1,1].

#### differs between `set` and `tidySet`
* each value in `tidySet` is a average value of `set`, grouped by `measurement`, `activity` and `subject`