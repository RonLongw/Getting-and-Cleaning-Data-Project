#R code to produce tidy data for Assignment
library(dplyr)
library(plyr)
library(data.table)

# Read the test data and write to file
#body_acc_x data
test_temp <- read.table("test/Inertial Signals/body_acc_x_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)

train_temp <- read.table("train/Inertial Signals/body_acc_x_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

rm(test_mean_tbl)
rm(train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "body_acc_x_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

#body_acc_y data
test_temp <- read.table("test/Inertial Signals/body_acc_y_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)

train_temp <- read.table("train/Inertial Signals/body_acc_y_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "body_acc_y_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

#body_acc_z data
test_temp <- read.table("test/Inertial Signals/body_acc_z_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)


train_temp <- read.table("train/Inertial Signals/body_acc_z_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "body_acc_z_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

#body_gyro_x data
test_temp <- read.table("test/Inertial Signals/body_gyro_x_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)


train_temp <- read.table("train/Inertial Signals/body_gyro_x_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "body_gyro_x_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

#body_gyro_y data
test_temp <- read.table("test/Inertial Signals/body_gyro_y_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)

train_temp <- read.table("train/Inertial Signals/body_gyro_y_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "body_gyro_y_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

#body_gyro_z data
test_temp <- read.table("test/Inertial Signals/body_gyro_z_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)

train_temp <- read.table("train/Inertial Signals/body_gyro_z_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "body_gyro_z_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

#total_acc_x data
test_temp <- read.table("test/Inertial Signals/total_acc_x_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)

train_temp <- read.table("train/Inertial Signals/total_acc_x_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "total_acc_x_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

#total_acc_y data
test_temp <- read.table("test/Inertial Signals/total_acc_y_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)

train_temp <- read.table("train/Inertial Signals/total_acc_y_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "total_acc_y_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

#total_acc_y data
test_temp <- read.table("test/Inertial Signals/total_acc_z_test.txt")
test_tbl <- tbl_df(test_temp)
test_mean_tbl <- mutate(test_tbl, mean = rowMeans(test_tbl), std = apply(test_tbl, 1, sd))
test_mean_tbl <- select(test_mean_tbl, mean, std)

subject_test_temp <- read.table("test/subject_test.txt")
subject_test_tbl <- tbl_df(subject_test_temp)
colnames(subject_test_tbl) <- "subject"

test_mean_tbl <- cbind(subject_test_tbl, test_mean_tbl)
rm(test_tbl)
rm(test_temp)

train_temp <- read.table("train/Inertial Signals/total_acc_z_train.txt")
train_tbl <- tbl_df(train_temp)
train_mean_tbl <- mutate(train_tbl, mean = rowMeans(train_tbl), std = apply(train_tbl, 1, sd))
train_mean_tbl <- select(train_mean_tbl, mean, std)

subject_train_temp <- read.table("train/subject_train.txt")
subject_train_tbl <- tbl_df(subject_train_temp)
colnames(subject_train_tbl) <- "subject"

train_mean_tbl <- cbind(subject_train_tbl, train_mean_tbl)
rm(train_tbl)
rm(train_temp)

temp_tbl <- rbind(test_mean_tbl, train_mean_tbl)

write.table(format(temp_tbl, scientific=TRUE), "total_acc_z_combined.txt", sep = "\t", col.names = T, row.names = F, quote = F)

rm(test_mean_tbl)
rm(train_mean_tbl)

##
body_acc_x <- read.table("body_acc_x_combined.txt", header = TRUE)
body_acc_x <- tbl_df(body_acc_x)

body_acc_x_gp <- group_by(body_acc_x, subject)

body_acc_x_gp <- setnames(body_acc_x_gp, old=c("mean","std"), new=c("avg_body_acc_x_mean", "avg_body_acc_x_std"))

body_acc_x_gp <- ddply(body_acc_x_gp, "subject", summarise, avg_body_acc_x_mean=mean(avg_body_acc_x_mean), avg_body_acc_x_std=sd(avg_body_acc_x_std))


body_acc_y <- read.table("body_acc_y_combined.txt", header = TRUE)
body_acc_y <- tbl_df(body_acc_y)

body_acc_y_gp <- group_by(body_acc_y, subject)

body_acc_y_gp <- setnames(body_acc_y_gp, old=c("mean","std"), new=c("avg_body_acc_y_mean", "avg_body_acc_y_std"))

body_acc_y_gp <- ddply(body_acc_y_gp, "subject", summarise, avg_body_acc_y_mean=mean(avg_body_acc_y_mean), avg_body_acc_y_std=sd(avg_body_acc_y_std))

body_acc_z <- read.table("body_acc_z_combined.txt", header = TRUE)
body_acc_z <- tbl_df(body_acc_z)

body_acc_z_gp <- group_by(body_acc_z, subject)

body_acc_z_gp <- setnames(body_acc_z_gp, old=c("mean","std"), new=c("avg_body_acc_z_mean", "avg_body_acc_z_std"))

body_acc_z_gp <- ddply(body_acc_z_gp, "subject", summarise, avg_body_acc_z_mean=mean(avg_body_acc_z_mean), avg_body_acc_z_std=sd(avg_body_acc_z_std))


body_gyro_x <- read.table("body_gyro_x_combined.txt", header = TRUE)
body_gyro_x <- tbl_df(body_gyro_x)

body_gyro_x_gp <- group_by(body_gyro_x, subject)

body_gyro_x_gp <- setnames(body_gyro_x_gp, old=c("mean","std"), new=c("avg_body_gyro_x_mean", "avg_body_gyro_x_std"))

body_gyro_x_gp <- ddply(body_gyro_x_gp, "subject", summarise, avg_body_gyro_x_mean=mean(avg_body_gyro_x_mean), avg_body_gyro_x_std=sd(avg_body_gyro_x_std))


body_gyro_y <- read.table("body_gyro_y_combined.txt", header = TRUE)
body_gyro_y <- tbl_df(body_gyro_y)

body_gyro_y_gp <- group_by(body_gyro_y, subject)

body_gyro_y_gp <- setnames(body_gyro_y_gp, old=c("mean","std"), new=c("avg_body_gyro_y_mean", "avg_body_gyro_y_std"))

body_gyro_y_gp <- ddply(body_gyro_y_gp, "subject", summarise, avg_body_gyro_y_mean=mean(avg_body_gyro_y_mean), avg_body_gyro_y_std=sd(avg_body_gyro_y_std))

body_gyro_z <- read.table("body_gyro_z_combined.txt", header = TRUE)
body_gyro_z <- tbl_df(body_gyro_z)

body_gyro_z_gp <- group_by(body_gyro_z, subject)

body_gyro_z_gp <- setnames(body_gyro_z_gp, old=c("mean","std"), new=c("avg_body_gyro_z_mean", "avg_body_gyro_z_std"))

body_gyro_z_gp <- ddply(body_gyro_z_gp, "subject", summarise, avg_body_gyro_z_mean=mean(avg_body_gyro_z_mean), avg_body_gyro_z_std=sd(avg_body_gyro_z_std))

total_acc_x <- read.table("total_acc_x_combined.txt", header = TRUE)
total_acc_x <- tbl_df(total_acc_x)

total_acc_x_gp <- group_by(total_acc_x, subject)

total_acc_x_gp <- setnames(total_acc_x_gp, old=c("mean","std"), new=c("avg_total_acc_x_mean", "avg_total_acc_x_std"))

total_acc_x_gp <- ddply(total_acc_x_gp, "subject", summarise, avg_total_acc_x_mean=mean(avg_total_acc_x_mean), avg_total_acc_x_std=sd(avg_total_acc_x_std))

total_acc_y <- read.table("total_acc_y_combined.txt", header = TRUE)
total_acc_y <- tbl_df(total_acc_y)

total_acc_y_gp <- group_by(total_acc_y, subject)

total_acc_y_gp <- setnames(total_acc_y_gp, old=c("mean","std"), new=c("avg_total_acc_y_mean", "avg_total_acc_y_std"))

total_acc_y_gp <- ddply(total_acc_y_gp, "subject", summarise, avg_total_acc_y_mean=mean(avg_total_acc_y_mean), avg_total_acc_y_std=sd(avg_total_acc_y_std))

total_acc_z <- read.table("total_acc_z_combined.txt", header = TRUE)
total_acc_z <- tbl_df(total_acc_z)

total_acc_z_gp <- group_by(total_acc_z, subject)

total_acc_z_gp <- setnames(total_acc_z_gp, old=c("mean","std"), new=c("avg_total_acc_z_mean", "avg_total_acc_z_std"))

total_acc_z_gp <- ddply(total_acc_z_gp, "subject", summarise, avg_total_acc_z_mean=mean(avg_total_acc_z_mean), avg_total_acc_z_std=sd(avg_total_acc_z_std))

total_acc <- merge(body_acc_x_gp, body_acc_y_gp, by="subject")
total_acc <- merge(total_acc, body_acc_z_gp, by="subject")
total_acc <- merge(total_acc, body_gyro_x_gp, by="subject")
total_acc <- merge(total_acc, body_gyro_y_gp, by="subject")
total_acc <- merge(total_acc, body_gyro_z_gp, by="subject")
total_acc <- merge(total_acc, body_gyro_z_gp, by="subject")
total_acc <- merge(total_acc, total_acc_x_gp, by="subject")
total_acc <- merge(total_acc, total_acc_y_gp, by="subject")
total_acc <- merge(total_acc, total_acc_z_gp, by="subject")

write.table(total_acc, "final_results.txt", sep="\t", quote = F, row.name = F, col.name = F)

rm(body_acc_x)
rm(body_acc_x_gp)
rm(body_acc_y)
rm(body_acc_y_gp)
rm(body_acc_z)
rm(body_acc_z_gp)
rm(body_gyro_x)
rm(body_gyro_x_gp)
rm(body_gyro_y)
rm(body_gyro_y_gp)
rm(body_gyro_z)
rm(body_gyro_z_gp)
rm(total_acc_x)
rm(total_acc_x_gp)
rm(total_acc_y)
rm(total_acc_y_gp)
rm(total_acc_z)
rm(total_acc_z_gp)




