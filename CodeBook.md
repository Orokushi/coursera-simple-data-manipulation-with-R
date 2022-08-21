# Code book for tidy datasets

## tidy_data

tidy_data data set combines training and testing data sets,
adds variable names to each columns and  adds an activity column. 

Columns containing values other than activity, mean and standard deviation
are filtered out.

Columns ending with "mean()" contain mean. Columns ending with "std()" contain
standard deviation.

Package dplyr is required for some transformations.

## tidy_data_mean

Gets mean for every column grouped by the activity and subject columns.
This operation does not alter the column names.


