CourseraGetdata008
==================

Project for Coursera course getdata-008, "Getting and Cleaning Data"

"UCI_HAR_Dataset_analysis.txt" - output file containing the averages of the columns containing
   the mean and standard deviation from the UCI HAR dataset grouped by activity and individual id.
"UCI_HAR_Dataset_analysis_CodeBook.md" - codebook describing the data and analysis run
"run_analysis.R" - R script used to perform the analysis

To generate the output file
0. Download and unzip "getdata_projectfiles_UCI HAR Dataset.zip"
1. Set the working directory to the directory containing the "UCI HAR Dataset" folder
    , which was extracted from "getdata_projectfiles_UCI HAR Dataset.zip"
2. Source "run_analysis.R"
3. Call the function "loaddata()" and assign the result to a variable 
4. Use write.table with row.names=FALSE to write the output file


The data is from 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Copies of the data used can be obtained at
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
https://d396qusza40orc.cloudfront.net/getdata_projectfiles_UCI%20HAR%20Dataset.zip 
