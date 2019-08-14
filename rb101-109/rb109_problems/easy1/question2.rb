# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# # Examples:

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true
# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# Problem: Write a method that takes an integer argument, which may be positive negative or zero and returns true if the number's absolute value is odd. 

# Question: 
# 1. What if there is no integer entered?
# 2. What if the input is 0?

# Input vs. Output
# Input: integer
# Output: Boolean

# Explicit Rules:
# 1. Cannot use odd? or even? methods in solution
# 2. last line of code within method should be a conditional

# Implicit Rules:
# 1. Absolute value means the positive value of the integer. To obtain absolute figure, square the number and raise to half power.

# Algorithm:
# is_odd? method

# 1. Determine if result is odd using modulo operator

# def is_odd?(integer)
#   integer % 2 == 1
# end

# p is_odd?(0)
