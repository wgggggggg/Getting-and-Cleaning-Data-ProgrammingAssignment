Variables:             #All units are standard units
    1.subject
        Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
        from 'train/subject_train.txt' and 'test/subject_test.txt'
    2.activitylabel
        Links the class labels with their activity name
        from 'train/y_train.txt' and 'test/y_test.txt'
        meanings:
            1 WALKING
            2 WALKING_UPSTAIRS
            3 WALKING_DOWNSTAIRS
            4 SITTING
            5 STANDING
            6 LAYING
    3.activitydatamean
        mean of Test set
        from 'train/X_train.txt' and 'train/X_test.txt'
    4.activitydatasd
        standard deviation of Test set
    5.bodyaccxmean
        The mean of the body acceleration signal obtained by subtracting the gravity from the total acceleration.
    6.bodyaccxsd
        The sd of the body acceleration signal obtained by subtracting the gravity from the total acceleration.
    7.bodyaccymean
        similar to 5 but axis y
    8.bodyaccysd
        similar to 6 but axis y
    9.bodyacczmean
        similar to 5 but axis z
    10.bodyacczsd
        similar to 6 but axis z
    11.bodygyroxmean
        The mean of the angular velocity vector measured by the gyroscope for each window sample.
    12.bodygyroxsd
        The sd of the angular velocity vector measured by the gyroscope for each window sample.
    13.bodygyroymean
        similar to 11 but axis y
    14.bodygyroysd
        similar to 12 but axis y
    15.bodygyrozmean
        similar to 11 but axis z
    16.bodygyrozsd
        similar to 12 but axis z
    17.totalaccxmean
        The mean of the acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'
    18.totalaccxsd
        The sd of the acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'
    19.totalaccymean
        similar to 17 but axis y
    20.totalaccysd
        similar to 18 but axis y
    21.totalacczmean
        similar to 17 but axis z
    22.totalacczsd
        similar to 18 but axis z
    
Transformation and Work
    1.Read all data from all txt files and rename them
    2.Calculating the mean of the rows from the same txt files
    3.Average of each variable for each activity and each subject.