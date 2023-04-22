# Getting-and-Cleaning-Data-ProgrammingAssignment
# There are three files "README.md" "CodeBook.md" "run_analysis.R"
# "Codebook.md" contains all description about variables and general operation process to data.
# "run_analysis.R" is a script to getting-and-cleaning data
# I download the .zip and unziped it in my workspace
# Firstly,I read all the data of test and rename them
# Secondly,I calculate the mean of the rows from the same txt file and add them as a new colmuns to data and delete the old colmuns which were used to calculate the mean.The data.frame was named as data
# Then,I handle the data of train called data2 similar to the data of test,and merge them by rbind function.The merged data.frame was named as data
# Lastly,I create a independent tidy data set with the average of each variable for each activity and each subject called newdata
