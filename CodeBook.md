CodeBook - UCI HAR Dataset Analysis
=================================

Data 
-----------------
The data come from of experiments which have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


Attribute Information
-----------------
For each record in the dataset it is provided: 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


Transformations perfomed to clean up the data 
---------------------------------------------------

1) Merge  train and test data    
2) Load data files for train and test for x direction and bind them into a data set
3) Load subjects files for train and test and bind them into a data set
4) Merge subjects into mdata set 
5) Load activities
6) Load data files for train and test for y direction and bind them into a data set 
7) Merge subjects and activies into main data set 
8) Create txt file with tidy data from main data set



UCI HAR variables calculated
----------------------------------
 
  