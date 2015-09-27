# 1. set the working directory to the directory where the project data exists:
  setwd("/home/rhaddad/R/DC_Week3/Project/UCI HAR Dataset")

# 2. install and source needed packages
  library("plyr")

# 3. read the activity labels (6) that the subjects performed
  activity_label_file <- "activity_labels.txt"
  activity_labels <- read.table(activity_label_file, header = FALSE, sep = ' ', col.names = c('activity_id', 'activity_label'), strip.white = TRUE)

# 4. read the features (561) that have been measured/calculated
  feature_label_file <- "features.txt"
  feature_labels <- read.table(feature_label_file, header = FALSE, sep = ' ', col.names = c('feature_id', 'feature_label'), strip.white = TRUE)

# 5. read the test data {subjects, activities, features}
# then add a sequence ID for each dataset
  test_subject_file <- "test/subject_test.txt"
  test_subjects <- read.table(test_subject_file, header = FALSE, sep = '\n', col.names = c('subject_id'), strip.white = TRUE)
  test_subjects$id <- seq(1, nrow(test_subjects))

  test_activity_file <- "test/y_test.txt"
  test_activities <- read.table(test_activity_file, header = FALSE, sep = '\n', col.names = c('activity_id'), strip.white = TRUE)
  test_activities$id <- seq(1, nrow(test_activities))

  test_feature_file <- "test/X_test.txt"
  test_features <- read.table(test_feature_file, header = FALSE, sep = '\n', col.names = c('feature_vector'),strip.white = TRUE)
  test_features$id <- seq(1, nrow(test_features))

  test_body_acc_x_file <- "test/Inertial Signals/body_acc_x_test.txt"
  test_body_acc_x <- read.table(test_body_acc_x_file, header = FALSE, sep = '\n', col.names = c('body_acc_x'), strip.white = TRUE)
  test_body_acc_x$id <- seq(1, nrow(test_body_acc_x))

  test_body_acc_y_file <- "test/Inertial Signals/body_acc_y_test.txt"
  test_body_acc_y <- read.table(test_body_acc_y_file, header = FALSE, sep = '\n', col.names = c('body_acc_y'), strip.white = TRUE)
  test_body_acc_y$id <- seq(1, nrow(test_body_acc_y))

  test_body_acc_z_file <- "test/Inertial Signals/body_acc_z_test.txt"
  test_body_acc_z <- read.table(test_body_acc_z_file, header = FALSE, sep = '\n', col.names = c('body_acc_z'), strip.white = TRUE)
  test_body_acc_z$id <- seq(1, nrow(test_body_acc_z))

  test_body_gyro_x_file <- "test/Inertial Signals/body_gyro_x_test.txt"
  test_body_gyro_x <- read.table(test_body_gyro_x_file, header = FALSE, sep = '\n', col.names = c('body_gyro_x'), strip.white = TRUE)
  test_body_gyro_x$id <- seq(1, nrow(test_body_gyro_x))

  test_body_gyro_y_file <- "test/Inertial Signals/body_gyro_y_test.txt"
  test_body_gyro_y <- read.table(test_body_gyro_y_file, header = FALSE, sep = '\n', col.names = c('body_gyro_y'), strip.white = TRUE)
  test_body_gyro_y$id <- seq(1, nrow(test_body_gyro_y))

  test_body_gyro_z_file <- "test/Inertial Signals/body_gyro_z_test.txt"
  test_body_gyro_z <- read.table(test_body_gyro_z_file, header = FALSE, sep = '\n', col.names = c('body_gyro_z'), strip.white = TRUE)
  test_body_gyro_z$id <- seq(1, nrow(test_body_gyro_z))

  test_total_acc_x_file <- "test/Inertial Signals/total_acc_x_test.txt"
  test_total_acc_x <- read.table(test_total_acc_x_file, header = FALSE, sep = '\n', col.names = c('total_acc_x'), strip.white = TRUE)
  test_total_acc_x$id <- seq(1, nrow(test_total_acc_x))

  test_total_acc_y_file <- "test/Inertial Signals/total_acc_y_test.txt"
  test_total_acc_y <- read.table(test_total_acc_y_file, header = FALSE, sep = '\n', col.names = c('total_acc_y'), strip.white = TRUE)
  test_total_acc_y$id <- seq(1, nrow(test_total_acc_y))

  test_total_acc_z_file <- "test/Inertial Signals/total_acc_z_test.txt"
  test_total_acc_z <- read.table(test_total_acc_z_file, header = FALSE, sep = '\n', col.names = c('total_acc_z'), strip.white = TRUE)
  test_total_acc_z$id <- seq(1, nrow(test_total_acc_z))

# 6. read the train data {subjects, activities, features}
# then add a sequence ID for each dataset
  train_subject_file <- "train/subject_train.txt"
  train_subjects <- read.table(train_subject_file, header = FALSE, sep = '\n', col.names = c('subject_id'), strip.white = TRUE)
  train_subjects$id <- seq(1, nrow(train_subjects))

  train_activity_file <- "train/y_train.txt"
  train_activities <- read.table(train_activity_file, header = FALSE, sep = '\n', col.names = c('activity_id'), strip.white = TRUE)
  train_activities$id <- seq(1, nrow(train_activities))

  train_feature_file <- "train/X_train.txt"
  train_features <- read.table(train_feature_file, header = FALSE, sep = '\n', col.names = c('feature_vector'),strip.white = TRUE)
  train_features$id <- seq(1, nrow(train_features))

  train_body_acc_x_file <- "train/Inertial Signals/body_acc_x_train.txt"
  train_body_acc_x <- read.table(train_body_acc_x_file, header = FALSE, sep = '\n', col.names = c('body_acc_x'), strip.white = TRUE)
  train_body_acc_x$id <- seq(1, nrow(train_body_acc_x))

  train_body_acc_y_file <- "train/Inertial Signals/body_acc_y_train.txt"
  train_body_acc_y <- read.table(train_body_acc_y_file, header = FALSE, sep = '\n', col.names = c('body_acc_y'), strip.white = TRUE)
  train_body_acc_y$id <- seq(1, nrow(train_body_acc_y))

  train_body_acc_z_file <- "train/Inertial Signals/body_acc_z_train.txt"
  train_body_acc_z <- read.table(train_body_acc_z_file, header = FALSE, sep = '\n', col.names = c('body_acc_z'), strip.white = TRUE)
  train_body_acc_z$id <- seq(1, nrow(train_body_acc_z))

  train_body_gyro_x_file <- "train/Inertial Signals/body_gyro_x_train.txt"
  train_body_gyro_x <- read.table(train_body_gyro_x_file, header = FALSE, sep = '\n', col.names = c('body_gyro_x'), strip.white = TRUE)
  train_body_gyro_x$id <- seq(1, nrow(train_body_gyro_x))

  train_body_gyro_y_file <- "train/Inertial Signals/body_gyro_y_train.txt"
  train_body_gyro_y <- read.table(train_body_gyro_y_file, header = FALSE, sep = '\n', col.names = c('body_gyro_y'), strip.white = TRUE)
  train_body_gyro_y$id <- seq(1, nrow(train_body_gyro_y))

  train_body_gyro_z_file <- "train/Inertial Signals/body_gyro_z_train.txt"
  train_body_gyro_z <- read.table(train_body_gyro_z_file, header = FALSE, sep = '\n', col.names = c('body_gyro_z'), strip.white = TRUE)
  train_body_gyro_z$id <- seq(1, nrow(train_body_gyro_z))

  train_total_acc_x_file <- "train/Inertial Signals/total_acc_x_train.txt"
  train_total_acc_x <- read.table(train_total_acc_x_file, header = FALSE, sep = '\n', col.names = c('total_acc_x'), strip.white = TRUE)
  train_total_acc_x$id <- seq(1, nrow(train_total_acc_x))

  train_total_acc_y_file <- "train/Inertial Signals/total_acc_y_train.txt"
  train_total_acc_y <- read.table(train_total_acc_y_file, header = FALSE, sep = '\n', col.names = c('total_acc_y'), strip.white = TRUE)
  train_total_acc_y$id <- seq(1, nrow(train_total_acc_y))

  train_total_acc_z_file <- "train/Inertial Signals/total_acc_z_train.txt"
  train_total_acc_z <- read.table(train_total_acc_z_file, header = FALSE, sep = '\n', col.names = c('total_acc_z'), strip.white = TRUE)
  train_total_acc_z$id <- seq(1, nrow(train_total_acc_z))

# 7. join all the test datasets based on the sequence ID
  test_dataset_list <- list(test_subjects, test_activities, test_features, test_body_acc_x, test_body_acc_y, test_body_acc_z, test_body_gyro_x, test_body_gyro_y, test_body_gyro_z, test_total_acc_x, test_total_acc_y, test_total_acc_z)
  test_dataset <- join_all(test_dataset_list, by = 'id', type = 'inner')

# 8. join all the train datasets based on the sequence ID
  train_dataset_list <- list(train_subjects, train_activities, train_features, train_body_acc_x, train_body_acc_y, train_body_acc_z, train_body_gyro_x, train_body_gyro_y, train_body_gyro_z, train_total_acc_x, train_total_acc_y, train_total_acc_z)
  train_dataset <- join_all(train_dataset_list, by = 'id', type = 'inner')

# 9. merge the test and training datasets
# add a new variable to indicate each record original source
# shift the train dataset ID by test row numbers to guarantee that the datasets will be appended more than joined
  test_dataset$dataset_group <- 'test'
  train_dataset$dataset_group <- 'training'
  train_dataset$id <- train_dataset$id + nrow(test_dataset)
  # head(test_dataset$id, 10)
  # tail(test_dataset$id, 10)
  # head(train_dataset$id, 10)
  merged_dataset <- merge(x = test_dataset, y = train_dataset, all = TRUE)
  table(merged_dataset$subject_id)
  
# 10. merge the resultant dataset with activity_labels
  merged_w_activity_dataset <- merge(x = merged_dataset, y= activity_labels, by = 'activity_id', all = TRUE)

# 11. find all the feature with mean() or std()
  feature_labels[] <- lapply(feature_labels, as.character)
  mean_std_features <- feature_labels[grepl(x = feature_labels$feature_label, pattern = "mean\\(", ignore.case = TRUE) | grepl(x = feature_labels$feature_label, pattern = "std\\(", ignore.case = TRUE), ]
    
# 12. extract the mentioned features
  merged_w_activity_dataset[] <- lapply(merged_w_activity_dataset, as.character)
  merged_w_activity_dataset$feature_vector <- strsplit(merged_w_activity_dataset$feature_vector, ' +')
  x <- merged_w_activity_dataset
  x$feature_vector <- 
    lapply(x, unlist(x$feature_vector))
  merged_w_activity_dataset$feature_vector
  merged_w_activity_dataset$feature_vector[[4]][2]
  x <- unlist(feature_vector[1])
  t <- x[mean_std_features$feature_id]
  extracted_features<- split(t, mean_std_features$feature_label)
