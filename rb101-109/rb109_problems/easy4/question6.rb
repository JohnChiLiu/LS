# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# Question:
# Write a method that takes an array of numbers, and returns an array with the same number of elements, with each element containing the running total from the original Array.

# Clarification:
# 1) Are we returning the same array or a different array? Assume new array

# Input vs Output
# Input: array of integers
# output: array of integers (new array)

# Explicit vs Implicit Rules
# Explicit:
# 1) Elements within array are integers
# 2) Elements within output array are integers
# Implicit:
# 1) We are returning a new array. Might be useful to use map function.

# Algorithm:
# running_total method

# 1. Initialize a variable named 'sum' and set it to 0
# 2. invoke map method on the array. Within the do..block, invoke += method on sum and add number (sum += number)

def running_total(array)
  sum = 0
  array.map do |number|
    sum += number
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
