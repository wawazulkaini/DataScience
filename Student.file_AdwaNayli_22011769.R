#Intro
View(student_data)
summary(student_data)
head(student_data, 15)
fail(student_data)????
  
  #filter
  1. Student fail
> Student_fail <- Student_fail <- student_data[student_data$final_exam_mark < 40,]
> View(Student_fail)

2. Arrange student data
> library("dplyr")
> library(readr)
> student_data <- read.csv("C:\Users\Auni\Downloads\Telegram Desktop\student_data.csv")
> mydata <- student_data %>% filter(final_exam_mark > 40) %>% arrange(final_exam_mark)
> View(mydata)
> mydata <- student_data %>% filter(final_exam_mark > 40) %>% arrange(desc(final_exam_mark)
                                                                      >View(mydata)
                                                                      
3. select
> mydata <- student_data %>% select(student_id, coursework_mark, final_exam_mark) 
> View(mydata)

>mydata2 <- student_data[ ,c("student_id", "coursework_mark", "final_exam_mark")]
>View(mydata2)

#Descriptive analysis

1. Array
str(data) #iris
>A <- c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
> quantile(A)
> sort(A)

2. Histogram
> hist (iris$Sepal.Length, 
        +       main= "Histogram of Sepal Length",
        +       xlab = "Sepal Length (cm)",
        +       ylab = "Frequency",
        +       col= "lightblue",
        +       border = "black")
3.boxplot
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab= "Species",
        ylab= "Sepal Length(cm)",
        col= c("lightgreen", "lightpink", "lightyellow"))
4.ScatterPlot
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length(cm)",
     col = as.numeric(iris$Species),
     pch=19)

legend("topleft",
       +        legend = levels(iris$Species),
       +        col = 1:3,
       +        pch =19)

#outliers
> dfplayers <- read.csv("C:/Users/HUAWEI/Downloads/players.csv")
> median_age <- median(dfplayers$Age, na.rm =TRUE)
> dfplayers$Age[dfplayers$Age < 18 | dfplayers$Age >38] <- median_age
> View(dfplayers)
#boxplot to see outliers
> data <- c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
> boxplot(data, main= "Boxplot")
#handling outlier
first_q <- quantile(data, 0.25)
third_q <- quantile(data, 0.75)
iqr <- IQR(data)
le=first_q - 1.5* iqr
ue =third_q + 1.5 *iqr

