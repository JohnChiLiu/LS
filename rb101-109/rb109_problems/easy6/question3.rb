# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, 
# and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. 
# For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it 
# takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits 
# specified as an argument. (The first Fibonacci number has index 1.)

# Examples:

# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

# You may assume that the argument is always greater than or equal to 2.

# Question:
# Write a method that calculates and returns the index of the first fibonacci number that has the number of digits
# specified as an argument.

# Input vs Output:
# Input: Integer
# Output: Integer

# Explicit vs Implicit Rules:
# Explicit:
# 1) We are returning the index number of where number of digits specified as an argument.
# Implicit:
# 1) we need to first calculate the fibonnaci sequence.

# Algorithm:
# find_fibonacci_index_by_length method
# 'integer' is the input argument

# 1. set 'array' = [1,1]
# 2. set 'index' = 2
# 3. set a loop that calculates the sum of last two elements of array 
# a. every iteration, index + 1
# b. array << (array[-1] + array[-2])
# 4. break when array.last.to_s.size == 'integer'
# 5. once out of loop, return index

def find_fibonacci_index_by_length(integer)
  array = [1,1]
  index = 2
  
  loop do
    index += 1
    array << (array[-1] + array[-2])
    break if array.last.to_s.size == integer
  end
  
  index
end