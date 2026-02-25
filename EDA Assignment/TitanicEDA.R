# ===============================
# TITANIC DATA CLEANING & EDA
# ===============================

# Install packages (run once only)
install.packages("dplyr")
install.packages("ggplot2")

# Load libraries
library(dplyr)
library(ggplot2)

# Load dataset
titanic <- read.csv("Titanic.csv")

# ===============================
# 1. BASIC EDA
# ===============================

head(titanic)
str(titanic)
colSums(is.na(titanic))
summary(titanic)

# ===============================
# 2. DATA CLEANING
# ===============================

# Convert categorical columns to factor
titanic$survived <- as.factor(titanic$survived)
titanic$pclass <- as.factor(titanic$pclass)
titanic$sex <- as.factor(titanic$sex)
titanic$embarked <- as.factor(titanic$embarked)

# Fill missing age with median
titanic$age[is.na(titanic$age)] <- median(titanic$age, na.rm = TRUE)

# Fill missing embarked with most common value
mode_embarked <- names(sort(table(titanic$embarked), decreasing = TRUE))[1]
titanic$embarked[is.na(titanic$embarked)] <- mode_embarked

# ===============================
# 3. ANALYSIS
# ===============================

# Overall survival rate
survival_rate <- mean(as.numeric(as.character(titanic$survived)))
print(paste("Overall Survival Rate:", round(survival_rate * 100, 2), "%"))

# Survival by gender
gender_survival <- titanic %>%
  group_by(sex) %>%
  summarise(Survival_Rate = mean(as.numeric(as.character(survived))))

print(gender_survival)

# Survival by class
class_survival <- titanic %>%
  group_by(pclass) %>%
  summarise(Survival_Rate = mean(as.numeric(as.character(survived))))

print(class_survival)

# ===============================
# 4. VISUALIZATIONS
# ===============================

# 1️ Survival Count
ggplot(titanic, aes(x = survived)) +
  geom_bar() +
  labs(
    title = "Survival Count",
    x = "Survived (0 = No, 1 = Yes)",
    y = "Count"
  )

# 2️ Survival by Gender
ggplot(titanic, aes(x = sex, fill = survived)) +
  geom_bar(position = "fill") +
  labs(
    title = "Survival Rate by Gender",
    y = "Proportion"
  )

# 3️ Survival by Passenger Class
ggplot(titanic, aes(x = pclass, fill = survived)) +
  geom_bar(position = "fill") +
  labs(
    title = "Survival Rate by Passenger Class",
    y = "Proportion"
  )

# 4️ Age Distribution
ggplot(titanic, aes(x = age)) +
  geom_histogram(bins = 30) +
  labs(
    title = "Age Distribution",
    x = "Age",
    y = "Count"
  )

# 5️ Fare vs Age
ggplot(titanic, aes(x = age, y = fare)) +
  geom_point(alpha = 0.6) +
  labs(
    title = "Fare vs Age",
    x = "Age",
    y = "Fare"
  )
