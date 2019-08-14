# In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

# Examples

# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# Question:
# Write a method that takes an number in integer form and returns the number in string form.

# Input vs Ouptut:
# Input: Integer
# Output: String

# Explicit vs Implicit Rules 
# Explicit:
# 1) We cannot use to_s
# Implicit:
# N/A

# Algorithm:
# integer_to_string method

# 1) create an 'array' that contains all numbers in digit form (0 to 9)
# 2) initialize a variable called 'result' that is an empty string
# 3) create a loop do 
#   number, remainder = number.divmod(10)
# 4) add remainder to 'result' while using 'array[remainder]'
# 5) break out of loop if number cannot be divided anymore. so when number == 0
# 6) return result to get the string

def integer_to_string(integer)
  array = ['0','1','2','3','4','5','6','7','8','9']
  result = ''
  loop do
    integer, remainder = integer.divmod(10)
    result.prepend(array[remainder])
    break if integer == 0
  end
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'