# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# Question:
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.

# Input vs Output:
# Input:
# 1) String
# Output:
# 1) Integer

# Explicit vs Implicit Rules:
# Explicit:
# 1) We use string#ord to calculate ascii value of a character. This means that we need to have individual characters derived
# from the string
# Implicit:
# N/A

# Algorithm:
# ascii_value method

# 1) Pass in variable 'string' as an argument
# 2) Initialize local variable 'result' and set it to Integer value 0
# 3) Invoke string#chars method on 'string' and invoke each method on the result
#   a. Within do..end block, reassign 'result' with += and add each iterated element's string#ord integer value
# 4) return result on last line of method

def ascii_value(string)
  result = 0
  string.chars.each do |char|
    result += char.ord
  end
  result
end
