# : is colon operator or range
#1.1
emp.data <- data.frame(
  emp_id = c(1:5), #meaning ada 5 row like 1 until 5 row so nama and salary pun kena ada 5 variables
  emp_name = c("Izzatul", "Dhiya", "Najla", "Hourun", "Farhah"),
  salary = c(623.3,515.2,611.0,729.0,843.25)
)

View(emp.data) #nak tengok table

#1.2
my_matrix <- matrix(c(1,2,3,4,5,6), nrow=2) #nrow = 2 meaning just ada 2 row . so 123 (row1) 456(row ke2) ; meaning here ada 3 column
print(my_matrix)
df_from_matrix <- data.frame(my_matrix)
print(df_from_matrix)
names(df_from_matrix) <- c('col_1', 'col_2', 'col_3')
print(df_from_matrix)

View(my_matrix)

#1.3
my_list <- list(rating=1:4,
                animal=c('koala', 'hedgehog', 'sloth', 'panda'),
                country=c('Australia', 'Italy', 'Peru', 'China'),
                avg_sleep_hours=c(21,18,17,10))
print(my_list)
super_sleepers <- data.frame(my_list)
print(super_sleepers)

View(super_sleepers)

#2.1
print(emp.data)

#2.2
str(emp.data) #nak tau data type of each column

#2.3
print(summary(emp.data)) #summary ni give whole description of the data

#2.4
print(dim(emp.data)) #tell number of row and column
print(ncol(emp.data)) #tell number of column
print(nrow(emp.data)) #tell number of row

#3.1
print(emp.data$salary) #tell salary in one line je 
print(emp.data[["salary"]]) #sama je output macam atas cuma cara tulis code dia je beza
print(emp.data[3]) #print column ke 3 which is in this case is salary , kalau letak 2 , nanti print name

#3.2
result <- emp.data[1:2,] #just print row 1-2 je , row lain tak print
print(result)
View(result)

#4.1
#add the "department" column
emp.data$department <- c("IT", "Operations", "IT", "HR", "Finance")
v <- emp.data
print(v)
View(v)

#create new data frame and add the "start_date" column
emp.newdata <- cbind(emp.data, 
                     start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")))
print(emp.newdata) #boleh je nak buat column baru macam coding department tu(tak guna cbind). yang ni guna cbind sebab dia namakan dataframe tu newdata, so kena cbind untuk combinekan column emp.data dengan emp.newdata

#4.2
#create the second data frame
emp.newdata <- data.frame(
  emp_id = c (6:8),
  emp_name = c("Zaza","Alysha","Sofia"),
  salary = c(578.0,722.5,632.8),
  dept = c("IT","Operations","Finance")
)
# Bind the two data frames.
emp.finaldata <- rbind(emp.data,emp.newdata)
print(emp.finaldata)

#4.2
# Remove the second row and first column
result <- emp.data [-c(2), -c(1)]
print(result)


#ACTIVITY
newData <- data.frame(
  #id = c(1:7), #meaning ada 7 row like 1 until 7 row  
  name = c("Anastasia", "Dima", "Michael", "Matthew", "Laura", "Kevin", "Jonas"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1,3,2,3,2,1,2)
)

print(newData)
View(newData)

#add new column
newData$qualify <- c("yes", "no", "yes", "no", "no", "no", "yes")
print(newData)
View(newData)

#add new row
new.newData <- data.frame(
  name = c("Emily"),
  score = c(14.5),
  attempts = c(1),
  qualify = c("yes")
)

finalData <- rbind(newData, new.newData) #combine the data
print(finalData)

str(finalData)
summary(finalData)
nrow(finalData)
ncol(finalData)
dim(finalData)
