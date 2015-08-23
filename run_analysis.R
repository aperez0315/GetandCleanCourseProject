feat <- read.table("features.txt",header=F)
labels <- read.table("activity_labels.txt",header=F)

subtest <- read.table("subject_test.txt",header=F,col.names=c("subjectid"))
testlab <- read.table("y_test.txt",header=F,col.names=c("activity"))
test <- read.table("X_test.txt",header=F,col.names=feat$V2)
testfinal <- cbind(subtest,testlab,test)
head(testfinal)

subtrain <- read.table("subject_train.txt",header=F,col.names=c("subjectid"))
trainlab <- read.table("y_train.txt",header=F,col.names=c("activity"))
train <- read.table("X_train.txt",header=F,col.names=feat$V2)
trainfinal <- cbind(subtrain,trainlab,train)
head(trainfinal)

final <- rbind(testfinal,trainfinal)
dim(final)

listmean <- grep("mean",names(final),ignore.case=T)
liststd <- grep("std",names(final), ignore.case=T)

final2 <- subset(final,select = c(1,2,listmean,liststd))
check <- merge(final2,labels,by.y="V1",by.x="activity",all.x=T)
check2 <- subset(check,select = c(2,89,3:88))
colnames(check2)[colnames(check2) == "V2"] <- "activity"
finnames <- names(check2)
finnames <- gsub("tB","TimeB",finnames)
finnames <- gsub("tG","TimeG",finnames)
finnames <- gsub("fB","FourierTransformB",finnames)
finnames <- gsub("X","XDirection",finnames)
finnames <- gsub("Y","YDirection",finnames)
finnames <- gsub("Z","ZDirection",finnames)
finnames <- gsub("Mag","Magnitude",finnames)
colnames(check2) <- finnames
AllMean_STD <- check2
dim(AllMean_STD)
AveragesofVariables <- aggregate(AllMean_STD[,3:88], by =list(AllMean_STD[,1], AllMean_STD[,2]), FUN = mean, na.rm = TRUE)
names(AveragesofVariables)[1:2] <- c('subjectid', 'activity')
write.table(AveragesofVariables,file = "Step5Data.txt",row.names = F)
