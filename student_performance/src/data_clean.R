### Read in the raw data,
raw_StudentsPerformance_data <- read.csv("C:/Users/Admin/Desktop/student_performance/data_raw/raw_StudentsPerformance_data.csv")

#Getting the info about the dataset
summary(raw_StudentsPerformance_data)


#Understanding the data and dimensions
names(raw_StudentsPerformance_data)
dim(raw_StudentsPerformance_data) 

#Getting the top rows
head(raw_StudentsPerformance_data)

### data cleaning
### Check NA Values present in Data set
anyNA(raw_StudentsPerformance_data)
### finding duplicate values in Data set
duplicated(raw_StudentsPerformance_data)
### finding count of duplicate values in the Dataset
sum(duplicated(raw_StudentsPerformance_data))
### making Dataset unique
unique(raw_StudentsPerformance_data)
clean_StudentsPerformance_data <- raw_StudentsPerformance_data
### writing the cleaned data to clean_StudentsPerformance_data.csv 
write.csv(clean_StudentsPerformance_data, "C:/Users/Admin/Desktop/student_performance/data_clean/clean_StudentsPerformance_data.csv")
