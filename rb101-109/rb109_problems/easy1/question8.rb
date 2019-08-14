# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

# Examples:

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.

# Question:
# Write a method that takes an array and returns the average of all numbers in the array

# Clarification:
# 1. array will never be empty
# 2. numbers will always be positive integers

# input vs output:
# input: array
# output: integers

# explicit vs implicit
# explicit:
# 1. we are returning a value that is the average of all the numbers inthe array

# Algorithm:
# average method

# 1. Create a method definition passing in one argument which is an array
# 2. invoke inject method on array and set it equal to variable 'sum'
# 3. divide 'sum' by size of array and set it to variable 'average'
# 4. return 'average'

def average(array)
  sum = array.inject(:+)
  average = sum / array.size
  average
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.