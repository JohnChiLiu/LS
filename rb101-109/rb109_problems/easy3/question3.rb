# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# Question:
# Write a method that asks user for an input of a string containing a word or multiple words and outputs number of characters in integer format.

# Explicit vs Implicit
# Explicit:
# 1. input is a string
# 2. string can contain multiple words separated by spaces or non-alphabetic numbers
# implicit:
# N/A

# Input vs Output
# Input: string
# output: integer

# Algorithm:
# word_count method

# 1. Print statement asking user to provide a word or multiple words
# 2. Retrieve user input using gets.chomp and set to variable 'phrase'
# 3. invoke delete method of phrase.downcase on non-alphabetical words (^a-z)
# 4. invoke chars method on phrase and invoke size method on result and set to variable = 'count'
# 5. invoke puts method on 'count'

def word_count
  puts "Please provide a word or multiple words"
  phrase = gets.chomp.to_s
  
  count = phrase.downcase.delete(' ').chars.size
  puts count
end

word_count