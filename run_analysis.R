test_X <- read.table("test/X_test.txt")
test_y <- read.table("test/y_test.txt")
chain_X <- read.table("train/X_train.txt")
chain_y <- read.table("train/y_train.txt")
testDf <- merge(test_X,test_y)
chainDf <- merge(chain_X,chain_y)
mergedDf <- merge(testDf,chainDf,all=TRUE)

#read the signals test data
body_acc_x1<-read.table("test\Inertial Signals\body_acc_x_test")
body_acc_y1<-read.table("test\Inertial Signals\body_acc_y_test")
body_acc_z1<-read.table("test\Inertial Signals\body_acc_z_test")
body_gyro_x1<-read.table("test\Inertial Signals\body_gyro_x_test")
body_gyro_y1<-read.table("test\Inertial Signals\body_gyro_y_test")
body_gyro_z1<-read.table("test\Inertial Signals\body_gyro_z_test")
total_acc_x1<-read.table("test\Inertial Signals\total_acc_x_test")
total_acc_y1<-read.table("test\Inertial Signals\total_acc_y_test")
total_acc_z1<-read.table("test\Inertial Signals\total_acc_z_test")
#read the signals chaining data
body_acc_x0<-read.table("chain\Inertial Signals\body_acc_x_chain")
body_acc_y0<-read.table("chain\Inertial Signals\body_acc_y_chain")
body_acc_z0<-read.table("chain\Inertial Signals\body_acc_z_chain")
body_gyro_x0<-read.table("chain\Inertial Signals\body_gyro_x_chain")
body_gyro_y0<-read.table("chain\Inertial Signals\body_gyro_y_chain")
body_gyro_z0<-read.table("chain\Inertial Signals\body_gyro_z_chain")
total_acc_x0<-read.table("chain\Inertial Signals\total_acc_x_chain")
total_acc_y0<-read.table("chain\Inertial Signals\total_acc_y_chain")
total_acc_z0<-read.table("chain\Inertial Signals\total_acc_z_chain")

#read the mean of the data

#output
write.table(mergedData,"data.txt",row.name=FALSE)