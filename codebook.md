## CODEBOOK
__Loading packages__
This section opens the dplyr package from tidyverse

__Add data to tables__
We created a variable for each txt file. We named them exactly as the txt file: features (, activities, subjectest, x_test, y_test, subject_train, x_train, y_train

__Merged data__
We combined 6 files using rbind() (x_train and x_test into x, y_train and y_test into y,subjects_train and subjects_test into Subjects). These files were combined into a single dataset called onedata using cbind().

__Clean dataset__
Created a summarized clean data set with mean and STD values using the onedata. This data is summarized into a txt file called cleandata.txt



##Cleand and tidy dataset description
Clean data has 180 observations and 88 variables

__Variables per subject. Actities__
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

__Variables in the clean data set_
The clean dataset has 88 columns and 6 activities per subject
1	subject
2	"activity"
3	"tBodyAcc.mean...X"
4	"tBodyAcc.mean...Y"
5	"tBodyAcc.mean...Z"
6	"tGravityAcc.mean...X"
7	"tGravityAcc.mean...Y"
8	"tGravityAcc.mean...Z"
9	"tBodyAccJerk.mean...X"
10	"tBodyAccJerk.mean...Y"
11	"tBodyAccJerk.mean...Z"
12	"tBodyGyro.mean...X"
13	"tBodyGyro.mean...Y"
14	"tBodyGyro.mean...Z"
15	"tBodyGyroJerk.mean...X"
16	"tBodyGyroJerk.mean...Y"
17	"tBodyGyroJerk.mean...Z"
18	"tBodyAccMag.mean.."
19	"tGravityAccMag.mean.."
20	"tBodyAccJerkMag.mean.."
21	"tBodyGyroMag.mean.."
22	"tBodyGyroJerkMag.mean.."
23	"fBodyAcc.mean...X"
24	"fBodyAcc.mean...Y"
25	"fBodyAcc.mean...Z"
26	"fBodyAcc.meanFreq...X"
27	"fBodyAcc.meanFreq...Y"
28	"fBodyAcc.meanFreq...Z"
29	"fBodyAccJerk.mean...X"
30	"fBodyAccJerk.mean...Y"
31	"fBodyAccJerk.mean...Z"
32	"fBodyAccJerk.meanFreq...X"
33	"fBodyAccJerk.meanFreq...Y"
34	"fBodyAccJerk.meanFreq...Z"
35	"fBodyGyro.mean...X"
36	"fBodyGyro.mean...Y"
37	"fBodyGyro.mean...Z"
38	"fBodyGyro.meanFreq...X"
39	"fBodyGyro.meanFreq...Y"
40	"fBodyGyro.meanFreq...Z"
41	"fBodyAccMag.mean.."
42	"fBodyAccMag.meanFreq.."
43	"fBodyBodyAccJerkMag.mean.."
44	"fBodyBodyAccJerkMag.meanFreq.."
45	"fBodyBodyGyroMag.mean.."
46	"fBodyBodyGyroMag.meanFreq.."
47	"fBodyBodyGyroJerkMag.mean.."
48	"fBodyBodyGyroJerkMag.meanFreq.."
49	"angle.tBodyAccMean.gravity."
50	"angle.tBodyAccJerkMean..gravityMean."
51	"angle.tBodyGyroMean.gravityMean."
52	"angle.tBodyGyroJerkMean.gravityMean."
53	"angle.X.gravityMean."
54	"angle.Y.gravityMean."
55	"angle.Z.gravityMean."
56	"tBodyAcc.std...X"
57	"tBodyAcc.std...Y"
58	"tBodyAcc.std...Z"
59	"tGravityAcc.std...X"
60	"tGravityAcc.std...Y"
61	"tGravityAcc.std...Z"
62	"tBodyAccJerk.std...X"
63	"tBodyAccJerk.std...Y"
64	"tBodyAccJerk.std...Z"
65	"tBodyGyro.std...X"
66	"tBodyGyro.std...Y"
67	"tBodyGyro.std...Z"
68	"tBodyGyroJerk.std...X"
69	"tBodyGyroJerk.std...Y"
70	"tBodyGyroJerk.std...Z"
71	"tBodyAccMag.std.."
72	"tGravityAccMag.std.."
73	"tBodyAccJerkMag.std.."
74	"tBodyGyroMag.std.."
75	"tBodyGyroJerkMag.std.."
76	"fBodyAcc.std...X"
77	"fBodyAcc.std...Y"
78	"fBodyAcc.std...Z"
79	"fBodyAccJerk.std...X"
80	"fBodyAccJerk.std...Y"
81	"fBodyAccJerk.std...Z"
82	"fBodyGyro.std...X"
83	"fBodyGyro.std...Y"
84	"fBodyGyro.std...Z"
85	"fBodyAccMag.std.."
86	"fBodyBodyAccJerkMag.std.."
87	"fBodyBodyGyroMag.std.."
88	"fBodyBodyGyroJerkMag.std.."


