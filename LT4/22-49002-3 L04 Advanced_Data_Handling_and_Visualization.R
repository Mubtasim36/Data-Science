#List of required packages
packages <- c("ggplot2", "dplyr", "scales", "tidyr","GGally")

# Install any packages that are not already installed
installed_packages <- rownames(installed.packages())
for (pkg in packages) {
  if (!(pkg %in% installed_packages)) {
    install.packages(pkg)
  }
}

# Load the packages
library(ggplot2)
library(dplyr)
library(scales)
library(tidyr)

#using pre set data
data("mtcars")
head(mtcars)

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +     #Adds scatter plot points (one point for each car).
  geom_smooth(method = "lm", se = FALSE, color = "blue") +     #Adds a linear regression line ("lm" = linear model).se = FALSE removes the shaded confidence interval.
  labs(title = "HP vs MPG", x = "Horsepower", y = "Miles per Gallon")



ggplot(mtcars, aes(y = mpg)) +
  geom_boxplot(fill = "tomato") +
  labs(title = "Boxplot of Miles per Gallon", y = "MPG")



library(GGally)
ggcorr(mtcars, label = TRUE)



# --- Handling Missing Values ---

# Check how many NA values are in each column
colSums(is.na(mtcars))



# Create a new dataframe with rows containing NA values removed
mtcars_clean <- na.omit(mtcars)

# Verify that there are no more NA values
cat("Total NA values after cleaning:", sum(is.na(mtcars_clean)), "\n")




# --- Handling Duplicates ---

# Check for any duplicated rows in the entire dataset
cat("Total duplicated rows:", sum(duplicated(mtcars_clean)), "\n")


#Filter cars with mpg > 20
mtcars_filtered <- mtcars_clean %>% filter(mpg > 20)



#Select specific columns
mtcars_selected <- mtcars_filtered %>% select(mpg, hp, wt)


#Create a new variable: Power-to-Weight Ratio
mtcars_mutated <- mtcars_selected %>%
  mutate(power_to_weight = hp / wt)



#Normalize mpg, hp, wt
mtcars_scaled <- mtcars_selected %>%
  mutate(across(c(mpg, hp, wt), ~ scale(.)[,1]))
head(mtcars_scaled)







#using new dataset
# Install and load necessary package
install.packages("readr")
library(readr)

# URL to the CSV file
url <- "https://raw.githubusercontent.com/Opensourcefordatascience/Data-sets/refs/heads/master/blood_pressure.csv"
dataset <- read_csv(url)
head(dataset)



ggplot(dataset, aes(x = bp_before, y = bp_after)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(title = "Before vs After= Before", y = "After")






ggplot(dataset, aes(y = bp_after)) +
  geom_boxplot(fill = "red") +
  labs(title = "Boxplot of Blood Pressure", y = "BP")



library(GGally)
ggcorr(dataset, label = TRUE)



# --- Handling Missing Values ---

# Check how many NA values are in each column
colSums(is.na(dataset))



# Create a new dataframe with rows containing NA values removed
dataset_clean <- na.omit(dataset)

# Verify that there are no more NA values
cat("Total NA values after cleaning:", sum(is.na(dataset_clean)), "\n")




# --- Handling Duplicates ---

# Check for any duplicated rows in the entire dataset
cat("Total duplicated rows:", sum(duplicated(dataset_clean)), "\n")


#Filter patient with bp_before > 150
dataset_filtered <- dataset_clean %>% filter(bp_before > 150)



#Select specific columns
dataset_selected <- dataset_filtered %>% select(patient, bp_before, bp_after)


#Create a new variable: before and after Ratio
dataset_mutated <- dataset_selected %>%
  mutate(Before_to_After= bp_before / bp_after)



#Normalize 
dataset_scaled <- dataset_selected %>%
  mutate(across(c(patient, bp_before, bp_after), ~ scale(.)[,1]))
head(dataset_scaled)


