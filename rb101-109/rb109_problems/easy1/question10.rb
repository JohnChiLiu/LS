# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

# Question: Write a method 'calculate_bonus' that takes two inputs, a number and a boolean. the method outputs an integer.

# Clarification:
# N/A

# Explicit vs Implicit
# Explicit:
# 1. 1st argument is always a positive integer
# 2. 2nd argument is always a boolean

# Input vs output
# input: integer, boolean
# output: integer

# Algorithm:
# calculate_bonus method

# 1. define a method definition 'calculate_bonus' with two inputs, 'integer' and 'boolean'
# 2. create a ternary operator
#   a. boolean == true ? integer * 0.5 : 0
# 3. end the method

def calculate_bonus(integer,boolean)
  boolean == true ? integer * 0.5 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# The tests above should print true.