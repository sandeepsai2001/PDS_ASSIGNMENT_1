### Read in the raw data,
raw_student_data <- read.csv("C:/Users/Admin/Desktop/student_project/data_raw/raw_student_data.csv")

#Getting the info about the dataset
summary(raw_student_data)


#Understanding the data and dimensions
names(raw_student_data)
dim(raw_student_data) 

#Getting the top rows
head(raw_student_data)

# checking for any NULL values
anyNA(raw_student_data)

#checking for any duplicate values
duplicated(raw_student_data)

clean_student_data<- raw_student_data
### There are no null values and duplicate values. So, the given data is clean.
### Write the clean data to disk
write.csv(clean_student_data, "C:/Users/Admin/Desktop/student_project/data_clean/clean_student_data.csv")
