# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Question:
# Write a method that returns true if the string passed as an argument is a palindrome. Case mtters as does punctuation and spaces.

# Input vs Output
# Input: string
# output: boolean

# Clarification:
# 1) What happens if the string is empty?

# Explicit vs Implicit Rules:
# Explicit:
# 1) string must be a palindrome to return true
# 2) content within string can be integers or words
# Implicit:
# 1) palindrome is a word that is the same when read front and backwards

# Algorithm:
# palindrome? method

# 1) pass in argument and set it equal to argument invoking reverse method

def palindrome?(string)
  string == string.reverse!
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true