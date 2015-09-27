 # Submitted by Russia Haddad
 1. set the working directory to the directory where the project data exists:
 2. install and source needed packages
 3. read the activity labels (6) that the subjects performed
 4. read the features (561) that have been measured/calculated
 5. read the test data {subjects, activities, features}
 - then add a sequence ID for each dataset
 6. read the train data {subjects, activities, features}
 - then add a sequence ID for each dataset
 7. join all the test datasets based on the sequence ID
 8. join all the train datasets based on the sequence ID
 9. merge the test and training datasets
 -add a new variable to indicate each record original source
 -shift the train dataset ID by test row numbers to guarantee that the datasets will be appended more than joined
 10. merge the resultant dataset with activity_labels
 11. find all the feature with mean() or std()
 12. extract the mentioned features