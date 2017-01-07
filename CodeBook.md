		DATA DICTIONARY - 06/01/2017 COURSERA ASSIGNMENT - GETTING AND CLEANING DATA COURSE PROJECT
		
This dataset has been produced from the Human Activity Recognition Using Smartphones Dataset Version 1.0 available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
It was produced using the run_analysis.R script which si explained in detail in the README.txt

subject (Integer)
	ID for subject who took part in activity
		1...30 .Unique identifier assigned within 

activity (Factor)
	ID for activity that subject was performing
		1 .WALKING
		2 .WALKING_UPSTAIRS
		3 .WALKING_DOWNSTAIRS
		4 .SITTING
		5 .STANDING
		6 .LAYING
	
variable (Factor)
	ID for feature measurement type
		1 .tBodyAccmeanX
		2 .tBodyAccmeanY
		3 .tBodyAccmeanZ
		4 .tBodyAccstdX
		5 .tBodyAccstdY
		6 .tBodyAccstdZ
		7 .tGravityAccmeanX
		8 .tGravityAccmeanY
		9 .tGravityAccmeanZ
		10 .tGravityAccstdX
		11 .tGravityAccstdY
		12 .tGravityAccstdZ
		13 .tBodyAccJerkmeanX
		14 .tBodyAccJerkmeanY
		15 .tBodyAccJerkmeanZ
		16 .tBodyAccJerkstdX
		17 .tBodyAccJerkstdY
		18 .tBodyAccJerkstdZ
		19 .tBodyGyromeanX
		20 .tBodyGyromeanY
		21 .tBodyGyromeanZ
		22 .tBodyGyrostdX
		23 .tBodyGyrostdY 
		24 .tBodyGyrostdZ
		25 .tBodyGyroJerkmeanX
		26 .tBodyGyroJerkmeanY
		27 .tBodyGyroJerkmeanZ
		28 .tBodyGyroJerkstdX
		29 .tBodyGyroJerkstdY
		30 .tBodyGyroJerkstdZ
		31 .tBodyAccMagmean
		32 .tBodyAccMagstd
		33 .tGravityAccMagmean
		34 .tGravityAccMagstd
		35 .tBodyAccJerkMagmean
		36 .tBodyAccJerkMagstd
		37 .tBodyGyroMagmean
		38 .tBodyGyroMagstd
		39 .tBodyGyroJerkMagmean
		40 .tBodyGyroJerkMagstd
		41 .fBodyAccmeanX
		42 .fBodyAccmeanY
		43 .fBodyAccmeanZ
		44 .fBodyAccstdX
		45 .fBodyAccstdY
		46 .fBodyAccstdZ
		47 .fBodyAccJerkmeanX
		48 .fBodyAccJerkmeanY
		49 .fBodyAccJerkmeanZ
		50 .fBodyAccJerkstdX
		51 .fBodyAccJerkstdY
		52 .fBodyAccJerkstdZ
		53 .fBodyGyromeanX
		54 .fBodyGyromeanY
		55 .fBodyGyromeanZ
		56 .fBodyGyrostdX
		57 .fBodyGyrostdY
		58 .fBodyGyrostdZ     
		59 .fBodyAccMagmean
		60 .fBodyAccMagstd
		61 .fBodyBodyAccJerkMagmean
		62 .fBodyBodyAccJerkMagstd
		63 .fBodyBodyGyroMagmean
		64 .fBodyBodyGyroMagstd
		65 .fBodyBodyGyroJerkMagmean
		66 .fBodyBodyGyroJerkMagstd

mean(value)	(Numeric)	
	Mean value of feature measurement grouped by subject, activity and variable
		Mean(Value) scores are normalized and bounded within [-1,1].
