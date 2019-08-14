# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Question:
# Write a method that takes user input and outputs an integer

# Explicit vs Implicit
# Explicit:
# 1. First input is an integer. second input is a string
# Implicit
# 1. product of all integers between one and user inputted number. product of numbers is found through inject method

# Input vs output:
# Input: integer / string
# Output: string interpolation

# Algorithm:
# sum_or_product method

# 1. print a method asking for user input of a number greater than 0
# 2. obtain user input and set it to variable 'number'
# 3. print message asking if user wants to multiply or add
# 4. obtain user input and set it to variable 'operator' 
# 5. set (1..number)'s product to variable 'product'
# 6. set (1..number)'s sum to variable 'sum'
# 7. if 'operator' is 'p'
#   a. print message with string interpolation showing product
# 8. if 'operator' is 's'
#   a. print message with string interpolation showing sum

def sum_or_product
  puts "Please enter a number greater than 0"
  number = gets.chomp.to_i
  puts "Would you like to multiply or add these numbers? Type 'p' to multiply and 's' to add"
  operator = gets.chomp.to_s

  product = (1..number).inject(:*)
  sum = (1..number).inject(:+)

  if operator == "s"
    puts "The sum of numbers between 1 and #{number} is #{sum}."
  elsif operator == "p"
    puts "The product of numbers between 1 and #{number} is #{product}."
  end
end

sum_or_product