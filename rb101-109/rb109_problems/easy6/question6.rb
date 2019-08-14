# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Example

# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# Question:
# Write a method that takes two arrays as inputs and returns a merged array.

# Input vs Output:
# Input: Array
# Output: Array

# Explicit vs Implicit Rules:
# Explicit:
# 1) the integers in the second array shouldn't repeat in the new array
# 2) We are returning a new array
# Implicit:
# N/A 

# Algorithm:
# merge method

# 1) initialize empty array called 'result'
# 2) we will have two arguments, arr1 and arr2
# 3) iterate through arr1 with each method and add each element to 'result'
# 4) iterate through arr2 with each method and add each element to 'result' if it's not included in 'result''

def merge(arr1, arr2)
  result = []
  
  arr1.each do |num|
    result << num
  end

  arr2.each do |num|
    result << num unless result.include?(num)
  end
  result
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
