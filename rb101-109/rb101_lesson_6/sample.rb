# Write a method that takes one argument, a positive integer, 
# and returns the sum of its digits.

# Examples:

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping 
# constructs (while, until, loop, and each).

# integer to string to integer

# def sum(digits)
#   digits = digits.to_s.chars
#   digits_int = digits.map {|num| num = num.to_i}
#   digits_int.inject(0) {|total, number| total + number}
# end

# puts sum(234) This is my answer

# def sum(digits)
#   digits.to_s.chars.map(&:to_i).inject(:+)
# end

# puts sum(912)


# def calculate_bonus(salary, binary) 
#   binary == true ? salary / 2 : 0 this could be refactored to binary ? salary / 2 : 0
# end

# puts calculate_bonus(2000, true)

# Modify this program to ask for a name, and 
# then print the age for that person. For an extra challenge, 
# use "Teddy" as the name if no name is entered.

# def teddy_age(name = 'Teddy')
#   puts("What's your name?")
#   name = gets.chomp
#   puts("Hey #{name}!")
# end

# teddy_age

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# METER_TO_FEET = 10.7639

# def area_of_room
#   puts 'Enter the length of the room in meters:'
#   length = gets.chomp.to_f
#   puts 'Enter the width of the room in meters:'
#   width = gets.chomp.to_f
#   area_meters = (length * width).round(2)
#   area_feet = (area_meters * METER_TO_FEET).round(2)
#   puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet.)"
# end

# area_of_room 

# Write a program that will ask for user's name. 
# The program will then greet the user. If the user writes "name!" 
# then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# def user_name
#   puts 'What is your name?'
#   name = gets.chomp
#   if name.include?('!')
#     puts "Hello #{name}. Why are we screaming?".upcase!
#   else
#     puts "Hello #{name}."
#   end
# end

# # user_name

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

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
# def positive_integer?(number)
#   if number.to_i == number && number.to_i > 1
#     true
#   else
#     false
#   end
# end

# def sum_of_integers
#   integer = nil
#   sum = nil
#   response = nil
#   puts "This method will calculate the sum or product of all numbers between 1 and your chosen integer."
#   loop do
#     puts 'Please enter an integer greater than 0:'
#     integer = gets.chomp.to_i
#     break if positive_integer?(integer)
#   end
  
#   loop do   
#     puts "Enter 's' to compute the sum, 'p' to compute the product."
#     response = gets.chomp.downcase
#     break if response.downcase == 's' || response.downcase == 'p'
#     puts "Please enter 's' or 'p'."
#   end
  
#   if response == 'p'
#     puts "Here's the product!"
#     sum = (1..integer).inject(:*)
#   elsif response == 's'
#     puts "Here's the sum!"
#     sum = (1..integer).inject(:+)
#   end
#   sum
# # end

# puts sum_of_integers

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

# new_array = []
# i = 1
# loop do
#   puts "Enter number #{i}:"
#   number = gets.chomp
#   new_array << number
#   i += 1
#   break if i == 6
# end

# if new_array
# new_array

# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# def oddities(array)
#   new_array = []
#   array.each_with_index do |element, index|
#     if index % 2 == 0
#       new_array << element
#     end
#   end
#   new_array
# end

# puts oddities([2, 3, 4, 5, 6])

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# def short_long_short(str1,str2)
#   if str1.length > str2.length
#     puts str2 + str1 + str2
#   else
#     puts str1 + str2
#   end
# end

# short_long_short('john','liu')

# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

# start with number. divide number by 100 then round up nearest number
# 0 = th
# 1 = st
# 2 = nd
# 3 = rd
# 4-9 = th
# need to change result integer to str then add to empty str
# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# Write a method that searches for all multiples of 3 or 5 that 
# lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# def multisum(number)
#   array = []
#   (1..number).each do |num|
#     array << num
#   end
#   multiples = array.select {|num| num % 3 == 0 || num % 5 == 0}
#   multiples.inject(0) {|total, number| total + number}
# end

# puts multisum(15)

# Write a method that takes an Array of numbers, and returns an 
# Array with the same number of elements, and each element has the 
# running total from the original Array.
# you want an array that collects the sum and an array that is the returned array
# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# def running_total(array)
#   returned_array = []
#   sum = []

#   array.each do |num|
#     sum << num
#     returned_array << sum.inject(:+)
#   end

#   puts returned_array
# end

# running_total([2, 5, 13])

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
# require 'pry'
# def string_to_integer(string)
#   numbers = {'0' => 0, 
#             '1' => 1,
#             '2' => 2,
#             '3' => 3,
#             '4' => 4,
#             '5' => 5,
#             '6' => 6,
#             '7' => 7,
#             '8' => 8,
#             '9' => 9}

#   digits = string.chars.map {|char| numbers[char]}

#   value = 0
#   digits.each {|num| value = 10 * value + num}
#   value
# end

# puts string_to_integer('4321')

def meal
  return 'Breakfast'
end

puts meal