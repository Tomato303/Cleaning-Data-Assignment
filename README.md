# Cleaning-Data-Assignment

Windows 7, 64bit, R3.3.0

Getting and Cleaning Data Course Assignment

Step 1 -  Merges the training and the test sets to create one data set.
My approach to this assignment was to first read the readme doc provided on the dataset, download the datafiles and study their structure (using View() and dim()).  Based on this the key information I then decided to combine the subject number, activity code and feature measurements from both the training and test datasets (6 files in total). To do this I used a combination of rbind() and cbind().  I decided to position subject number in the first column, activity in the second and append the measurements from columns three onwards, this was based on the principles of tidy data having fixed variables to the left and measurements on the right.

Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
I decided I was only interested in variable which ended in mean() or std() for this part of the assignment, all other features which might contain ‘mean’ within the name were ignored.  To identify these variable I loaded the features.txt into R as a dataframe and subsetted the second column containing feature names as a vector. I then ran the grep() function to return a vector of integers identifying the variables of interest. Before using this vector to subset my combined datafile from step 1,  I added 2 to each value and concatenated 1 and 2 to the beginning to account for subject and activity code which I want to retain in the final file. My combined file from step 1 was then subsetted using this vector to reduce to only measurements of mean and std.

Step 3 - Uses descriptive activity names to name the activities in the data set
First I loaded the activity labels file into R and had a look at them.  Then I decided to convert the activity code variable (column 2) in my combined file into a factor assigning the activity labels as labels.

Step 4 - Appropriately labels the data set with descriptive variable names.
I used the grep() function to extract the feature variable labels from the features.txt file we loaded earlier, except this time I used value = TRUE to give me the string values rather than an integer of positons.  I then concatenated this with ‘subject’ and ‘activity’ to take account of the first two variables in my combined dataset and then used colnames() to append this vector to the dataset.

Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
For this part of the assignment I decided to use reshape2 and melt() to reorganise my data from ‘wide’ to ‘narrow’ based on the fact all the feature variables are normalized and bounded within [-1,1] and essentially the same observation type.  Doing this stacked my data into four columns (subject, activity, feature and value).  I then used group_by() and summarise() to fold the data into the final output which shows the average of each variable (mean(value)) for each activity and each subject.  I consider this to be tidy data based on the guidelines set out in the Hadley Wickham paper on tidy data.

I then did some tests to make sure the answers matched when I subsetted the original data and calculate the averages based on these subsets.

Thanks,
Tom.
