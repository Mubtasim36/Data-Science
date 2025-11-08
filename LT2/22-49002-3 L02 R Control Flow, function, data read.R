#1
x <- 23
if (x > 6) {                                 #conditional -if
  print("x is greater than 5")
}


#2
x <- 3
if (x < 5) {                
  print("x is smaller than 5")
} else {                                             #if-else
  print("x is 5 or less")
}


#3
score <- 70
if (score >= 90) {
  print("Grade A")
} else if (score >= 80) {
  print("Grade B")
} else if (score >= 70) {
  print("Grade C")
} else {                                          #if-else if-else
  print("Grade F")
}

#4
for (i in 3:8) {                                #loop from 3 to 8
  print(paste("Iteration", i))                   #paste(" ",i) prints the string inside "" then value of i
}


#5
#repeat Loop (with break)
i <- 1
repeat {
  print(i)
  i <- i + 1
  if (i > 5) break 
}


#6
#next Statement (skip to next iteration)
for (i in 3:5) {
  if (i == 3) next
  print(i)
}

#7
#break Statement (exit the loop)
for (i in 1:6) {
  if (i == 4) break
  print(i)
}

#8
#mean()
numbers <- c(40, 30, 5,3, 12, 2,5)
mean(numbers) 

#9
sum(numbers)  

#10
length(numbers) 

#11
pi_val <- 3.14159
round(pi_val, 3) 

#12
paste("How", "are", "you?")

#13
#Simple function to add two numbers
add_numbers <- function(a, b,c) {
  return(a + b)
}

add_numbers(4,5, 3)  


#14
#Function to check if a number is even
is_even <- function(x) {
  if (x %% 2 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}

is_even(5)                    #checks the value inside the func


#15
#Function with default parameter
greet <- function(name = "User") {
  paste("Hello", name)
}

greet()    


#16
greet("Mubtasim")                  #replaces "user" in function()


#17

numbers <- 2:8                   #numbers from 2 to 8
squared <- sapply(numbers, function(x) x^2)         #squares(or whatever power is given) the values from 2 to 8
print(squared)

#18
#Reading a CSV File
data <- read.csv("C:/Users/student/Downloads/Titanic.csv")
head(data)  # View the first few rows


#19
#Reading a Text File (tab-delimited)
data <- read.table("C:/Users/student/Downloads/123/Hello.txt", header = TRUE, sep = "\t")
head(data)


#20
#Reading Data from a URL
url <- "https://raw.githubusercontent.com/uiuc-cse/data-fa14/gh-pages/data/iris.csv"
data <- read.csv(url)
head(data)


#Exercise-1
score <- 87
if (score >= 90) {
  print("Excellent")
} else if (score >= 75) {
  print("Good")
} else if (score >= 50) {
  print("Pass")
} else {                                         
  print("Fail")
}


#exercise2

for (i in 1:10) {
  square <- i^2
  print(square)
}

#ex3
count <- 1

while (count < 20) {
  if (count %% 2 == 0) {
    print(count)
  }
  count <- count + 1
}
 
#exercise 4
multiply <-function(a,b)
{
  return(a*b)
}
multiply(5,8)


#exercise 5
calculate_stats<-function(numbers){
  calc_list<-list(
  Mean=mean(numbers),
  Median=median(numbers),
  Standard_deviation=sd(numbers)
  )
  return(calc_list)
}
calculate_stats(c(14,54,52,49,23))


#exercise6

grade_result <-function(score){
if (score >= 90) {
  print("Grade A")
} else if (score >= 75) {
  print("Grade B")
} else if (score >= 50) { 
  print("Grade C")
} else {                                         
  print("Grade F")
}
}
grade_result(45)
#grade_result(85)
#grade_result(95)


#exercise7
marks <- read.csv("I:/AIUB courses/OneDrive - American International University-Bangladesh/All Semesters/Fall 25-26/Data Science/Lab task/LT2/lab2data.csv")
head(marks,5)
str(marks)

