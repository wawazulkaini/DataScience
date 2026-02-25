#1.1
data <- c("East", "West", "East", "North", "North", "East", "West", "West", "West")
print(data)
factor_data <- factor(data)
print(factor_data)
print(is.factor(factor_data))
length(factor_data)

#1.2
data <- factor(c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North"))
data[3]

#1.3
data <- factor(c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North"))
data [3] <- "NorthWest"

#1.4
data <- c("East", "West", "East", "North", "North", "East", "West", "West", "West", "East", "North"))
factor_data <- factor(data)
print(factor_data)
new_order_data <- factor(factor_data, levels = c("East", "West", "North"))
print(new_order_data)

#1.5
v <- gl(3, 4, labels = c("Tampa", "Seattle", "Boston"))
print(v)

#2.1
M <- matrix(c(3:14), nrow = 4, byrow = TRUE) # : is colon operator to define any column or row
print (M)
N <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(N)
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list (rownames, colnames))
print(P)

#2.2
#define column row and name
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")
#create the matrix
P <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list (rownames, colnames))
print(P[1,3]) # so it will print row 1 , column 3
print(P[4,2]) # 4th row, 2nd column
print(P[2,]) # all 2nd row
print(P[,3]) # all 3rd column

#2.3
matrix1 <- matrix(c(3,9,-1,-4,2,6), nrow = 2) #nrow tu is number of row
print(matrix1)
matrix2 <- matrix(c(5,2,0,9,3,4), nrow = 2)
print(matrix2)
#add the matrices
result <- matrix1 + matrix2
cat("Result of addition", "\n")
print(result)
#substract the matrices
result <- matrix1 - matrix2
cat("Result in subtraction", "\n")
print(result)

#3.1
#create 2 vector of different length
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
#take these vectors as input to the array
result <- array(c(vector1, vector2),dim = c(3,3,2))
print(result)

#3.2
#create 2 vector of different length
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1", "COL2", "COL3")
row.names <- c("Matrix1", "Matrix2")
#take these vector as input to the array
result <- array(c(vector1, vector2), dim = c(3,3,2), dimnames = list(row.names,column.names,matrix.names))
print(result)

#exercise 1
#age = c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)
age = c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)
rownames = c("50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60")
colnames = c("Staff Age", "Total number of staff")
age_factor <- factor(age) # factor treat value as categories so need to use vector because the question ask to use factor
result <- as.data.frame(table(age_factor))
#Count how many times each age appears, convert it into a dataframe, and save it as result.
#table() → count
#as.data.frame() → make it look like proper table
#<- → save it
colnames(result) <- c("Staff Age", "Total Number of Staff")
print(result)

#exercise 2
#V1 = c(2,3,1,5,4,6,8,7,9)
matrix1 <- matrix(c(2,3,1,5,4,6,8,7,9), nrow = 3)
rownames(matrix1) = c("row1", "row2", "row3")
colnames(matrix1) = c("col1", "col2", "col3")
print(matrix1)
matrix2 <- t(matrix1) # t is for transpose, so meaning here matrix 1 is transpose 
print(matrix2)

















