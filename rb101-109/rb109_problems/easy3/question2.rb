#   Write a program that puts s the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

# Question:
# Write a method that takes two integers and a string. It will output an integers

# Input vs. Output
# Input: integers
# Output: integers

# Explicit vs Implciit:
# Explicit:
# 1. inputs are integers

# Algorithm:
# arithmetic method

# 1. print out message requiring user input
# 2. set input to variable 'int1'
# 3. print out message requiring user input
# 4. set input to variable 'int2'
# 5. use case..when method to print out different solutions based on operators. Use oerators within string interpolation. 

def arithmetic
  puts "Please enter your first number"
  first_number = gets.chomp.to_i
  puts "Please enter your second number"
  second_number = gets.chomp.to_i

  puts "#{first_number} + #{second_number} = #{first_number + second_number}"
  puts "#{first_number} - #{second_number} = #{first_number - second_number}"
  puts "#{first_number} * #{second_number} = #{first_number * second_number}"
  puts "#{first_number} / #{second_number} = #{first_number / second_number}"
  puts "#{first_number} % #{second_number} = #{first_number % second_number}"
  puts "#{first_number} ** #{second_number} = #{first_number**second_number}"
end

arithmetic