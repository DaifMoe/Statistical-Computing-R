# Part 1 Questions:

# Question 1 vector from 1 to 103 incremented by 3
nums = seq(1, 103, by=3)
print(nums)

# Question 2 add 4 to each value and store in a new vector
nums2 = nums + 4
print(nums2)

# Question 3 Remove the 8th value and store in a new vector
nums3 = nums2[-8]
print(nums3)

# Question 4 add the values 50 and 39 to the end of vector 3 and put in new vector
nums4 = c(nums3, 50, 39)
print(nums4)

# Question 5 find the sum of the elements from vector 4
sum_nums4 = sum(nums4)
print(sum_nums4)

# Question 6 find the length of vector in question 5
length_4 = length(nums4)
print(length_4)

# Part 2 Questions:
# Question 1 color vector
color.list = c("deepskyblue", "hotpink", "seagreen")
print(color.list)

# Question 2 numeric vector of length 100 (color.index)
color.index = rep(1:2, each = 50)
print(color.index)

# Question 3 new vector
color.vector = color.list[color.index]
print(color.vector)

# Question 4 numeric sequence 1-100
x = 1:100
y = rep(8, 100)
length(x) 
length(y)

# Question 5 1 × 8 + 2 × 8 + 3 × 8 + ... + 100 × 8. You should get 40400.
sum_of_calculation = sum(x * y)
print(sum_of_calculation)

# Question 6 Create a scatter plot using the vectors in step 4. Vector x should be on the x-axis; vector y should be on the y-axis.
plot(x, y, col = color.vector)

# Question 7 Do the scatter plot from step 6 again, but add these arguments: set xlab and ylab to NA, set type to "h", set ylim to c(5,9)
plot(x, y, col = color.vector, 
     xlab = NA, ylab = NA, 
     type = "h", ylim = c(5, 9))

# Part 3 Questions 
mean(mtcars$mpg)

# Question 1
mtcars$model = row.names(mtcars)

# Question 2 print model and transmission type of the first car
print(mtcars$model[1])
print(mtcars$am[1])

# Question 3 Print out the model and am of the first, second, and 10th car.
cat(mtcars$model[1], mtcars$am[1])
cat(mtcars$model[2], mtcars$am[2])
cat(mtcars$model[10], mtcars$am[10])


# Question 4 print out am and mph of Toyota Corona
subset(mtcars, model == "Toyota Corona", select = c("am", "mpg"))

# Question 5 print the model of all automatic cars
automatic_cars = subset(mtcars, am == 0)
automatic_cars$model

# Question 6 Print the model of all of the cars whose weight is more than 5.
heavier_than5 = subset(mtcars, wt > 5)
heavier_than5$model

# Question 7 Print the model and mpg of all the cars whose mpg is less than 16. 
low_mpg_cars = subset(mtcars, mpg < 16)
result = data.frame(Model = low_mpg_cars$model, MPG = low_mpg_cars$mpg)
print(result)



