# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Question:
# Write a method that asks for user input as a string. The output would be a string.

# Explicit vs Implicit
# Explicit:
# 1. there is a conditional that determines whether or not output of method will capitalize all letters of the words
# Implicit:
# 1. use upcase method

# Input vs. output
# Input: user input
# output: string interpolation

# Algorithm:
# shout_name method

# 1. print out a message that asks user to input name and set it to variable 'name'
# 2. intialize variable 'message' and set it to a statement
# 3. if..else statement
#   a. if name includes an exclamation mark, print message with upcase
#   b. if not, print message without upcase

def shout_name
  puts "What is your name?"
  name = gets.chomp

  message = "Hello #{name}"

  if name[-1] == '!'
    puts "#{message} Why are we screaming?".upcase
  else
    puts message + "."
  end
end

shout_name