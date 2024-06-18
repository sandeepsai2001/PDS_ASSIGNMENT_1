#Reading the csv file
clean_StudentsPerformance_data <- read.csv("C:/Users/Admin/Desktop/student_performance/data_clean/clean_StudentsPerformance_data.csv")

# info of dataset
summary(clean_StudentsPerformance_data)

#Understanding the dimensions of the dataset
names(clean_StudentsPerformance_data)
dim(clean_StudentsPerformance_data)

#Getting the top rows
head(clean_StudentsPerformance_data)
summary(clean_StudentsPerformance_data)

### Data Visualizations using different Techniques
library(ggplot2)

# Scatter Plot
# 1.1
plot(clean_StudentsPerformance_data$reading.score, clean_StudentsPerformance_data$writing.score, pch = 20, cex = 1, frame = FALSE, xlab = "READING SCORE" , ylab = "WRITING SCORE", main="Scatterplot Reading & Writing",col='red')
# 1.2
plot(clean_StudentsPerformance_data$reading.score, clean_StudentsPerformance_data$math.score, pch = 10, cex = 1, frame = FALSE, xlab = "READING SCORE" , ylab = "MATH SCORE", main="Scatterplot Reading & Math",col='blue')
# 1.3
plot(clean_StudentsPerformance_data$math.score, clean_StudentsPerformance_data$writing.score, pch = 15, cex = 1, frame = FALSE, xlab = "MATH SCORE" , ylab = "WRITING SCORE", main="Scatterplot Math & Writing",col='pink')

# Bar plotting
# 2.1
barplot(clean_StudentsPerformance_data$math.score,xlab = "Math Score", horiz = TRUE)
# 2.2
barplot(clean_StudentsPerformance_data$math.score, ylab = "Math Score", horiz = FALSE)

# Histogram
# 3.1
hist(clean_StudentsPerformance_data$math.score,col='green',breaks=30,main='Histogram of math score',xlab='Math Score')
# 3.2
hist(clean_StudentsPerformance_data$reading.score,col='purple',breaks=20,main='Histogram of Reading score',xlab='Reading Score')
# 3.3
hist(clean_StudentsPerformance_data$writing.score,col='orange',breaks=50,main='Histogram of Writing score',xlab='Writing Score')

# Box plotting
# 4.1
boxplot(math.score~gender,data=clean_StudentsPerformance_data, col=rainbow(3), xlab="Gender", ylab="Math Score") 
# 4.2
boxplot(reading.score~gender,data=clean_StudentsPerformance_data, col=rainbow(3), xlab="Gender", ylab="Reading Score") 
# 4.3
boxplot(writing.score~gender,data=clean_StudentsPerformance_data, col=rainbow(3), xlab="Gender", ylab="Writing Score")

# Bar chart
# 5.1
ggplot(clean_StudentsPerformance_data, aes(x = factor(race.ethnicity))) +
  geom_bar(fill = "coral")
# 5.2
ggplot(clean_StudentsPerformance_data, aes(x = factor(gender))) +
  geom_bar(fill = "blue")
# 5.3
ggplot(clean_StudentsPerformance_data, aes(x = factor(parental.level.of.education))) +
  geom_bar(fill = "yellow")


# Geometric layer
# 6.1
ggplot(data = clean_StudentsPerformance_data, 
       aes(x = race.ethnicity, y = math.score)) + geom_point()
# 6.2
ggplot(data = clean_StudentsPerformance_data, 
       aes(x = gender, y = math.score)) + geom_point()

# facet grid
# 7.1
ggplot(clean_StudentsPerformance_data, aes(x = frequency(gender) , y = race.ethnicity)) +
  geom_col(fill = "blue")+
  facet_grid(test.preparation.course~gender) +
  labs(title = "Comparison between gender ",
       x = "",
       y = "Race Ethnicity")


