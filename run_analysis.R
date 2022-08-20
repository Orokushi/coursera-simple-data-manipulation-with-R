# load data
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")

train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")

data_col_names <- read.table("./UCI HAR Dataset/features.txt")
label_map <- read.table("./UCI HAR Dataset/activity_labels.txt")

# 4. Appropriately labels the data set with descriptive variable names. 
names(test_data) <- data_col_names[,2]
names(train_data) <- data_col_names[,2]

names(label_map) <- c("number","label_name")

names(test_labels)<- "number"
names(train_labels)<- "number"

# create descriptive labels
test_labels <- merge(x = test_labels, y = label_map, by = "number", all.x = TRUE)
train_labels <- merge(x = train_labels, y = label_map, by = "number", all.x = TRUE)


# 3. Uses descriptive activity names to name the activities in the data set
test_data["activity"] <- test_labels["label_name"]
train_data["activity"] <- train_labels["label_name"]


# 1. Merges the training and the test sets to create one data set.
merged_data <- rbind(test_data,train_data)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# extracting activity as well, since its needed for later steps
library(dplyr)
tidy_data <- 
  merged_data %>%
  select(matches("(mean\\(\\)$)|(std\\(\\)$)|activity"))


# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
# The required data set is "tidy_data" from step 2, since i did the tasks in a different order,
tidy_data_means <- 
  tidy_data %>%
  group_by(activity) %>%
  summarise(across(c(where(is.numeric)), mean)) %>%
  ungroup() %>%
  as.data.frame()
