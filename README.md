# Getting-and-Cleaning-Data-Project
# The Project for Getting and Cleaning Data Course on Coursera

The directory in which run_analysis.R is located contains two
sub directories called test and train.  These folders contain the
test and training data from the UCI HAR Dataset download

Running the run_analysis.R file creates a set of data files in its home directory called:

body_acc_x_combined.txt
body_acc_y_combined.txt
body_acc_z_combined.txt
body_gyro_x_combined.txt
body_gyro_y_combined.txt
body_gyro_z_combined.txt
total_acc_x_combined.txt
total_acc_y_combined.txt
total_acc_z_combined.txt

The original row data contained 128 different measurements in test and train.  Each row had its mean and standard deviation calculated
and this data was combined with subject_test.txt and subject_train.txt to provide the device id.  The testing and training data was then combined into a single file for each type of measurement.

The averages of the mean and standard deviation were then calculated for these measurements and written to a file called final_results.txt.

The column titles were removed from this file.
The columns in order are as follows:
subject
avg_body_acc_x_mean
avg_body_acc_x_std
avg_body_acc_y_mean
avg_body_acc_y_std
avg_body_acc_z_mean
avg_body_acc_z_std
avg_body_gyro_x_mean
avg_body_gyro_x_std
avg_body_gyro_y_mean
avg_body_gyro_y_std
avg_body_gyro_z_mean
avg_body_gyro_z_std
avg_total_acc_x_mean
avg_total_acc_x_std
avg_total_acc_y_mean
avg_total_acc_y_std
avg_total_acc_z_mean
avg_total_acc_z_std






