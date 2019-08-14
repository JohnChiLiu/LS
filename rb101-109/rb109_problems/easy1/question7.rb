# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

# Question:
# Write a method that takes one argument that's a postive integer, and outputs a string of alternating 1s and 0s, always starting with 1. the length of the string should match the given integer.

# Clarification:
# 1) If i put stringy(0), does it output '1'?
# 2) What would be output if there's no argument input?

# Input vs output
# input: integer
# output: string

# Explicit vs Implicit
# Explicit:
# 1) string always starts with 1
# Implicit:
# 1) outputs a string

# Algorithm:
# stringy method

# 1. create a variable pointing to an empty string object called 'result'
# 2. invoke times method on integer
# 3. within do..end block, create an if else statement.
#   a. if index is even, push '1' to 'result'
#   b. if index is odd, push '0' to 'result'
# 4. return 'result' on the last line of code

# def stringy(integer)
#   result = ''

#   integer.times do |idx|
#     if idx % 2 == 0
#       result << '1'
#     elsif idx % 2 == 1
#       result << '0'
#     end
#   end

#   result
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# Further exploration:
# Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(integer,default=1)
  result = ''

  if default == 0
    integer.times do |idx|
      if idx % 2 == 0
        result << '0'
      elsif idx % 2 == 1
        result << '1'
      end
    end
  else
    integer.times do |idx|
      if idx % 2 == 0
        result << '1'
      elsif idx % 2 == 1
        result << '0'
      end
    end
  end
  result
end

puts stringy(6,1) 
puts stringy(9,1) 
puts stringy(4,1) 
puts stringy(7,0) 