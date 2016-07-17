# UCI Machine Learning Smartphone Data Cleaning

This is the codebook for the assignment, outlining the names and details of the data fields supplied in the tidy data files
* tidydata.txt*  and * summarydata.txt* .

##Tidy Data File
Data in this file is based on the UCI machine learning data set, available from [this link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The variables in this dataset are all derived from measurements in the UCI data, cleaned and arranged in accordance with tidy data principles.

The first three columns reflect the (UCI) internal ID for an activity, the name of that activity, from a set of six possibilities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), and the ID of the subject who performed that activity.

The remaining columns are a subset of UCI's original elements, reflecting the mean and standard deviation measures of various UCI data points. A full reference to the original UCI data is available in the [UCI data zip file](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and the original UCI descriptions have been expanded to improve readability:

* **t** has been expanded to *Time*
* **f** has been expanded to *Frequency*
* **Acc** has been expanded to *Acceleration*
* **Gyro** has been expanded to *Gyroscope*
* **Mag** has been expanded to *Magnitude*
* **std** has been expanded to *StandardDeviation*

In addition, variable names have been camelcased in order to improve readibility.

The values contained in the dataset (in order) are:

* ActivityId                                                 
* ActivityName                                               
* Subject                                                    
* TimeBodyAccelerationMeanX                                  
* TimeBodyAccelerationMeanY                                  
* TimeBodyAccelerationMeanZ                                  
* TimeBodyAccelerationStandardDeviationX                     
* TimeBodyAccelerationStandardDeviationY                     
* TimeBodyAccelerationStandardDeviationZ                     
* TimeGravityAccelerationMeanX                               
* TimeGravityAccelerationMeanY                               
* TimeGravityAccelerationMeanZ                               
* TimeGravityAccelerationStandardDeviationX                  
* TimeGravityAccelerationStandardDeviationY                  
* TimeGravityAccelerationStandardDeviationZ                  
* TimeBodyAccelerationJerkMeanX                              
* TimeBodyAccelerationJerkMeanY                              
* TimeBodyAccelerationJerkMeanZ                              
* TimeBodyAccelerationJerkStandardDeviationX                 
* TimeBodyAccelerationJerkStandardDeviationY                 
* TimeBodyAccelerationJerkStandardDeviationZ                 
* TimeBodyGyroscopeMeanX                                     
* TimeBodyGyroscopeMeanY                                     
* TimeBodyGyroscopeMeanZ                                     
* TimeBodyGyroscopeStandardDeviationX                        
* TimeBodyGyroscopeStandardDeviationY                        
* TimeBodyGyroscopeStandardDeviationZ                        
* TimeBodyGyroscopeJerkMeanX                                 
* TimeBodyGyroscopeJerkMeanY                                 
* TimeBodyGyroscopeJerkMeanZ                                 
* TimeBodyGyroscopeJerkStandardDeviationX                    
* TimeBodyGyroscopeJerkStandardDeviationY                    
* TimeBodyGyroscopeJerkStandardDeviationZ                    
* TimeBodyAccelerationMagnitudeMean                          
* TimeBodyAccelerationMagnitudeStandardDeviation             
* TimeGravityAccelerationMagnitudeMean                       
* TimeGravityAccelerationMagnitudeStandardDeviation          
* TimeBodyAccelerationJerkMagnitudeMean                      
* TimeBodyAccelerationJerkMagnitudeStandardDeviation         
* TimeBodyGyroscopeMagnitudeMean                             
* TimeBodyGyroscopeMagnitudeStandardDeviation                
* TimeBodyGyroscopeJerkMagnitudeMean                         
* TimeBodyGyroscopeJerkMagnitudeStandardDeviation            
* FrequencyBodyAccelerationMeanX                             
* FrequencyBodyAccelerationMeanY                             
* FrequencyBodyAccelerationMeanZ                             
* FrequencyBodyAccelerationStandardDeviationX                
* FrequencyBodyAccelerationStandardDeviationY                
* FrequencyBodyAccelerationStandardDeviationZ                
* FrequencyBodyAccelerationJerkMeanX                         
* FrequencyBodyAccelerationJerkMeanY                         
* FrequencyBodyAccelerationJerkMeanZ                         
* FrequencyBodyAccelerationJerkStandardDeviationX            
* FrequencyBodyAccelerationJerkStandardDeviationY            
* FrequencyBodyAccelerationJerkStandardDeviationZ            
* FrequencyBodyGyroscopeMeanX                                
* FrequencyBodyGyroscopeMeanY                                
* FrequencyBodyGyroscopeMeanZ                                
* FrequencyBodyGyroscopeStandardDeviationX                   
* FrequencyBodyGyroscopeStandardDeviationY                   
* FrequencyBodyGyroscopeStandardDeviationZ                   
* FrequencyBodyAccelerationMagnitudeMean                     
* FrequencyBodyAccelerationMagnitudeStandardDeviation        
* FrequencyBodyBodyAccelerationJerkMagnitudeMean             
* FrequencyBodyBodyAccelerationJerkMagnitudeStandardDeviation
* FrequencyBodyBodyGyroscopeMagnitudeMean                    
* FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation       
* FrequencyBodyBodyGyroscopeJerkMagnitudeMean                
* FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation

##Summary Data File

This file summarises the *Tidy Data File* (see above) by prividing the mean value of each variable, grouped by activity and subject. The column names are the same as in the case of the *Tidy Data File*