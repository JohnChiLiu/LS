# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# Examples

# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# Question:
# Write a method that takes a string and converts it to an integer while keeping its sign (+ or -)

# Input vs Output:
# Input: String
# Output: Integer

# Explicit vs Implicit Rules:
# Explicit: 
# 1) signed strings carry onto its integer conversion
# Implicit:
# n/a

# Algorithm:
# string_to_signed_integer method

# 1. initialize a variable 'sign' with an empty string.
# 2. start an if..else statement
#   a1. if first character of string is '-', use slice method to modify string and add it to 'sign'
#   a2. concatenate 'sign' with 'string_to_integer' method on the string to get the return value and concatenante. 
#   b1. if first character of string is '+', use slice method to modify string.
#   b2. run 'string_to_integer'
#   c1. else, just run 'string_to_integer'

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

def string_to_integer(string)
  hash = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
  }

  characters = string.chars
  result = characters.map do |char|
    hash[char]
  end
  result.inject {|a,i| a*10 + i}
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100