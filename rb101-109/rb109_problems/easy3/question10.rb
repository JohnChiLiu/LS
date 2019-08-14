# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

# Examples:

# palindromic_number?(34543) == true
# palindromic_number?(123210) == false
# palindromic_number?(22) == true
# palindromic_number?(5) == true

# Question:
# Write a method that takes an integer and sees if it's a palindrome, that is if the integers are the same in both directions.

# Input vs Output:
# Input: Integer
# Output: Boolean

# Explicit vs Implicit Rules
# Explicit:
# 1) the argument should be an integer
# 2) the output should be a boolean
# Implicit:
# 1) an integer palindrome is the same as a string palindrome

# Algorithm:
# palindromic_number? method

# 1. first, convert integer into a string using to_s and set it to variable 'string'
# 2. then see if 'string' == 'string'.reverse

def palindromic_number?(integer)
  string = integer.to_s
  string == string.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true