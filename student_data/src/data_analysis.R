#Reading the csv file
clean_student_data <- read.csv("C:/Users/Admin/Desktop/student_project/data_clean/clean_student_data.csv")

#Getting the info of the dataset
summary(clean_student_data)

clean_student_data$Frality <- as.factor(clean_student_data$Frality)

# t.test
t_test_frailty=with(clean_student_data,t.test(clean_student_data$Weight ~ clean_student_data$Frality,var.equal = FALSE))
t_test_frailty

capture.output(t_test_frailty, file = "C:/Users/Admin/Desktop/student_project/results/test_results.txt")

# plotting
hist(clean_student_data$Height,breaks=20,col='red')
pairs(~ Height + Weight  + Age + Grip.Strength+ Frality  , data = clean_student_data)
