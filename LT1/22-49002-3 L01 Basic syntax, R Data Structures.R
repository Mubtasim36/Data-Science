#1 
# Creating Different Types of Vectors
# Numeric Vector
num_vec <- c(24, 2,5,353, 323, 14, 65)
print(num_vec)

#2
# Character Vector
char_vec <- c("DragonFruit", "Guava", "Pomegrenate")
print(char_vec)

#3
# Logical Vector
log_vec <- c(TRUE, TRUE, TRUE, FALSE)
print(log_vec)

#4
# Vector Operations
# Arithmetic Operations
vec1 <- c(23, 12, 74)
vec2 <- c(5, 6, 10)

sum_vec <- vec1 + vec2  # Element-wise addition
prod_vec <- vec1 * vec2 # Element-wise multiplication

print(sum_vec)

#5
print(prod_vec)

#6
# Accessing Elements in a Vector
# Create a vector
num_vec <- c(10, 20, 30, 40, 50)

# Access elements using index (1-based index)
print(num_vec[2]) 

#7
# Access multiple elements
print(num_vec[c(1, 3, 6)])  

#8
# Access elements using a condition
print(num_vec[num_vec > 25])  

#9
# Modifying a Vector
# Modify an element
num_vec[2] <- 100
print(num_vec)  # Output: 10 100 30 40 50


#10
# Vector Functions
veccd <- c(5, 10, 15, 20, 25,45,123,13)

# Length of the vector
print(length(veccd)) 

#11
# Sum of all elements
print(sum(veccd))  

#12
# Mean (average) of elements
print(mean(veccd))

#13
# Sorting a vector
sorted_veccd <- sort(veccd, decreasing = TRUE) #if false given, sorted opposite
print(sorted_veccd)

#14
# Sequence and Repetition in Vectors
# Sequence from 1 to 10
seq_vec <- seq(1, 24, by = 3)  # Steps of 3
print(seq_vec) 


#15
# Repeat elements
rep_vec <- rep(c(1, 2, 3,6,5,4), times = 3)  # Repeat entire vector
print(rep_vec) 
#16
# Creating a 3x3 matrix (filled column-wise by default)
mat <- matrix(1:12, nrow = 3, ncol = 4)
print(mat)


#17
# Filling a Matrix Row-Wise
mat <- matrix(1:6, nrow = 3, byrow = TRUE)
print(mat)


#18
# Naming Rows and Columns
# Creating a matrix
mat <- matrix(1:9, nrow = 3)

# Assigning row and column names
rownames(mat) <- c("Row1", "Row2", "Row3")
colnames(mat) <- c("Col1", "Col2", "Col3")
print(mat)



#19
# Accessing Elements in a Matrix
# Create a 3x3 matrix
mat <- matrix(1:27, nrow = 3)
print(mat)

# Access element at row 2, column 3
print(mat[2, 3])  


#20
# Access entire row 1
print(mat[1,4])  

#21
# Access entire column 2
print(mat[, 5])  # Output: 4 5 6

#22
# Matrix Arithmetic
mat1 <- matrix(1:4, nrow = 2)
mat2 <- matrix(5:8, nrow = 2)

# Matrix addition
sum_mat <- mat1 + mat2
print(sum_mat)


#23
# Matrix multiplication (element-wise)
prod_mat <- mat1 * mat2
print(prod_mat)

#24
#Performing Operations on Arrays
# Creating two 3x3x2 arrays
arr1 <- array(1:18, dim = c(3, 3, 2))
arr2 <- array(19:36, dim = c(3, 3, 2))

# Element-wise addition
sum_arr <- arr1 + arr2
print(sum_arr)

#25
# Element-wise multiplication
prod_arr <- arr1 * arr2
print(prod_arr)


#26
# Applying Functions to Arrays
# Creating an array
arr <- array(1:18, dim = c(3, 3, 2))

# Sum of all elements in the array
print(sum(arr))


#27
# Applying Functions to Arrays
# Creating an array
arr <- array(1:18, dim = c(3, 3, 2))
print(arr)
# Sum of all elements in the array
print(sum(arr))


#28
# Mean of all elements
print(mean(arr))

#29
# Apply function to each row (when margin = 1, function applied to row)
apply(arr, MARGIN = 1, FUN = sum)#(fun=sum means:both matrix's first row values added, this is 51, then 2nd then 3rd)

#30
# Apply function to each column (when margin = 2, function applied to column)
apply(arr, MARGIN = 2, FUN = mean) #(fun=mean means:both matrix's first column values added, then divided by 6, this is 6.5, then 2nd then 3rd)



#31

# Creating a simple data frame
df <- data.frame(
  ID = c(101, 102, 103, 104,105),
  Name = c("Armin", "Denji", "Irminsul", "Brawn","Aether"),
  Position = c(4, 28, 21, 15,27),
  Score = c(97.5, 46.5, 98.2, 76.0,20.0),
  Passed = c(TRUE, FALSE, TRUE, TRUE,FALSE)
)

# Print the data frame
print(df)

#32
# Accessing Elements in a Data Frame
# Access a single column
print(df$Score)  #case sensitive


#33
# Access a specific row (row 5)
print(df[5, ]) 

#34

# Access a specific element (Row 3, Column "Age")
print(df[3, "Age"])  


#35
# Access multiple columns
print(df[, c("Name", "Position")]) 

#36

# Access multiple rows
print(df[2:4, ])  #values from row 2 to 4


#37
# Add a new column 'Grade'
df$Grade <- c("A", "F", "A+", "C","F")
print(df)

#38
# Filter students who passed
passed_students <- df[df$Passed == FALSE, ]
print(failed_students)

#39
# Filter students with Score > 85
highest_scorers <- df[df$Score > 95, ]
print(highest_scorers)


#40
# Sorting by Score (Ascending)
df_sorted <- df[order(df$Score), ]
print(df_sorted)

#41

# Sorting by Position (Descending)
df_sorted_desc <- df[order(-df$Position), ]
print(df_sorted_desc)

#42
# Changing a value (Changing Aether’s Score to 80)
df$Score[df$Name == "Aether"] <- 80
print(df)

#43

# Renaming column names
colnames(df) <- c("Student_ID", "Student_Name", "Student_Position", "Exam_Score", "Status", "Final_Grade")
print(df)


#44
# Remove a column
df$Final_Grade <- NULL
print(df)

#45
# Remove a row (removing row 2)
df <- df[-2, ]
print(df)

#46
# Get summary statistics
summary(df)

#47
# Get structure of the data frame
str(df)



#48
# Creating a list with different data types
my_list <- list(
  Name = "Arisu",
  Age = 28,
  Scores = c(90, 88, 97),
  Passed = TRUE
)

# Print the list
print(my_list)

#49
# Access by index
print(my_list[[3]])  


#50
# Access by index name
print(my_list$Age) 

#51
# Access specific elements within a list item
print(my_list$Scores[3])

#52
# Change an element
my_list$Age <- 26
print(my_list$Age)  # Output: 26

#53
# Add a new element
my_list$Country <- "Japan"
print(my_list)

#54
# Remove an element
my_list$Passed <- NULL
print(my_list)

#55
# Creating a list with a matrix and a data frame
my_complex_list <- list(
  Numbers = c(1, 2, 3, 4),
  Matrix = matrix(1:9, nrow = 3),
  DataFrame = data.frame(ID = c(101, 102), Name = c("Bob", "Sentry"))
)

# Print the list
print(my_complex_list)

#56
# Access elements inside the matrix
print(my_complex_list$Matrix[2, 3])  # Access row 2, column 3

#57
list1 <- list(A = 1:5, B = "Merged List")
list2 <- list(C = c(TRUE, FALSE), D = matrix(1:4, nrow = 2))

# Merge lists
merged_list <- c(list1, list2)
print(merged_list)


#58
# Convert list to data frame
list_to_df <- data.frame(
  Name = c("Stein", "Rein"),
  Age = c(25, 27),
  Score = c(99, 72)
)

print(list_to_df)



#Exercise 1
scores <- c(54, 62,85,53, 83, 64, 99,74)  #numeric vector created:
print(min(scores)) #finding minimum
print(max(scores))  #finding maximum
print(mean(scores))#finding mean
print(median(scores))#finding median

cities <-c("Feni","Cox's Bazar","Sylhet","Uttara","Chennai")
print(cities)



#exercise 2

student_info <- list(
  name = "Ryuken",
  age = 31,
  grades = c(92, 88, 77)
)
print(student_info$age) #to extract the age
print(student_info$grades[2]) #to extract the 2nd grade


#exercise3

Matrix <- matrix(1:16, nrow = 4, byrow = TRUE) #4*4 matrix with 1-16 values
print(Matrix)
print(Matrix[3,])  #3rd row output
print(Matrix[,2]) #2nd column output
diagonal_matrix <-diag(Matrix)   #using diag func for diag values
print(diagonal_matrix)
print(sum(diagonal_matrix))  #sum of diag values


#exercise 4
students <-data.frame(
  Name=c("Alice", "Bob", "Charlie", "David"),
  
  Math=c(85, 78, 92, 88),
  
  English=c(90, 82, 95, 87)
)    #values assigned to dataframe
print(students) #printing data frame
str(students)# dataframe structure
print(students$English) #showing English column
students$Average <- rowMeans(students[, c("Math", "English")])  #rowmeans for showing avg of multi column values
print(students)



#exercise 5
blood_group <- factor(c("A", "B", "O", "AB", "A", "O"))
print(blood_group)  #when factor is printed, it shows ONLY the unique values as Levels
print(table(blood_group)) #table shows how many what there are


#exercise 6
class <- data.frame(
  Name = c("Mubtasim", "Bhuban", "Bruce", "Lois", "Mary"),
  Age = c(23, 25, 24, 35, 31),
  Gender = factor(c("Male", "Male", "Male", "Female", "Female"))
)
class$Scores <- list(
  c(85, 90, 88),  # Mubtasim
  c(78, 82, 75),  # Bhuban
  c(92, 95, 89),  # Bruce
  c(88, 87, 92),  # Lois
  c(71, 79, 74)   # Mary
)

print(class)
avg_scores <- sapply(class$Scores, mean) #sapply to find avg
avg <- class$Name[avg_scores > 80]  #find high avg than 80
print(avg)
print(table(class$Gender)) #number by gender
