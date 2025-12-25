#List of required packages
packages <- c("caret", "rpart" )

# Install any packages that are not already installed
installed_packages <- rownames(installed.packages())
for (pkg in packages) {
  if (!(pkg %in% installed_packages)) {
    install.packages(pkg)
  }
}

data(iris)
head(iris)

library(caret)


#1; Split Data into Training and Testing
set.seed(123)   #Using the same seed guarantees the same train-test split every time.
 
trainIndex <- createDataPartition(iris$Species, p = 0.7, list = FALSE)  #Splits the data stratified by class (Species).   p = 0.7 → 70% training, 30% testing.   Maintains class balance in both sets.
trainData <- iris[trainIndex, ]
testData  <- iris[-trainIndex, ]   #Creates training and testing datasets.


#2;Build a Classification Model (Decision Tree)

library(rpart)    #package used to build decision trees.

model_dt <- rpart(Species ~ ., data = trainData, method = "class")   #Trains a decision tree classifier.  Species ~ . means:Species is the target variable.   (.) represents all other predictors.   method = "class" specifies classification (not regression).
print(model_dt)   #Displays the tree structure (splits, nodes, and rules).
  

#3; Prediction matrix
pred_dt <- predict(model_dt, newdata = testData, type = "class")  #Uses the trained model to predict species for test data.   type = "class" returns class labels instead of probabilities.
head(pred_dt)
 

#4; confusion Matrix
conf_mat <- confusionMatrix(pred_dt, testData$Species)   #Compares predicted labels with actual labels.
conf_mat

#5; Accuracy
accuracy <- conf_mat$overall['Accuracy']    #Extracts overall classification accuracy.
accuracy


#6; To demonstrate logistic regression, we will classify whether a flower is setosa or not setosa.

iris_bin <- iris  #Creates a copy of the dataset.
iris_bin$IsSetosa <- ifelse(iris_bin$Species == "setosa", "Yes", "No")   #Converts multi-class problem into binary classification;checking if setosa or not
iris_bin$IsSetosa <- as.factor(iris_bin$IsSetosa)  #Converts target variable to a factor (required for classification).

set.seed(123)
trainIndex2 <- createDataPartition(iris_bin$IsSetosa, p = 0.7, list = FALSE)   #Stratified split based on binary target.
trainData2 <- iris_bin[trainIndex2, ]
testData2  <- iris_bin[-trainIndex2, ]   #Creates training and testing datasets.

model_log <- glm(IsSetosa ~ Sepal.Length + Sepal.Width, 
                 data = trainData2, 
                 family = binomial)  #Fits a logistic regression model.  Uses only Sepal.Length and Sepal.Width as predictors.  family = binomial specifies binary classification.

summary(model_log)   #Displays: Coefficients, Statistical significance,Model diagnostics


#7;  Predictions and Evaluation (Logistic Regression)
prob <- predict(model_log, newdata = testData2, type = "response")   #Predicts probabilities between 0 and 1.
pred_log <- ifelse(prob > 0.5, "Yes", "No")   #Converts probabilities into class labels using a 0.5 threshold.
pred_log <- as.factor(pred_log)   #Converts predictions into a factor.

confusionMatrix(pred_log, testData2$IsSetosa)   #Evaluates logistic regression performance.
