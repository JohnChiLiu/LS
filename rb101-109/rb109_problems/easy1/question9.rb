# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# Question:
# Write a method that takes a positive integer as an argument and returns the sum of its digits

# Clarification:
# N/A

# Explicit vs Implicit
# Explicit:
# 1. Input is an integer
# 2. Output is an integer

# Algorithm:
# sum method

# 1. Create a method definition 'sum'
# 2. set variable 'sum' to input and invoke to_s method
# 3. invoke chars method (adding onto to_s)
# 4. transform using map
# 5. within do..end block, invoke to_i.
# 6. call inject method on 'sum' and set it to variable 'result'
# 7. return 'result'

def sum(integer)
  sum = integer.to_s.chars.map do |num|
    num.to_i
  end

  result = sum.inject(:+)
  result
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45 
# The tests above should print true.