### Course Project Codebook
===========================

This is the codebook that describes the data in the tidy data set that is a deliverable for the course project for Getting And Cleaning Data.  This course is the third in a series of nine that is offered as a Signature Track Specialization Certificate program by Johns Hopkins University School Of Public Health through the Coursera website.  Please consult the accompanying README.txt file for further information on the raw data that is being analyzed here.

Author:  John Bejarano

============================
## Variables in the data set
============================
First there are two identifying variables:

1.  subject_id:  This is a simple integer that anonymously identifies each of the thirty individual test subjects that participated in the experiment.
1.  activity_name:  This is a brief description of the human activity being performed by the subject at the time that the other signal variables from the smartphone were captured.  The only six values here are:  LAYING[sic], SITTING, STANDING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS.

There are then sixty-six "signal" variables that represent calculated means of means and standard deviations of the numeric streams of data from the smartphone's motion detectors.  These variables are all normalized over an interval from -1 to 1, with each bound indicating an extreme of the sensor's range.  The names of these signal variables have a number of components as follows:

* "time" or "freq":  Each signal variable name begins with the word "time" denoting that these variables were direct measurements taken over time, or "freq" denoting that these variables represent the frequency calculated as a result of Fast Fourier Transformations that were performed on the original variables.
* "Body" or "Gravity":  Each signal variable name contains either the word "Body" denoting that the variable pertains to motion of the actual smartphone, or "Gravity" denoting that the variable refers to acceleration caused by Earth's gravity and not directly to motion of the smartphone itself.
* "Acc" or "Gyro":  Each signal variable name contains either the word "Acc" denoting that the signal was detected by the smartphone's accelerometer, or "Gyro" denoting that the signal was detected by the smartphone's gyroscope.
* "mean" or "std":  The raw data provided both mean and standard deviations for these various signal variables (all of which themselves have been summarized into means in this dataset).  Each signal variable name contains either the word "mean" if the original variable represented a mean or "std" if the original variable represented a standard deviation.
* "X", "Y", "Z":  As the smartphone's acceleromter and gyroscope each measure acceleration and orientation resepctively in three dimensions, they each produce one signal variable for each of these axes.  These axes are designated "X", "Y", and "Z" to represent the three spatial dimensions (i.e. left-right, up-down, backward-forward).
* "Jerk":  Some signal variables are derived by examining multiple measurements over time to calculate a jerk or sudden change in position or orientation of the smartphone.  These variables have the word "Jerk" in their name.
* "Mag":  Many signal variables which were separated into their "X", "Y", and "Z" spatial axis components have been interpreted together as a vector in 3-dimensional space.  These vectors have magnitude and have been stored in signal variables of their own.  These variables have the word "Mag" in their name.

Thus, the signal variables are as follows:

1.  timeBodyAcc_mean_X:  Mean signal indicating acceleration of the smartphone in the X-axis as measured over time.
1.  timeBodyAcc_mean_Y:  Mean signal indicating acceleration of the smartphone in the Y-axis as measured over time.
1.  timeBodyAcc_mean_Z:  Mean signal indicating acceleration of the smartphone in the Z-axis as measured over time.
1.  timeBodyAcc_std_X:  Standard deviation of signal indicating acceleration of the smartphone in the X-axis as measured over time.
1.  timeBodyAcc_std_Y:  Standard deviation of signal indicating acceleration of the smartphone in the Y-axis as measured over time.
1.  timeBodyAcc_std_Z:  Standard deviation of signal indicating acceleration of the smartphone in the Z-axis as measured over time.
1.  timeBodyGravity_mean_X:  Mean signal indicating acceleration due to gravity in the X-axis as measured over time.
1.  timeBodyGravity_mean_Y:  Mean signal indicating acceleration due to gravity in the Y-axis as measured over time.
1.  timeBodyGravity_mean_Z:  Mean signal indicating acceleration due to gravity in the Z-axis as measured over time.
1.  timeBodyGravity_std_X:  Standard deviation of signal indicating acceleration due to gravity in the X-axis as measured over time.
1.  timeBodyGravity_std_Y:  Standard deviation of signal indicating acceleration due to gravity in the Y-axis as measured over time.
1.  timeBodyGravity_std_Z:  Standard deviation of signal indicating acceleration due to gravity in the Z-axis as measured over time.
1.  timeBodyAccJerk_mean_X:  Mean signal indicating sudden jerk in acceleration of the smartphone in the X-axis as measured over time.
1.  timeBodyAccJerk_mean_Y:  Mean signal indicating sudden jerk in acceleration of the smartphone in the Y-axis as measured over time.
1.  timeBodyAccJerk_mean_Z:  Mean signal indicating sudden jerk in acceleration of the smartphone in the Z-axis as measured over time.
1.  timeBodyAccJerk_std_X:  Standard deviation of signal indicating sudden jerk in acceleration of the smartphone in the X-axis as measured over time.
1.  timeBodyAccJerk_std_Y:  Standard deviation of signal indicating sudden jerk in acceleration of the smartphone in the Y-axis as measured over time.
1.  timeBodyAccJerk_std_Z:  Standard deviation of signal indicating sudden jerk in acceleration of the smartphone in the Z-axis as measured over time.
1.  timeBodyGyro_mean_X:  Mean signal indicating gyroscopic orientation of the smartphone in the X-axis as measured over time.
1.  timeBodyGyro_mean_Y:  Mean signal indicating gyroscopic orientation of the smartphone in the Y-axis as measured over time.
1.  timeBodyGyro_mean_Z:  Mean signal indicating gyroscopic orientation of the smartphone in the Z-axis as measured over time.
1.  timeBodyGyro_std_X:  Standard deviation of signal indicating gyroscopic orientation of the smartphone in the X-axis as measured over time.
1.  timeBodyGyro_std_Y:  Standard deviation of signal indicating gyroscopic orientation of the smartphone in the Y-axis as measured over time.
1.  timeBodyGyro_std_Z:  Standard deviation of signal indicating gyroscopic orientation of the smartphone in the Z-axis as measured over time.
1.  timeBodyGyroJerk_mean_X:  Mean signal indicating sudden jerk in acceleration of the smartphone in the X-axis as measured over time.
1.  timeBodyGyroJerk_mean_Y:  Mean signal indicating sudden jerk in acceleration of the smartphone in the Y-axis as measured over time.
1.  timeBodyGyroJerk_mean_Z:  Mean signal indicating sudden jerk in acceleration of the smartphone in the Z-axis as measured over time.
1.  timeBodyGyroJerk_std_X:  Standard deviation of signal indicating sudden jerk in gyroscopic orientation of the smartphone in the X-axis as measured over time.
1.  timeBodyGyroJerk_std_Y:  Standard deviation of signal indicating sudden jerk in gyroscopic orientation of the smartphone in the Y-axis as measured over time.
1.  timeBodyGyroJerk_std_Z:  Standard deviation of signal indicating sudden jerk in gyroscopic orientation of the smartphone in the Z-axis as measured over time.
1.  timeBodyAccMag_mean:  Mean signal indicating magnitude of acceleration vector in 3-D space of the smartphone as measured over time.
1.  timeBodyAccMag_std:  Standard deviation of signal indicating magnitude of acceleration vector in 3-D space of the smartphone as measured over time.
1.  timeGravityAccMag_mean:  Mean signal indicating magnitude of acceleration vector in 3-D space due to gravity as measured over time.
1.  timeGravityAccMag_std:  Standard deviation of signal indicating magnitude of acceleration vector in 3-D space due to gravity as measured over time.
1.  timeBodyAccJerkMag_mean:  Mean signal indicating magnitude of acceleration vector in 3-D space due to sudden jerk of the smartphone as measured over time.
1.  timeBodyAccJerkMag_std:  Standard deviation of signal indicating magnitude of acceleration vector in 3-D space due to sudden jerk of the smartphone as measured over time.
1.  timeBodyGyroMag_mean:  Mean signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as measured over time.
1.  timeBodyGyroMag_std:  Standard deviation of signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as measured over time.
1.  timeBodyGyroJerkMag_mean:  Mean signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as measured over time.
1.  timeBodyGyroJerkMag_std:  Standard deviation of signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as measured over time.
1.  freqBodyAcc_mean_X:  Mean signal indicating acceleration of the smartphone in the X-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAcc_mean_Y:  Mean signal indicating acceleration of the smartphone in the Y-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAcc_mean_Z:  Mean signal indicating acceleration of the smartphone in the Z-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAcc_std_X:  Standard deviation of signal indicating acceleration of the smartphone in the X-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAcc_std_Y:  Standard deviation of signal indicating acceleration of the smartphone in the Y-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAcc_std_Z:  Standard deviation of signal indicating acceleration of the smartphone in the Z-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerk_mean_X:  Mean signal indicating sudden jerk in acceleration of the smartphone in the X-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerk_mean_Y:  Mean signal indicating sudden jerk in acceleration of the smartphone in the Y-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerk_mean_Z:  Mean signal indicating sudden jerk in acceleration of the smartphone in the Z-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerk_std_X:  Standard deviation of signal indicating sudden jerk in acceleration of the smartphone in the X-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerk_std_Y:  Standard deviation of signal indicating sudden jerk in acceleration of the smartphone in the Y-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerk_std_Z:  Standard deviation of signal indicating sudden jerk in acceleration of the smartphone in the Z-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyro_mean_X:  Mean signal indicating gyroscopic orientation of the smartphone in the X-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyro_mean_Y:  Mean signal indicating gyroscopic orientation of the smartphone in the Y-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyro_mean_Z:  Mean signal indicating gyroscopic orientation of the smartphone in the Z-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyro_std_X:  Standard deviation of signal indicating gyroscopic orientation of the smartphone in the X-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyro_std_Y:  Standard deviation of signal indicating gyroscopic orientation of the smartphone in the Y-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyro_std_Z:  Standard deviation of signal indicating gyroscopic orientation of the smartphone in the Z-axis as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccMag_mean:  Mean signal indicating magnitude of acceleration vector in 3-D space of the smartphone as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccMag_std:  Standard deviation of signal indicating magnitude of acceleration vector in 3-D space of the smartphone as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerkMag_mean:  Mean signal indicating magnitude of acceleration vector in 3-D space due to sudden jerk of the smartphone as frequency calculated by Fast Fourier Transform.
1.  freqBodyAccJerkMag_std:  Standard deviation of signal indicating magnitude of acceleration vector in 3-D space due to sudden jerk of the smartphone as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyroMag_mean:  Mean signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyroMag_std:  Standard deviation of signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyroJerkMag_mean:  Mean signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as frequency calculated by Fast Fourier Transform.
1.  freqBodyGyroJerkMag_std:  Standard deviation of signal indicating magnitude of gyroscopic orientation vector in 3-D space of the smartphone as frequency calculated by Fast Fourier Transform.
