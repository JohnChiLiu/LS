# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# Method:
# Write a method that takes user input of two integers and outputs a string interpolation.

# Explicit vs Implicit Rules:
# Explicit:
# 1. Both user inputs are integers
# Implicit:
# N/A

# Input vs Output:
# Input: two integers from user input
# Output: string interpolation

# Algorithm:
# age_retire method

# 1. Initialize constant 'YEAR' and set it to 2019
# 2. Print 'what is your age' and obtain user input set it to variable 'age'
# 3. Print 'At what age would you like to retire' and obtain user input set it to variable 'retire_age'
# 4. Initialize variable 'work_years' and set it to 'retire_age' - 'age'
# 5. initialize variable 'retirement_year' and set it to 'year' + 'work_years'
# 6. Use string interpolation to display desired phrase

def age_retire
  YEAR = 2019

  puts 'What is your age?'
  age = gets.chomp

  puts 'At what age would you like to retire?'
  retire_age = gets.chomp

  work_years = retire_age - age

  retirement_year = year + work_years

  puts "It's #{YEAR}. You will retire in #{retirement_year}."
  puts "You have only #{work_years} years of work to go."
end
