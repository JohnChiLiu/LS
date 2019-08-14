# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Examples:

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# Question:
# Write a method that takes an array and returns an array that contains elements in the even indices.

# Clarification:
# 1) Are we returning the same array or a new array?

# Input vs Output
# Input:
# 1. Array
# Output:
# Array

# Explicit vs Implicit Rules:
# Explicit:
# 1) elements that are in the even indices in the original array will be returned in the answer
# Implicit:
# 1) elements can be integers, strings

# Algorithm:
# oddities method

# 1. Initialize variable 'result' as an empty array
# 2. call each_with_index method on array
# 3. create a conditional that appends element to 'result' if index is even
# 4. return 'result' on last line of method

def oddities(array)
  result = []
  array.each_with_index do |ele, idx|
    if idx % 2 == 0
      result << ele
    end
  end
  result
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []