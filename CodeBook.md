# Code Book

Running the run_analysis.R script will initialise two variables as follows:

## **data** variable
This data frame contains all mean and standard deviation data points.

The following is based on the original data source (modified to match the new naming):

*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'TimeDomain' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeDomain-BodyAccelerometer-[XYZ]Axis and TimeDomain-GravityAccelerometer-[XYZ]Axis) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.*

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeDomain-BodyAccelerometerJerk-[XYZ]Axis and TimeDomain-BodyGyroscopeJerk-[XYZ]Axis). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeDomain-BodyAccelerometerMagnitude, TimeDomain-GravityAccelerometerMagnitude, TimeDomain-BodyAccelerometerJerkMagnitude, TimeDomain-BodyGyroscopeMagnitude, TimeDomain-BodyGyroscopeJerkMagnitude).*

*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyDomain-BodyAccelerometer-[XYZ]Axis, FrequencyDomain-BodyAccJerk-XYZ, FrequencyDomain-BodyGyroscope-[XYZ]Axis, FrequencyDomain-BodyAccJerkMagnitude, FrequencyDomain-BodyGyroscopeMagnitude, FrequencyDomain-BodyGyroscopeJerkMagnitude. (Note the 'FrequencyDomain' to indicate frequency domain signals).*

*These signals were used to estimate variables of the feature vector for each pattern:  
'-[XYZ]Axis' is used to denote 3-axial signals in the X, Y and Z directions.*

**Subject** : An identifier of the subject who carried out the experiment 

**Activity** : Activity label as a factor: {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}

###Variables:
* [1] **TimeDomain-BodyAccelerometer-Mean-XAxis**                             
* [2] **TimeDomain-BodyAccelerometer-Mean-YAxis**                             
* [3] **TimeDomain-BodyAccelerometer-Mean-ZAxis**                             
* [4] **TimeDomain-BodyAccelerometer-StandardDeviation-XAxis**                
* [5] **TimeDomain-BodyAccelerometer-StandardDeviation-YAxis**                
* [6] **TimeDomain-BodyAccelerometer-StandardDeviation-ZAxis**                
* [7] **TimeDomain-GravityAccelerometer-Mean-XAxis**                          
* [8] **TimeDomain-GravityAccelerometer-Mean-YAxis**                          
* [9] **TimeDomain-GravityAccelerometer-Mean-ZAxis**                          
* [10] **TimeDomain-GravityAccelerometer-StandardDeviation-XAxis**             
* [11] **TimeDomain-GravityAccelerometer-StandardDeviation-YAxis**             
* [12] **TimeDomain-GravityAccelerometer-StandardDeviation-ZAxis**             
* [13] **TimeDomain-BodyAccelerometerJerk-Mean-XAxis**                         
* [14] **TimeDomain-BodyAccelerometerJerk-Mean-YAxis**                         
* [15] **TimeDomain-BodyAccelerometerJerk-Mean-ZAxis**                         
* [16] **TimeDomain-BodyAccelerometerJerk-StandardDeviation-XAxis**            
* [17] **TimeDomain-BodyAccelerometerJerk-StandardDeviation-YAxis**            
* [18] **TimeDomain-BodyAccelerometerJerk-StandardDeviation-ZAxis**            
* [19] **TimeDomain-BodyGyroscope-Mean-XAxis**                                 
* [20] **TimeDomain-BodyGyroscope-Mean-YAxis**                                 
* [21] **TimeDomain-BodyGyroscope-Mean-ZAxis**                                 
* [22] **TimeDomain-BodyGyroscope-StandardDeviation-XAxis**                    
* [23] **TimeDomain-BodyGyroscope-StandardDeviation-YAxis**                    
* [24] **TimeDomain-BodyGyroscope-StandardDeviation-ZAxis**                    
* [25] **TimeDomain-BodyGyroscopeJerk-Mean-XAxis**                             
* [26] **TimeDomain-BodyGyroscopeJerk-Mean-YAxis**                             
* [27] **TimeDomain-BodyGyroscopeJerk-Mean-ZAxis**                             
* [28] **TimeDomain-BodyGyroscopeJerk-StandardDeviation-XAxis**                
* [29] **TimeDomain-BodyGyroscopeJerk-StandardDeviation-YAxis**                
* [30] **TimeDomain-BodyGyroscopeJerk-StandardDeviation-ZAxis**                
* [31] **TimeDomain-BodyAccelerometerMagnitude-Mean**                          
* [32] **TimeDomain-BodyAccelerometerMagnitude-StandardDeviation**             
* [33] **TimeDomain-GravityAccelerometerMagnitude-Mean**                       
* [34] **TimeDomain-GravityAccelerometerMagnitude-StandardDeviation**          
* [35] **TimeDomain-BodyAccelerometerJerkMagnitude-Mean**                      
* [36] **TimeDomain-BodyAccelerometerJerkMagnitude-StandardDeviation**         
* [37] **TimeDomain-BodyGyroscopeMagnitude-Mean**                              
* [38] **TimeDomain-BodyGyroscopeMagnitude-StandardDeviation**                 
* [39] **TimeDomain-BodyGyroscopeJerkMagnitude-Mean**                          
* [40] **TimeDomain-BodyGyroscopeJerkMagnitude-StandardDeviation**             
* [41] **FrequencyDomain-BodyAccelerometer-Mean-XAxis**                        
* [42] **FrequencyDomain-BodyAccelerometer-Mean-YAxis**                        
* [43] **FrequencyDomain-BodyAccelerometer-Mean-ZAxis**                        
* [44] **FrequencyDomain-BodyAccelerometer-StandardDeviation-XAxis**           
* [45] **FrequencyDomain-BodyAccelerometer-StandardDeviation-YAxis**           
* [46] **FrequencyDomain-BodyAccelerometer-StandardDeviation-ZAxis**           
* [47] **FrequencyDomain-BodyAccelerometerJerk-Mean-XAxis**                    
* [48] **FrequencyDomain-BodyAccelerometerJerk-Mean-YAxis**                    
* [49] **FrequencyDomain-BodyAccelerometerJerk-Mean-ZAxis**                    
* [50] **FrequencyDomain-BodyAccelerometerJerk-StandardDeviation-XAxis**       
* [51] **FrequencyDomain-BodyAccelerometerJerk-StandardDeviation-YAxis**       
* [52] **FrequencyDomain-BodyAccelerometerJerk-StandardDeviation-ZAxis**       
* [53] **FrequencyDomain-BodyGyroscope-Mean-XAxis**                            
* [54] **FrequencyDomain-BodyGyroscope-Mean-YAxis**                            
* [55] **FrequencyDomain-BodyGyroscope-Mean-ZAxis**                            
* [56] **FrequencyDomain-BodyGyroscope-StandardDeviation-XAxis**               
* [57] **FrequencyDomain-BodyGyroscope-StandardDeviation-YAxis**               
* [58] **FrequencyDomain-BodyGyroscope-StandardDeviation-ZAxis**               
* [59] **FrequencyDomain-BodyAccelerometerMagnitude-Mean**                     
* [60] **FrequencyDomain-BodyAccelerometerMagnitude-StandardDeviation**        
* [61] **FrequencyDomain-BodyBodyAccelerometerJerkMagnitude-Mean**             
* [62] **FrequencyDomain-BodyBodyAccelerometerJerkMagnitude-StandardDeviation**
* [63] **FrequencyDomain-BodyBodyGyroscopeMagnitude-Mean**                     
* [64] **FrequencyDomain-BodyBodyGyroscopeMagnitude-StandardDeviation**        
* [65] **FrequencyDomain-BodyBodyGyroscopeJerkMagnitude-Mean**                 
* [66] **FrequencyDomain-BodyBodyGyroscopeJerkMagnitude-StandardDeviation**    
* [67] **Subject**                                                             
* [68] **Activity**                                                            


TODO state the transformation. 
