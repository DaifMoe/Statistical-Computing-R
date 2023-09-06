# Question 1: Vector that stores the GPA values
gpas = c(3.62, 3.84, 3.95, 4.00, 3.12, 2.86, 3.77, 2.53, 3.26, 2.90)

# Question 2: Check and Print the values that are greater than 3.5
above_3.50 = which(gpas > 3.50)
print (above_3.50)

# Question 3: Checking the number of students, the max GPA, and the student with the max GPA
num_students = length(gpas)
cat("The Total Number of Students:", num_students, "\n")

max_gpa = max(gpas)
cat("The Maximum GPA possible is:", max_gpa, "\n")

student_max_gpa = which.max(gpas)
cat("The Student with Maximum GPA value is:", student_max_gpa, "\n")

# Question 4: Finding the average GPA
avg_gpa = mean(gpas)
cat("The Average GPA is:", avg_gpa, "\n")

# Question 5: Creating a vector for the SAT Scores
sat_scores = c(640, 680, 790, 730, 580, 560, 670, 450, 650, 490)

# Question 6: Finding the average SAT Score from the set
avg_sat_score = mean(sat_scores)
cat("The Average SAT Score is:", avg_sat_score, "\n")

# Question 7: Printing out the SAT Scores for the second and third students
print(sat_scores[2:3])

# Question 8: Printing the SAT Scores for students with a GPA more than 3.5
sat_above_3.50 = sat_scores[above_3.50]
print(sat_above_3.50)

# Question 9: Creating the Gender Vector
gender = c(1, 1, 1, 0, 0, 0, 0, 0, 1, 1)

# Question 10: Finding the Proportion of Males
prop_male = mean(gender)
cat("The Proportion of Male Students is:", prop_male, "\n")

# Question 11: Creating a Scatter Plot of the GPA and SAT score with gender based colors
plot(gpas, sat_scores, col = ifelse(gender == 1, 
'blue', 'pink'), pch = 16, xlab = 'GPA', ylab = "SAT Quantative Score")

# Question 12: Calculate the average GPA values for the male and female students
avg_gpa_males = mean(gpas[gender == 1])
cat("The Average GPA for Male Students is:", avg_gpa_males, "\n")

avg_gpa_females = mean(gpas[gender == 0])
cat("The Average GPA for Female Students is:", avg_gpa_females, "\n")

