The data is from 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Copies of the data used can be obtained at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
https://d396qusza40orc.cloudfront.net/getdata_projectfiles_UCI%20HAR%20Dataset.zip 

The original data were taken from a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.


UCI_HAR_Dataset_analysis.txt contains the averages of the measurements of mean and standard deviation from the UCI HAR Datasets grouped by activity and indivual. 
For purposes of this analysis the training and testing data were merged together.
For selecting columns it was assumed that the means were in columns with the name containing "mean()" and standard deviations were in columns with the name containing "std()".
The names of the activities and the id of the volunteer were merged back into the data.

For each record
Group.1 is the activity
Group.2 is a numeric identifier of the individual.
The columns containing the averages for each activity and individual retain the same heading as in the original dataset.


The code to generare this output is in run_analysis.R
