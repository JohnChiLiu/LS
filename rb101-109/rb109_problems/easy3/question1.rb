# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].

# Question:
# Write a method that takes user input for 6 numbers. We output a string interpolation.

# Explicit vs. Implicit:
# Explicit:
# 1. User enters 5 numbers
# Implicit:
# 1. There needs to be a method to check if last number retrieved is within first 5 numbers.

# Input vs. Output:
# Input: 5 integers
# output: string

# Algorithm:
# last_include method

# 1. initialize empty array and name it 'result'
# 2. Each user input will be appended to 'result'
# 3. On the sixth input, use include? method on 'result' and set it to variable 'last_number'
# 4. Use if..else statement
#   a. if 'last_number' is true, output a string interpolation stating it's inside the array
#   b. if 'last_number' is false, output a string stating it's not in the array

def last_include
  result = []

  puts "Enter your first number"
  first = gets.chomp
  result << first

  puts "Enter your second number"
  second = gets.chomp
  result << second

  puts "Enter your third number"
  third = gets.chomp
  result << third

  puts "Enter your fourth number"
  fourth = gets.chomp
  result << fourth

  puts "Enter your fifth number"
  fifth = gets.chomp
  result << fifth

  puts "Enter your sixth number"
  sixth = gets.chomp

  if result.include?(sixth)
    puts "The number #{sixth} appears in #{result}."
  else
    puts "The number #{sixth} doesn't appear in #{result}"
  end
end

last_include