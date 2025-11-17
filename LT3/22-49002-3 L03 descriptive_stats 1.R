head(iris)

str(iris)

# Get a comprehensive summary
summary(iris)


# Calculate mean
mean(iris$Sepal.Length)



# Calculate median
median(iris$Sepal.Length)


# To find the mode, create a table of frequencies
freq_table <- table(iris$Sepal.Length)
# Find the name of the most frequent value
names(freq_table)[which.max(freq_table)]


# Calculate the range
range_val <- range(iris$Sepal.Length)
max(range_val) - min(range_val)


# Calculate variance
var(iris$Sepal.Length)


# Calculate standard deviation
sd(iris$Sepal.Length)


# Calculate the Interquartile Range
IQR(iris$Sepal.Length)



# Get specific quantiles (e.g., 25th and 75th percentiles)
quantile(iris$Sepal.Length, probs = c(0.25, 0.75))


install.packages("dplyr")
library(dplyr)

# Calculate mean, sd, and count for each species
iris %>%
  group_by(Species) %>%
  summarise(
    count = n(),
    mean_sepal_length = mean(Sepal.Length),
    sd_sepal_length = sd(Sepal.Length),
    mean_petal_length = mean(Petal.Length),
    sd_petal_length = sd(Petal.Length)
  )

pairs(iris[, 1:4], main = "Scatterplot Matrix of Iris Data", col = iris$Species)#1:4 means columns from 1 to 4


install.packages("readr")

library(readr)
url <- "https://raw.githubusercontent.com/Shahriar16Hossain/Data-Science-Project/refs/heads/main/employee_performance.csv"
dataset <- read.csv(url)
head(dataset)




head(dataset)

str(dataset)

# Get a comprehensive summary
summary(dataset)


# Calculate mean
mean(dataset$Salary)



# Calculate median
median(dataset$Age)


# To find the mode, create a table of frequencies
freq_table <- table(dataset$Salary)

# Find the name of the most frequent value
names(freq_table)[which.max(freq_table)]


# Calculate the range
range_val <- range(dataset$Salary)
max(range_val) - min(range_val)


# Calculate variance
var(dataset$Age)


# Calculate standard deviation
sd(dataset$Age)


# Calculate the Interquartile Range
IQR(dataset$Salary)



# Get specific quantiles (e.g., 25th and 75th percentiles)
quantile(dataset$Age, probs = c(0.25, 0.75))


library(dplyr)

# Calculate mean, sd, and count for each species
dataset %>%
  group_by(Gender) %>%
  summarise(
    count = n(),
    mean_age = mean(Age),
    sd_age = sd(Age),
    mean_age = mean(Age),
    sd_age = sd(Age)
  )

pairs(dataset[, 5:7], main = "Scatterplot Matrix of dataset Data", col = dataset$Age)

