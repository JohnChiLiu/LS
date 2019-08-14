# Write a method that takes an array of strings, and returns an array of the same string values, 
# except with the vowels (a, e, i, o, u) removed.

# Example:

# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Question:
# Write a method that takes an array of strings, and returns an array of the same string values, except with vowels removed.

# Input vs Output:
# Input: array of strings
# Output: array of strings

# Clarification:
# 1) are we returning the same array of strings?

# Explicit vs Implicit Rules:
# Explicit:
# 1) We are removing vowels (uppercase or lower case)
# 2) We are returning an array with the same structure
# Implicit:
# 1) case doesn't matter

# Algorithm:
# remove_vowels method

# 1) invoke map method on 'array'
# 2) within the do..end block, invoke gsub method on element and replace it with ''

def remove_vowels(array)
  array.map do |word|
    word.gsub(/[aeiouAEIOU]/i, '')
  end
end
