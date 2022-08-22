# Code book for the tidy dataset

## tidy_data

The tidy_data data set contains summation of the original UCI data set.

Original data have been grouped by the activity and subject. And the average has been calculated over every column containing mean or standard deviation values.

The resulting data set contains the following columns:

- activity                    
- subject                     
- tBodyAccMag-mean()         
- tBodyAccMag-std()           
- tGravityAccMag-mean()       
- tGravityAccMag-std()       
- tBodyAccJerkMag-mean()      
- tBodyAccJerkMag-std()       
- tBodyGyroMag-mean()        
- tBodyGyroMag-std()          
- tBodyGyroJerkMag-mean()     
- tBodyGyroJerkMag-std()     
- fBodyAccMag-mean()          
- fBodyAccMag-std()           
- fBodyBodyAccJerkMag-mean() 
- fBodyBodyAccJerkMag-std()   
- fBodyBodyGyroMag-mean()     
- fBodyBodyGyroMag-std()     
- fBodyBodyGyroJerkMag-mean() 
- fBodyBodyGyroJerkMag-std()

Be advised, that **all of the columns except activity and subject have been averaged**, the mean and std in the names indicate what values have been averaged.

The acceleration signal from the smartphone accelerometer (Acc) X axis is measured in standard gravity units 'g'.

The angular velocity vector measured by the gyroscope (Gyro) has units measured in radians/second.
