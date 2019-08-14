# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# Question:
# Write a method that takes two arguments both strings, and determines the longer of the two strings and returns the result of concatenating hte shorter string, longer string, and shorter string.

# Clarification:
# 1) Are we returning a new string?

# Input vs Output
# Input: two strings
# Output: one string (new?)

# Explicit vs Implicit
# Explicit:
# 1) two arguments taken are inputs
# 2) output is a string that concatenates the two strings - long short long
# Implicit:
# 1) We are returning a new string

# Algorithm:
# short_long_short method

# 1. We must determine which string is shorter or longer by comparing their sizes of the strings. whichever is shorter is the string that goes between two long strings
# 2. create if..else statement to return two different scenarios of string combinations

def short_long_short(str1, str2)
  if str1.size > str2.size
    return str2 + str1 + str2
  else
    return str1 + str2 + str1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"