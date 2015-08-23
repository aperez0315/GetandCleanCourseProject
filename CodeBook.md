Getting and Cleaning Data - Course Project Codebook
===================================================

CodeBook:Description of raw variables, the code and summary choice, and tidy data output.
-----------------------------------------------------------------------------------------
###Summary
This is the code book for the Course Project for the Getting and Cleaning Data Course 
on Coursera.org.  This project takes data used for the following paper: 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

###A description of how the data was collected is below:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments 
have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two 
sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled 
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, 
which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a 
filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating 
variables from the time and frequency domain. See 'features_info.txt' for more details. 

##The Variables in the Raw Data

###Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

###The data was delivered in these four dataset:
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

###For each record it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

##The Final Data Set (Named Step5Data.txt)
The raw data for both the training and testing data read into R, along with the features.txt and activity_labels.txt files.
The vector in the features.txt file describing the variabled is assigned as the named for the variables in each of the 
train and test datasets. These two dataset are then stacked to combine all participants into one file. The names of the new
combined data is used to subset the data for only the mean and standard deviation measurements taken. The activity_labels.txt
file is then merged onto the file to get a better description of each activity engaged be the given participant.  The data
is then reordered so the subject and the activity are the first two columns. The final, tidy data is an averages of 
different measurements (all columns).  It has one record per subject/activity combination.The code, runanalysis.R creates 
and outputs this "tidy data" to the file Step5Date.txt.  There are 180 records and 88 variables.  Each column is 
cleanly named to help the user understand the data and what conclusions they can draw from any analysis they perform.

##The Data
###This is a list of the variables in the tidy data and a description of each one for the user's reference:
* subjectid = Participant ID
* activity = Activity Engaged
* TimeBodyAcc.mean...XDirection = Time body measurement for accelorameter in X Direction (Mean)
* TimeBodyAcc.mean...YDirection = Time body measurement for accelorameter in Y Direction (Mean)
* TimeBodyAcc.mean...ZDirection = Time body measurement for accelorameter in Z Direction (Mean)
* TimeGravityAcc.mean...XDirection = Time gravity measurement accelorometer X Direction (Mean)
* TimeGravityAcc.mean...YDirection = Time gravity measurement accelorometer Y Direction (Mean)
* TimeGravityAcc.mean...ZDirection = Time gravity measurement accelorometer Z Direction (Mean)
* TimeBodyAccJerk.mean...XDirection = Time body  measurement accelorometer jerk X Direction (Mean)
* TimeBodyAccJerk.mean...YDirection = Time body  measurement accelorometer jerk Y Direction (Mean)
* TimeBodyAccJerk.mean...ZDirection = Time body  measurement accelorometer jerk Z Direction (Mean)
* TimeBodyGyro.mean...XDirection = Time body measurement gyroscope X Direction (Mean)
* TimeBodyGyro.mean...YDirection = Time body measurement gyroscope Y Direction (Mean)
* TimeBodyGyro.mean...ZDirection = Time body measurement gyroscope Z Direction (Mean)
* TimeBodyGyroJerk.mean...XDirection = Time body measurement X Direction (Mean)
* TimeBodyGyroJerk.mean...YDirection = Time body measurement Y Direction (Mean)
* TimeBodyGyroJerk.mean...ZDirection = Time body measurement Z Direction (Mean)
* TimeBodyAccMagnitude.mean.. = Time body measurement accelorometer magnitude (Mean)
* TimeGravityAccMagnitude.mean.. = Time body measurement accelorometer magnitude (Mean)
* TimeBodyAccJerkMagnitude.mean.. = Time body measurement accelorometer jerk magnitude (Mean)
* TimeBodyGyroMagnitude.mean.. = Time body measurement gyroscope magnitude (Mean)
* TimeBodyGyroJerkMagnitude.mean.. = Time body measurement gyroscope jerk magnitude (Mean)
* FourierTransformBodyAcc.mean...XDirection = Fast Fourier Transform accelorometer X Direction (Mean)
* FourierTransformBodyAcc.mean...YDirection = Fast Fourier Transform accelorometer Y Direction (Mean)
* FourierTransformBodyAcc.mean...ZDirection = Fast Fourier Transform accelorometer Z Direction (Mean)
* FourierTransformBodyAcc.meanFreq...XDirection = Fast Fourier Transform accelorometer X Direction (Meanfreq)
* FourierTransformBodyAcc.meanFreq...YDirection = Fast Fourier Transform accelorometer Y Direction (Meanfreq)
* FourierTransformBodyAcc.meanFreq...ZDirection = Fast Fourier Transform accelorometer Z Direction (Meanfreq)
* FourierTransformBodyAccJerk.mean...XDirection = Fast Fourier Transform accelorometer jerk X Direction (Mean)
* FourierTransformBodyAccJerk.mean...YDirection = Fast Fourier Transform accelorometer jerk Y Direction (Mean)
* FourierTransformBodyAccJerk.mean...ZDirection = Fast Fourier Transform accelorometer jerk Z Direction (Mean)
* FourierTransformBodyAccJerk.meanFreq...XDirection = Fast Fourier Transform accelorometer jerk X Direction (Meanfreq)
* FourierTransformBodyAccJerk.meanFreq...YDirection = Fast Fourier Transform accelorometer jerk Y Direction (Meanfreq)
* FourierTransformBodyAccJerk.meanFreq...ZDirection = Fast Fourier Transform accelorometer jerk Z Direction (Meanfreq)
* FourierTransformBodyGyro.mean...XDirection = Fast Fourier Transform gyroscope X Direction (Mean)
* FourierTransformBodyGyro.mean...YDirection = Fast Fourier Transform gyroscope Y Direction (Mean)
* FourierTransformBodyGyro.mean...ZDirection = Fast Fourier Transform gyroscope Z Direction (Mean)
* FourierTransformBodyGyro.meanFreq...XDirection = Fast Fourier Transform gyroscope X Direction (Meanfreq)
* FourierTransformBodyGyro.meanFreq...YDirection = Fast Fourier Transform gyroscope Y Direction (Meanfreq)
* FourierTransformBodyGyro.meanFreq...ZDirection = Fast Fourier Transform gyroscope Z Direction (Meanfreq)
* FourierTransformBodyAccMagnitude.mean.. = Fast Fourier Transform body measurement accelorometer magnitude (Mean)
* FourierTransformBodyAccMagnitude.meanFreq.. = Fast Fourier Transform body measurement accelorometer magnitude (Meanfreq)
* FourierTransformBodyBodyAccJerkMagnitude.mean.. = Fast Fourier Transform body measurement accelorometer jerk magnitude (Mean)
* FourierTransformBodyBodyAccJerkMagnitude.meanFreq.. = Fast Fourier Transform body measurement accelorometer jerk magnitude (Meanfreq)
* FourierTransformBodyBodyGyroMagnitude.mean.. = Fast Fourier Transform body measurement gyroscope magnitude (Mean)
* FourierTransformBodyBodyGyroMagnitude.meanFreq.. = Fast Fourier Transform body measurement gyroscope magnitude (Meanfreq)
* FourierTransformBodyBodyGyroJerkMagnitude.mean..  = Fast Fourier Transform body measurement gyroscope jerk magnitude (Mean)
* FourierTransformBodyBodyGyroJerkMagnitude.meanFreq.. = Fast Fourier Transform body measurement gyroscope jerk magnitude (Meanfreq)
* angle.TimeBodyAccMean.gravity. = angle body measurement accelorometer (Mean)
* angle.TimeBodyAccJerkMean..gravityMean. angle time body measurement accelorometer jerk (gravity Mean)
* angle.TimeBodyGyroMean.gravityMean. angle time body measurement gyroscope (gravity Mean)
* angle.TimeBodyGyroJerkMean.gravityMean. = angle time body measurement gyroscope jerk (gravity Mean)
* angle.XDirection.gravityMean. = angle measurement X Direction (gravity Mean)
* angle.YDirection.gravityMean. = angle measurement Y Direction (gravity Mean)
* angle.ZDirection.gravityMean. = angle measurement Z Direction (gravity Mean)
* TimeBodyAcc.std...XDirection = Time body measurement for accelorameter  X Direction (STD)
* TimeBodyAcc.std...YDirection = Time body measurement for accelorameter  Y Direction (STD)
* TimeBodyAcc.std...ZDirection = Time body measurement for accelorameter  Z Direction (STD)
* TimeGravityAcc.std...XDirection = Time gravity measurement for accelorameter X Direction (STD)
* TimeGravityAcc.std...YDirection = Time gravity measurement for accelorameter Y Direction (STD)
* TimeGravityAcc.std...ZDirection = Time gravity measurement for accelorameter Z Direction (STD)
* TimeBodyAccJerk.std...XDirection = Time body measurement for accelorameter jerk X Direction (STD)
* TimeBodyAccJerk.std...YDirection = Time body measurement for accelorameter jerk Y Direction (STD)
* TimeBodyAccJerk.std...ZDirection = Time body measurement for accelorameter jerk Z Direction (STD)
* TimeBodyGyro.std...XDirection = Time body measurement for gyroscope X Direction (STD)
* TimeBodyGyro.std...YDirection = Time body measurement for gyroscope Y Direction (STD)
* TimeBodyGyro.std...ZDirection = Time body measurement for gyroscope Z Direction (STD)
* TimeBodyGyroJerk.std...XDirection = Time body measurement for gyroscope jerk X Direction (STD)
* TimeBodyGyroJerk.std...YDirection = Time body measurement for gyroscope jerk Y Direction (STD)
* TimeBodyGyroJerk.std...ZDirection = Time body measurement for gyroscope jerk Z Direction (STD)
* TimeBodyAccMagnitude.std.. = Time body measurement accelorometer magnitude (STD)
* TimeGravityAccMagnitude.std.. = Time gravity measurement accelorometer magnitude (STD)
* TimeBodyAccJerkMagnitude.std.. = Time body measurement accelorometer jerk magnitude (STD)
* TimeBodyGyroMagnitude.std.. = Time body measurement gyroscope magnitude (STD)
* TimeBodyGyroJerkMagnitude.std.. = Time body measurement gyroscope jerk magnitude (STD)
* FourierTransformBodyAcc.std...XDirection = Fast Fourier Transform accelorometer X Direction (STD)
* FourierTransformBodyAcc.std...YDirection = Fast Fourier Transform accelorometer Y Direction (STD)
* FourierTransformBodyAcc.std...ZDirection = Fast Fourier Transform accelorometer Z Direction (STD)
* FourierTransformBodyAccJerk.std...XDirection = Fast Fourier Transform accelorometer jerk X Direction (STD)
* FourierTransformBodyAccJerk.std...YDirection =  Fast Fourier Transform accelorometer jerk Direction (STD)
* FourierTransformBodyAccJerk.std...ZDirection = Fast Fourier Transform accelorometer jerk Z Direction (STD)
* FourierTransformBodyGyro.std...XDirection =  Fast Fourier Transform Gyroscope X Direction (STD)
* FourierTransformBodyGyro.std...YDirection =  Fast Fourier Transform Gyroscope Y Direction (STD)
* FourierTransformBodyGyro.std...ZDirection =  Fast Fourier Transform Gyroscope Z Direction (STD)
* FourierTransformBodyAccMagnitude.std.. = Fast Fourier Transform body accelorometer magnitude (STD)
* FourierTransformBodyBodyAccJerkMagnitude.std.. = Fast Fourier Transform body accelorometer jerk magnitude (STD)
* FourierTransformBodyBodyGyroMagnitude.std.. = Fast Fourier Transform body gyroscope magnitude (STD)
* FourierTransformBodyBodyGyroJerkMagnitude.std.. = Fast Fourier Transform body gyroscope jerk magnitude (STD)