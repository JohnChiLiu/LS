# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string 
# with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, 
# you should only have one space in the result (the result should never have consecutive spaces).

# Examples:

# cleanup("---what's my +*& line?") == ' what s my line '

# Question:
# Write a method that takes a string and returns the a new string with all of its non-alphabetic characters replaced by spaces.
# The resulting string should never have consecutive spaces.

# Input vs Output:
# Input: string
# Output: string

# Explicit vs Implicit Rules:
# Explicit:
# 1) Resulting string should never have consecutive spaces.
# Implicit:
# 1) We are returning a new string

# Algorithm:
# cleanup method

# 1) Initialize an empty variable 'result' with empty array
# 2) use gsub method to replace every non-alphabetical character with a space and set result to 'revised_str'
# 3) call chars method on 'revised_str' then call each method on the result
# 4) with do..end block of the each method, append every iterated element as long as its not already included in the LAST element
# in the array using last method
# 5) return 'result' while invoking join method

def cleanup(string)
  result = []
  revised_str = string.gsub(/[^a-z]/i, ' ')
  revised_str.chars.each do |char|
    result << char if result.last != char
  end
  result.join('')
end