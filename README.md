# Getting and Cleaning Data Course Project

This project is a part of Coursera course [Getting and Cleaning Data](https://www.coursera.org/learn/data-cleaning).

## The files

**run_analysis.R** - contains the data transformations. After running the code 
in this file, you get tidy_data variable, which contains the final data set.

**UCI HAR Dataset** - source data for run_analysis.R.

**CodeBook.md** - explains some details of tidy_data and tidy_data_mean.

## Source data

The initial *UCI HAR Dataset* is split into testing and training data, and the 
data files themselves have headers, activity name, and subject number stored separately.
For more information, consult /UCI HAR Dataset/README.txt or the 
[UCI web page](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## The code

All code for the data transformation is situated in run_analysis.R file.
While the code follows the coursera instructions, the steps are performed in different order,
as it seemed more natural to me.

The individual steps in the code are separated with comments. The description of ech step
is written out in chronological order:

- 0\. All data and headers are loaded from the source.
- 4\. The loaded data and headers are put together. I did this step first, as i believed it will make following data manipulations easier.
- 3\. The activity names and subject numbers are added to train and test data sets.
- 1\. The train and test data sets, now equipped with headers, activity names, and subjects, are now combined into one big data set.
- 2\. The unneeded columns are filtered out. We need 4 types of columns. Activity, subject, standard deviation (std) and mean. Activity and subject are trivial. However the columns containing std and mean are trickier. Not every column which contains these words is the correct one. For example the column "fBodyAcc-meanFreq()-X" does contain the string "mean", but does not contain the desired data. Mean and std columns end with "mean()" and "std()" respectively.
- 5\. The data set from step 2 is grouped by activity and a subject, and the mean for each other column is calculated.

After running the code, the resulting data set is available in the variable "tidy_data".

Thank you for reading me. ^^
