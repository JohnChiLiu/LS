# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# Question:
# Write a method that takes in a string and returns boolean after determining if it's a palindrome.

# Input vs Output
# Input: string
# output: boolean

# Explicit vs Implicit Rules:
# Explicit:
# 1) string is case sensitive when determining if it's a palindrome
# 2) Only alphanumerics in the string
# Implicit:
# 1) palindrome is when letters are same reversed and forwards
# 2) Goal is to manipulate string so all the cases are lowercase and all non-alphanumeric items are out

# Algorithm:
# p real_palindrome? method

# 1. call downcase method on string argument.
# 2. call gsub method and substitute out all nonalphanumeric
# 3. determine if string == string.reverse as last line of code

def real_palindrome?(string)
  string.downcase.gsub(/[^a-z0-9 ]/i, '')
  string == string.reverse
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
