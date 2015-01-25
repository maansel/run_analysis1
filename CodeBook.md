##Background

###Requirements of R script:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Files reviewed (all from the download associated with the assignment):
* README (reviewed with text editor)
* activity_labels (reviewed with text editor)
* features (reviewed with text editor)
* features_info (reviewed with text editor)
* subject_train (read into R and explored with dim, head, tail, str, etc.)
* X_train (read into R and explored with dim, head, tail, str, etc.)
* y_train (read into R and explored with dim, head, tail, str, etc.)
* subject_test (read into R and explored with dim, head, tail, str, etc.)
* X_test (read into R and explored with dim, head, tail, str, etc.)
* y_test (read into R and explored with dim, head, tail, str, etc.)


##Data transformations

For requirement 1:
1. Read in the subject_train file – 7532 observations of 1 variable, identifies the subject number from 1-30
2. Read in the X_train file – 7532 observations of 561 variables, contains the test data
3. Read in the y_train file – 7532 observations of 1 variable, identifies the activity type from 1-6
4. Column merged the train subject number, activity type and test data together, result is 7532 observations of 563 variables
5. Performed steps 1-4 for the test files – only difference is that there were 2947 observations
6. Row merged the train and test column merged data sets together – result was 10299 observations of 563 variables

For requirement 2:
1. Selected just the required columns – result was 10299 observations of 79 variables plus Subject and Activity

For requirement 3:
1. Replaced the values (1-6) in the Activity column with the respective name (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying)

For requirement 4:
1. Replaced all of the variable names with descriptive names – I used the same names as the features file.  The Subject and Activity variables were named when I read in their respective files for requirement 1
For requirement 5:
1. Grouped data by Subject and Activity
2. Summarized the mean of each of the variables
3. Wrote the results to tidy.txt


##Data dictionary
1. Subject – single integer value representing the test subject (person), from 1-30
2. Activity – single integer value representing the activity, from 1-6, changed to descriptive name in requirement 3 of the assignment
3. mean(tBodyAccmeanX) – This is the average of the tBodyAcc-mean()-X field from the original data set.
4. mean(tBodyAccmeanY) – This is the average of the tBodyAcc-mean()-Y field from the original data set.
5. mean(tBodyAccmeanZ) ) – This is the average of the tBodyAcc-mean()-Z field from the original data set.
6. mean(tBodyAccstdX) – This is the average of the tBodyAcc-std()-X field from the original data set.
7. mean(tBodyAccstdY) – This is the average of the tBodyAcc-std()-Y field from the original data set.
8. mean(tBodyAccstdZ) – This is the average of the tBodyAcc-std()-Z field from the original data set.
9. mean(tGravityAccmeanX) – This is the average of the  tGravityAcc-mean()-X field from the original data set.
10. mean(tGravityAccmeanY) – This is the average of the tGravityAcc-mean()-Y field from the original data set.
11. mean(tGravityAccmeanZ) – This is the average of the tGravityAcc-mean()-Z field from the original data set.
12. mean(tGravityAccstdX) – This is the average of the fitGravityAcc-std()-X field from the original data set.
13. mean(tGravityAccstdY) – This is the average of the tGravityAcc-std()-Y field from the original data set.
14. mean(tGravityAccstdZ) – This is the average of the  tGravityAcc-std()-Z field from the original data set.
15. mean(tBodyAccJerkmeanX) – This is the average of the tBodyAccJerk-mean()-X field from the original data set.
16. mean(tBodyAccJerkmeanY) – This is the average of the tBodyAccJerk-mean()-Y field from the original data set.
17. mean(tBodyAccJerkmeanZ) – This is the average of the tBodyAccJerk-mean()-Z field from the original data set.
18. mean(tBodyAccJerkstdX) – This is the average of the tBodyAccJerk-std()-X field from the original data set.
19. mean(tBodyAccJerkstdY) – This is the average of the tBodyAccJerk-std()-Y field from the original data set.
20. mean(tBodyAccJerkstdZ) – This is the average of the tBodyAccJerk-std()-Z field from the original data set.
21. mean(tBodyGyromeanX) – This is the average of the tBodyGyro-mean()-X field from the original data set.
22. mean(tBodyGyromeanY) – This is the average of the tBodyGyro-mean()-Y field from the original data set.
23. mean(tBodyGyromeanZ) – This is the average of the tBodyGyro-mean()-Z field from the original data set.
24. mean(tBodyGyrostdX) – This is the average of the tBodyGyro-std()-X field from the original data set.
25. mean(tBodyGyrostdY) – This is the average of the tBodyGyro-std()-Y field from the original data set.
26. mean(tBodyGyrostdZ) – This is the average of the tBodyGyro-std()-Z field from the original data set.
27. mean(tBodyGyroJerkmeanX) – This is the average of the tBodyGyroJerk-mean()-X field from the original data set.
28. mean(tBodyGyroJerkmeanY) – This is the average of the tBodyGyroJerk-mean()-Y field from the original data set.
29. mean(tBodyGyroJerkmeanZ) – This is the average of the tBodyGyroJerk-mean()-Z field from the original data set.
30. mean(tBodyGyroJerkstdX) – This is the average of the tBodyGyroJerk-std()-X field from the original data set.
31. mean(tBodyGyroJerkstdY) – This is the average of the tBodyGyroJerk-std()-Y field from the original data set.
32. mean(tBodyGyroJerkstdZ) – This is the average of the tBodyGyroJerk-std()-Z field from the original data set.
33. mean(tBodyAccMagmean) – This is the average of the tBodyAccMag-mean() field from the original data set.
34. mean(tBodyAccMagstd) – This is the average of the tBodyAccMag-std() field from the original data set.
35. mean(tGravityAccMagmean) – This is the average of the tGravityAccMag-mean() field from the original data set.
36. mean(tGravityAccMagstd) – This is the average of the tGravityAccMag-std() field from the original data set.
37. mean(tBodyAccJerkMagmean) – This is the average of the tBodyAccJerkMag-mean() field from the original data set.
38. mean(tBodyAccJerkMagstd) – This is the average of the tBodyAccJerkMag-std() field from the original data set.
39. mean(tBodyGyroMagmean) – This is the average of the tBodyGyroMag-mean() field from the original data set.
40. mean(tBodyGyroMagstd) – This is the average of the tBodyGyroMag-std() field from the original data set.
41. mean(tBodyGyroJerkMagmean) – This is the average of the tBodyGyroJerkMag-mean() field from the original data set.
42. mean(tBodyGyroJerkMagstd) – This is the average of the tBodyGyroJerkMag-std() field from the original data set.
43. mean(fBodyAccmeanX) – This is the average of the fBodyAcc-mean()-X field from the original data set.
44. mean(fBodyAccmeanY) – This is the average of the fBodyAcc-mean()-Y field from the original data set.
45. mean(fBodyAccmeanZ) – This is the average of the fBodyAcc-mean()-Z field from the original data set.
46. mean(fBodyAccstdX) – This is the average of the fBodyAcc-std()-X field from the original data set.
47. mean(fBodyAccstdY) – This is the average of the fBodyAcc-std()-Y field from the original data set.
48. mean(fBodyAccstdZ) – This is the average of the fBodyAcc-std()-Z field from the original data set.
49. mean(fBodyAccmeanFreqX) – This is the average of the fBodyAcc-meanFreq()-X field from the original data set.
50. mean(fBodyAccmeanFreqY) – This is the average of the fBodyAcc-meanFreq()-Y field from the original data set.
51. mean(fBodyAccmeanFreqZ) – This is the average of the fBodyAcc-meanFreq()-Z field from the original data set.
52. mean(fBodyAccJerkmeanX) – This is the average of the fBodyAccJerk-mean()-X field from the original data set.
53. mean(fBodyAccJerkmeanY) – This is the average of the fBodyAccJerk-mean()-Y field from the original data set.
54. mean(fBodyAccJerkmeanZ) – This is the average of the fBodyAccJerk-mean()-Z field from the original data set.
55. mean(fBodyAccJerkstdX) – This is the average of the fBodyAccJerk-std()-X field from the original data set.
56. mean(fBodyAccJerkstdY) – This is the average of the fBodyAccJerk-std()-Y field from the original data set.
57. mean(fBodyAccJerkstdZ) – This is the average of the fBodyAccJerk-std()-Z field from the original data set.
58. mean(fBodyAccJerkmeanFreqX) – This is the average of the fBodyAccJerk-meanFreq()-X field from the original data set.
59. mean(fBodyAccJerkmeanFreqY) – This is the average of the fBodyAccJerk-meanFreq()-Y field from the original data set.
60. mean(fBodyAccJerkmeanFreqZ) – This is the average of the fBodyAccJerk-meanFreq()-Z field from the original data set.
61. mean(fBodyGyromeanX) – This is the average of the fBodyGyro-mean()-X field from the original data set.
62. mean(fBodyGyromeanY) – This is the average of the fBodyGyro-mean()-Y field from the original data set.
63. mean(fBodyGyromeanZ) – This is the average of the fBodyGyro-mean()-Z field from the original data set.
64. mean(fBodyGyrostdX) – This is the average of the fBodyGyro-std()-X field from the original data set.
65. mean(fBodyGyrostdY) – This is the average of the fBodyGyro-std()-Y field from the original data set.
66. mean(fBodyGyrostdZ) – This is the average of the fBodyGyro-std()-Z field from the original data set.
67. mean(fBodyGyromeanFreqX) – This is the average of the fBodyGyro-meanFreq()-X field from the original data set.
68. mean(fBodyGyromeanFreqY) – This is the average of the fBodyGyro-meanFreq()-Y field from the original data set.
69. mean(fBodyGyromeanFreqZ) – This is the average of the fBodyGyro-meanFreq()-Z field from the original data set.
70. mean(fBodyAccMagmean) – This is the average of the fBodyAccMag-mean() field from the original data set.
71. mean(fBodyAccMagstd) – This is the average of the fBodyAccMag-std() field from the original data set.
72. mean(fBodyAccMagmeanFreq) – This is the average of the fBodyAccMag-meanFreq() field from the original data set.
73. mean(fBodyBodyAccJerkMagmean) – This is the average of the fBodyBodyAccJerkMag-mean() field from the original data set.
74. mean(fBodyBodyAccJerkMagstd) – This is the average of the fBodyBodyAccJerkMag-std() field from the original data set.
75. mean(fBodyBodyAccJerkMagmeanFreq) – This is the average of the fBodyBodyAccJerkMag-meanFreq() field from the original data set.
76. mean(fBodyBodyGyroMagmean) – This is the average of the fBodyBodyGyroMag-mean() field from the original data set.
77. mean(fBodyBodyGyroMagmeanFreq) – This is the average of the fBodyBodyGyroMag-meanFreq() field from the original data set.
78. mean(fBodyBodyGyroJerkMagmean) – This is the average of the fBodyBodyGyroJerkMag-mean() field from the original data set.
79. mean(fBodyBodyAccJerkMagstd) – This is the average of the fBodyBodyAccJerkMag-std() field from the original data set.
80. mean(fBodyBodyGyroJerkMagstd) – This is the average of the fBodyBodyGyroJerkMag-std() field from the original data set.
81. mean(fBodyBodyGyroJerkMagmeanFreq) – This is the average of the fBodyBodyGyroJerkMag-meanFreq()? field from the original data set.
