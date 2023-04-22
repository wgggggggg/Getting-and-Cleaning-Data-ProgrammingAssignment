library(dplyr)
#This big section is to finish some steps only in "test"
subject <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
activitylabel <-  read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
activitydata <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
names(subject) <- "subject"
names(activitylabel) <- "activitylabel"
names(activitydata) <- paste("data",names(activitydata),sep="")


readacc <- function(name)
{
      direction <- paste("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/",name,sep="")
      direction <- paste(direction,".txt",sep="")
      a <- read.table(direction)
      names(a) <- paste(name,names(a),sep="")
      a
}
bodyaccx <- readacc("body_acc_x_test")
bodyaccy <- readacc("body_acc_y_test")
bodyaccz <- readacc("body_acc_z_test")
bodygyrox <- readacc("body_gyro_x_test")
bodygyroy <- readacc("body_gyro_y_test")
bodygyroz <- readacc("body_gyro_z_test")
totalaccx <- readacc("total_acc_x_test")
totalaccy <- readacc("total_acc_y_test")
totalaccz <- readacc("total_acc_z_test")

data <- cbind(subject,activitylabel,activitydata,bodyaccx,bodyaccy,bodyaccz,bodygyrox,bodygyroy,bodygyroz,totalaccx,totalaccy,totalaccz)

mean <- rep(0,2947)
sd <- rep(0,2947)



calculatemeansd<-function(name1,name2)
{
      mean <- rep(0,2947)
      sd <- rep(0,2947)
      
      for(i in 1:2947)
      {
            mean[i] <- mean(as.numeric(name1[i,]),na.rm=TRUE)
            sd[i] <- sd(as.numeric(name1[i,]),na.rm=TRUE)
      }
      a <- list(mean,sd)
      names(a) <- c(paste(name2,"mean",sep=""),paste(name2,"sd",sep=""))
      a
}

a <- calculatemeansd(activitydata,"activitydata")
data <- cbind(data,a)
a <- calculatemeansd(bodyaccx,"bodyaccx")
data <- cbind(data,a)
a <- calculatemeansd(bodyaccy,"bodyaccy")
data <- cbind(data,a)
a <- calculatemeansd(bodyaccz,"bodyaccz")
data <- cbind(data,a)
a <- calculatemeansd(bodygyrox,"bodygyrox")
data <- cbind(data,a)
a <- calculatemeansd(bodygyroy,"bodygyroy")
data <- cbind(data,a)
a <- calculatemeansd(bodygyroz,"bodygyroz")
data <- cbind(data,a)
a <- calculatemeansd(totalaccx,"totalaccx")
data <- cbind(data,a)
a <- calculatemeansd(totalaccy,"totalaccy")
data <- cbind(data,a)
a <- calculatemeansd(totalaccz,"totalaccz")
data <- cbind(data,a)

data <- select(data,-(dataV1:dataV561),-(body_acc_x_testV1:body_acc_x_testV128),-(body_acc_y_testV1:body_acc_y_testV128),-(body_acc_z_testV1:body_acc_z_testV128))
data <- select(data,-(body_gyro_x_testV1:body_gyro_x_testV128),-(body_gyro_y_testV1:body_gyro_y_testV128),-(body_gyro_z_testV1:body_gyro_z_testV128))
data <- select(data,-(total_acc_x_testV1:total_acc_x_testV128),-(total_acc_y_testV1:total_acc_y_testV128),-(total_acc_z_testV1:total_acc_z_testV128))

#This big section is to finish some steps only in "train".The code of this section is similar to another.
#read subject,label from "y_train" and data from "X_train" ,and rename them
subject <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
activitylabel <-  read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
activitydata <- read.table("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
names(subject) <- "subject"
names(activitylabel) <- "activitylabel"
names(activitydata) <- paste("data",names(activitydata),sep="")
#a function to read some data about acceleration and rename them
readacc <- function(name)
{
      direction <- paste("./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/",name,sep="")
      direction <- paste(direction,".txt",sep="")
      a <- read.table(direction)
      names(a) <- paste(name,names(a),sep="")
      a
}
bodyaccx <- readacc("body_acc_x_train")
bodyaccy <- readacc("body_acc_y_train")
bodyaccz <- readacc("body_acc_z_train")
bodygyrox <- readacc("body_gyro_x_train")
bodygyroy <- readacc("body_gyro_y_train")
bodygyroz <- readacc("body_gyro_z_train")
totalaccx <- readacc("total_acc_x_train")
totalaccy <- readacc("total_acc_y_train")
totalaccz <- readacc("total_acc_z_train")
#Binding these data to dataframe "data2"
data2 <- cbind(subject,activitylabel,activitydata,bodyaccx,bodyaccy,bodyaccz,bodygyrox,bodygyroy,bodygyroz,totalaccx,totalaccy,totalaccz)
#two variables will be used
mean <- rep(0,7352)
sd <- rep(0,7352)


#a function to calculate mean and standard deviation
calculatemeansd<-function(name1,name2)
{
      mean <- rep(0,7352)
      sd <- rep(0,7352)
      
      for(i in 1:7352)
      {
            mean[i] <- mean(as.numeric(name1[i,]),na.rm=TRUE)
            sd[i] <- sd(as.numeric(name1[i,]),na.rm=TRUE)
      }
      a <- list(mean,sd)
      names(a) <- c(paste(name2,"mean",sep=""),paste(name2,"sd",sep=""))
      a
}
#add the mean and standard deviation to the dataframe "data2"
a <- calculatemeansd(activitydata,"activitydata")
data2 <- cbind(data2,a)
a <- calculatemeansd(bodyaccx,"bodyaccx")
data2 <- cbind(data2,a)
a <- calculatemeansd(bodyaccy,"bodyaccy")
data2 <- cbind(data2,a)
a <- calculatemeansd(bodyaccz,"bodyaccz")
data2 <- cbind(data2,a)
a <- calculatemeansd(bodygyrox,"bodygyrox")
data2 <- cbind(data2,a)
a <- calculatemeansd(bodygyroy,"bodygyroy")
data2 <- cbind(data2,a)
a <- calculatemeansd(bodygyroz,"bodygyroz")
data2 <- cbind(data2,a)
a <- calculatemeansd(totalaccx,"totalaccx")
data2 <- cbind(data2,a)
a <- calculatemeansd(totalaccy,"totalaccy")
data2 <- cbind(data2,a)
a <- calculatemeansd(totalaccz,"totalaccz")
data2 <- cbind(data2,a)
#Three lines are to throw columns which were used to calculate mean and standrad deviation.Just reserve new columns calculated by function "calculatemeansd"
data2 <- select(data2,-(dataV1:dataV561),-(body_acc_x_trainV1:body_acc_x_trainV128),-(body_acc_y_trainV1:body_acc_y_trainV128),-(body_acc_z_trainV1:body_acc_z_trainV128))
data2 <- select(data2,-(body_gyro_x_trainV1:body_gyro_x_trainV128),-(body_gyro_y_trainV1:body_gyro_y_trainV128),-(body_gyro_z_trainV1:body_gyro_z_trainV128))
data2 <- select(data2,-(total_acc_x_trainV1:total_acc_x_trainV128),-(total_acc_y_trainV1:total_acc_y_trainV128),-(total_acc_z_trainV1:total_acc_z_trainV128))


#The dataframe "data" is what the step4 needs.
#The dataframe "newdata" will be what the step5 needs.
data <- rbind(data2,data)
newdata <- data
#Two "for" loop are to calculate the average of each variable for each activity and each subject,and throw used row.
for(i in 1:30)
{
      for(j in 1:6)
      {
            b <- newdata$activitylabel==j
            a <- newdata$subject==i
            c <- a & b
            newdata <- rbind(newdata,sapply(newdata[c,],mean))
            c <- c(c,FALSE)
            newdata <- newdata[!c,]
      }
}




