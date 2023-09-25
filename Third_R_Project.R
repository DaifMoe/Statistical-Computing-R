# Part 1 Questions: 

# Question 1: Create a data frame that stores the above information. 
# Check that the dimension of the data frame is (10, 3).
gpas = c(3.62, 3.84, 3.95, 4.00, 3.12, 2.86, 3.77, 2.53, 3.26, 2.90)
sats = c(640, 680, 790, 730, 580, 560, 670, 450, 650, 490)
gender = c(1, 1, 1, 0, 0, 0, 0, 0, 1, 1)

student_data = data.frame(gpas_score = gpas, sats_scores = sats, male = gender)
dim(student_data)

# Question 2:  Create a factor vector that stores the year of
# students. Use R to double check that its type is factor.
year = factor(c("Senior", "Freshman", "Sophomore", "Freshman", "Junior", 
                 "Sophomore", "Sophomore", "Freshman", "Freshman", "Senior"))
typeof(year)

# Question 3:  Add the year vector in 2 to the data frame you have created in 1
student_data$Year = year

# Question 4: here we are renaming the variables and printing the data frame
colnames(student_data) = c("GPA_score", "SAT_score", "Male", "Year")
print(student_data)

# Question 5: Using the tapply function for getting the number of students in each year
tapply(student_data$Year, student_data$Year, length)

# Question 6: Here we calculate the average SAT score and the average GPA
meanSAT = mean(student_data$SAT_score)
meanGPA = mean(student_data$GPA_score)
variables = colnames(student_data)
data_list = list(meanSAT = meanSAT, meanGPA = meanGPA, variables = variables, data = student_data)

# Question 7: Getting the GPA and year of the 3rd student in the data frame.
third_student = student_data[3, c("GPA_score", "Year")]

# Question 8: Scatter Plot of the data for 10 college students
plot(student_data$GPA_score, student_data$SAT_score, 
     col = ifelse(student_data$Male == 1,
                  "seagreen", "hotpink"),
     pch = 19, xlab = "GPA", 
     ylab = "SAT score", 
     main = "Data for 10 college students")

# Part 2 Questions:

# Question 1: How many variables are recorded in the dataset and printing their names.
dataset.salaries = read.csv("salaries-by-college-type-clean.csv")
head(dataset.salaries)

num_variables = ncol(dataset.salaries)
print(num_variables)

variable_names = names(dataset.salaries)
print(variable_names)

# Question 2: Print the names of the 3rd, 4th, and 10th school.
school_names = dataset.salaries$School.Name[c(3, 4, 10)]
print(school_names)

# Question 3: Print all the info of the 3rd, 4th, and 10th schools.
school_info = dataset.salaries[c(3, 4, 10), ]
print(school_info)

# Question 4: Calculate the average Starting.Median.Salary of the first 20 schools.
avg_starting_salary = mean(dataset.salaries$Starting.Median.Salary[1:20])
print(avg_starting_salary)

# Question 5: Which school has the highest Starting.Median.Salary? Print out all information of this school.
highest_salary_school = dataset.salaries[which.max(dataset.salaries$Starting.Median.Salary), ]
print(highest_salary_school)

# Question 6: Print out the names of schools with a Starting.Median.Salary of 65,000 or greater.
starting_salary_65000 = dataset.salaries$School.Name[dataset.salaries$Starting.Median.Salary >= 65000]
print(starting_salary_65000)

# Question 7: Print out the names of schools with a Starting.Median.Salary of 65,000 or greater 
# OR with a Mid.Career.Median.Salary of 130,000 or greater.
starting_salary_65000_or_midcareer_130000 = dataset.salaries$School.Name[
  dataset.salaries$Starting.Median.Salary >= 65000 | dataset.salaries$Mid.Career.Median.Salary >= 130000]
print(starting_salary_65000_or_midcareer_130000)

# Question 8: Print out the names of schools with a Starting.Median.Salary of 65,000 or greater 
# AND with a Mid.Career.Median.Salary of 130,000 or greater.
starting_salary_65000_or_midcareer_130000 = dataset.salaries$School.Name[
  dataset.salaries$Starting.Median.Salary >= 65000 & dataset.salaries$Mid.Career.Median.Salary >= 130000]
print(starting_salary_65000_or_midcareer_130000)

# Question 9: Print out the names of schools with a Starting.Median.Salary between 55,000 and 60,000.
salary_between_55000_and_60000 = dataset.salaries$School.Name[
  dataset.salaries$Starting.Median.Salary >= 55000 & dataset.salaries$Starting.Median.Salary <= 60000]
print(salary_between_55000_and_60000)

# Question 10: Print out the names of 'Party' or 'Engineering' schools.
party_or_engineering_schools = dataset.salaries$School.Name[
  dataset.salaries$School.Type %in% c("Party", "Engineering")]
print(party_or_engineering_schools)
