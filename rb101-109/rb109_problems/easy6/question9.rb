# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false

# Question:
# Write a method named 'include?' that takes in an array and a search value and returns a boolean if search value is inside the array.

# Input vs Output:
# Input: an array and a search value
# Output: boolean

# Explicit vs Implicit Rules:
# Explicit:
# 1) can't use include?
# 2) returning boolean
# Implicit:
# 1) We can include any type of object in array and search value

# Algorithm:
# include? method

# 1) we have two arguments, 'array' and 'value'
# 2) invoke each method on 'array', return true if ele == value
# 3) return false on last line of code

def include?(array, value)
  array.each do |integer|
    return true if integer == value
  end
  return false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false