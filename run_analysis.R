#Create working directory, download raw data, unzip and set working diretory
getwd()
setwd("~/Coursera_tom/Data_Cleaning/Week_4")
if(!file.exists("./Cleaning-Data-Assignment")){dir.create("./Cleaning-Data-Assignment")}
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./Cleaning-Data-Assignment/raw.zip")
unzip("./Cleaning-Data-Assignment/raw.zip", exdir = "./Cleaning-Data-Assignment")
setwd("~/Coursera_tom/Data_Cleaning/Week_4/Cleaning-Data-Assignment")

#Step 1
#Load all the files from the UCI HAR Dataset folder sitting in your working directory
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = "", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = "", header = FALSE)

#Step 1
#look at each datafile
View(subject_test)
View(x_test)
View(y_test)
View(subject_train)
View(x_train)
View(y_train)

#Step 1
#check dimensions of each datafile
dim(subject_test)
dim(x_test)
dim(y_test)
dim(subject_train)
dim(x_train)
dim(y_train)

#Step 1
#Combined test and train datasets together
subject_comb <- rbind(subject_test, subject_train)
x_comb <- rbind(x_test, x_train)
y_comb <- rbind(y_test, y_train)

comb <- cbind(subject_comb, y_comb, x_comb)
View(comb)

#Step 2
#Extract only measurements on the mean and sd
feat <- read.table("./UCI HAR Dataset/features.txt", sep = "", header = FALSE)
featslct <- grep(pattern = "mean\\(|std\\(", x = feat$V2)
featslct <- featslct + 2
featslct <- c(1, 2, featslct)

comb_red <- comb[,featslct]
View(comb_red)

#Step 3
#Use descriptive activity names to name activities in dataset
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)
View(act_labels)
comb_red$V1.1 <- factor(comb_red$V1.1, labels = c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING'))
View(comb_red)

#Step 4
#Appropriately label dataset with descriptive variable names 
featslctname <- grep(pattern = "mean\\(|std\\(", x = feat$V2, value = TRUE)
featslctname <- gsub("-", "", featslctname)
featslctname <- gsub("\\()", "", featslctname)
colnames(comb_red) <- c("subject", "activity", featslctname)
View(comb_red)

#Step 5
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
library(reshape2)
final <- comb_red %>% melt(id.vars=c("subject", "activity")) %>%
  group_by(subject, activity, variable) %>%
  summarise(mean(value)) %>%
  print

View(final)
write.table(final, file = "tidy.txt", row.names = FALSE)



