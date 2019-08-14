# The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both operands are falsey. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

# Examples:

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

# Question:
# Write a method that takes two arguments, and returns true if exactly one of its arguments are truthy.

# Input vs output
# Input: two arguments, both integers
# Output: boolean

# Explicit vs Implicit
# Explicit:
# 1. Two arguments are integers
# Implicit:
# n/a

# Algorithm:
# xor? method

# 1. create an if else statement
# 2. if argument 1 is true && argument 2 is false, return true
# 3. elsif argument 1 is false && argument 2 is true, return true

def xor?(num1,num2)
  if num1 == true && num2 == false
    return true
  elsif num1 == false && num2 == true
    return true
  else
    return false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false