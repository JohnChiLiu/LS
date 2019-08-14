# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

# Examples

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

# Question:
# Write a method that takes a number and convert it to a string representation and showing the sign.

# Input vs Output
# Input: integer
# Output: String

# Explicit vs Implicit
# Explicit:
# 1) positive integers will result in a string representation alongside a '+'
# 2) negative integers will result in a string representation alongside a '-'

# Algorithm:
# signed_integer_to_string(number)

# 1. if the number starts with 0, return 0
# 2. if the number is greater than 0, add '+' and invoke integer_to_string to input
# 3. if the number is less than 0, add '-' and invoke integer_to_string to input


def signed_integer_to_string(integer)
  if integer == 0
    return '0'
  elsif integer > 0
    '+' + integer_to_string(integer)
  elsif integer < 0
    '-' + integer_to_string(integer)
  end
end

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

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

