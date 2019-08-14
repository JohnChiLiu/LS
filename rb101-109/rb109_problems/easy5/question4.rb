# Letter Swap
# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

# Examples:

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# Question:
# Write a method that takes a string and returns a string in which all the wors have their first and last letter switched.

# Input vs Output:
# Input: string
# Output: string

# Clarification:
# 1) Are we returning a new string or the original string?

# Explicit vs Implicit Rules:
# Explicit:
# 1) the first and last letter of each word will be swapped
# Implicit:
# N/A 

# Algorithm:
# swap method

# 1. Invoke split method on the 'string'
# 2. invoke map method on 'string' and set it to variable 'result'
# 3. within the do..end block, element[0], element[-1] = element[-1], element[0]
# 4. invoke join method on 'result'

def swap(string)
  result = string.split(' ').map do |ele|
    ele[0], ele[-1] = ele[-1], ele[0]
    ele
  end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'