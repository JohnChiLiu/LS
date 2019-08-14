# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Examples:

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Question:
# Write a method that takes an argument as a positive integer, and returns a list of the digits in the number.

# Input vs. Output:
# Input: integer
# output: Array

# Questions:
# 1. What if no number is entered?
# 2. What if 0 is entered?

# Explicit Rules:
# 1. Integer has to be positive
# 2. Output has to be an array containing integers
# 3. Cannot accept negative numbers, zeroes, strings, or hashes.
# Implicit:
# 1. Returns digits of integer in a new array

# Algorithm:
# digit_list method

# 1. convert integer into string
# 2. convert string into characters using chars method, which essentially iterates through the string and returns its characters in an array. this is a new object
# 3. transform new array of string characters and convert all strings to integers using map method. set this result to a brand new variable.
# 4. return this new variable of integers on last line of code. thsi will be the return value

def digit_list(integer)
  integer = integer.to_s
  new_array = integer.chars.map {|char| char.to_i}
  new_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]    
puts digit_list(7) == [7]                    
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]    