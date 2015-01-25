run_analysis <- function(){
   
   # Read in the subject_train file - it is 7352 rows by 1 column and identifies the subject number from 1-30
   subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt",col.names = "Subject")
      
   # Read in the X_train file - it is 7352 rows by 561 columns and contains the test data
   X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
      
   # Read in the y_train file - it is 7352 rows by 1 columns and identifies the activity type from 1-6
   y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",col.names = "Activity")
      
   # Merge the train subject number, activity type and test data together
   trainMerged <- cbind(subject_train,y_train,X_train)
      
   # Read in the subject_test file - it is 2947 rows by 1 column and identifies the subject number from 1-30
   subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="Subject")
      
   # Read in the X_test file - it is 2947 rows by 561 columns and contains the test data
   X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
      
   # Read in the y_test file - it is 2947 rows by 1 columns and identifies the activity type from 1-6
   y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",col.names="Activity")
      
   # Merge the test subject number, activity type and test data together
   testMerged <- cbind(subject_test,y_test,X_test)
      
   # Merge train and test together - this satisfies requirement 1 of the assignment
   bothMerged <- rbind(trainMerged,testMerged)
      
   # Extract only the measurements on the mean and standard deviation for each measurement - requirement 2
   # Note that indexes are all +2 because I put Subject and Activity in columns 1 and 2
   # Also, I consciously excluded the last 7 variables as I didn't believe they fit the criteria
   # Finally, I thought about reading the features file into a data frame and then substring searching the descriptions
   # for std or mean but decided against this as I didn't think some of the results would fit the criteria
   library(dplyr)
   selectbothMerged <- select(bothMerged,Subject,Activity,3:8,43:48,83:88,123:128,163:168,203:204,216:217,229:230,242:243,255:256,268:273,296:298,347:352,375:377,426:431,454:456,505:506,515,518:519,528,531:532,541,544:545,554)
   
   # Replace the activity numbers with names - requirement 3
   # I tried to come up with a more elaborate way to do this but was unsuccessful
   # Interested to see what others came up with
   selectbothMerged$Activity[selectbothMerged$Activity == 1] <- "Walking"
   selectbothMerged$Activity[selectbothMerged$Activity == 2] <- "Walking Upstairs"
   selectbothMerged$Activity[selectbothMerged$Activity == 3] <- "Walking Downstairs"
   selectbothMerged$Activity[selectbothMerged$Activity == 4] <- "Sitting"
   selectbothMerged$Activity[selectbothMerged$Activity == 5] <- "Standing"
   selectbothMerged$Activity[selectbothMerged$Activity == 6] <- "Laying"
         
   # Label the data set with descriptive variable names - requirement 4
   # I created my own version of the features file called descriptive variable names
   # with just the variables selected for requirement 2, above
   # In hindsight, I wish I had started with something a little more creative in 2
   # as I could have carried that forward to 4
   descvarnames <- as.character(read.table("./UCI HAR Dataset/descriptive variable names.txt")$V1)
   descvarnames <- make.unique(descvarnames)
   library(data.table)
   setnames(selectbothMerged,3:81,descvarnames)
      
   # Create a second, independent tidy data set with the average of each variable for each activity and each subject - requirement 5
   groupeddataset <- group_by(selectbothMerged,Subject,Activity)
   compiledresult <- summarise_each(groupeddataset,funs(mean))
   write.table(compiledresult,file="tidy.txt",row.name=FALSE)
      
}