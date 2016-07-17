# UCI Machine Learning Smartphone Data Cleaning

## Overview / How the code works
The package consists of the following scripts:

* **CodeBook.md**: The codebook for the *tidydata.txt* output file and the *summarydata.txt* output file.
* **/data/**: The directory containing the original UCI data
* **/html/**: The directory with HTML versions of the README and CodeBook files
* **README.md**: This file
* **run_analysis.R**: The R file that performs the data cleaning
* **summarydata.txt**: Summarised data from the tidaydata.txt dataset. This consists of the mean values of the variables in the *tidydata.txt* dataset, grouped by activity and subject.
* **tidydata.txt**: A tidy data set, assembled from the original UCI data.

The R script *run_analysis.R* first merges the training and test data into distinct, but complete datasets (reuniting subject identifiers with their exercise data).

Once this step has been completed, the training and test sets are merged to create one large dataset.

Next, the columns in the large dataset are filtered, so that only those showing mean and standard deviation data are retained. **Note** In this transformation, the meanFreq() data in UCI's dataset is not kept during this step, as this is a different function type to the mean() function.

Descriptive activity names are then returned to the dataset (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), to make it clearer what each activity ID in the set is referring to. 

Column names are then cleaned up from the original UCI naming conventions, so as to create a more easily readible set of column names. A full overview of how this takes place is contained in *CodeBook.md*.

Finally, this data is then grouped by activity and subject, with the mean of each variable calculated on this basis, and stored as a separate dataframe. The script then writes out *tidydata.txt* (containing the un-summarised set of mean and standard deviation information) and *summarydata.txt*, which contains the summarizes table of variable means by subject/activity.

**For more a more complete overview of the data referenced here, please refer to the *README.txt* file in the */data* directory.**

## To run the script
This script can simply be run in place. it may be necessary to setwd() to the script's home directory first, depending on where it is stored relative to R's working root.
