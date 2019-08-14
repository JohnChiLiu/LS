# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# Question:
# Write a method that takes two inputs from a user then outputs a string

# Explicit vs Implicit
# Explicit:
# 1. 1 square meter is 10.7639 square feet
# 2. to get user input, it's gets.chomp
# Implicit:
# N/A

# Input vs Output
# Input: 2 integers
# Output: String

# Algorithm:

# area_room method

# 1. set a constant 'SQFT' to 10.7639. This will be the conversion rate between square feet and square meter
# 2. set variable 'length' to user input using gets.chomp method and convert it to float using to_f
# 3. set variable 'width' to user input using gets.chomp method and convert it to float using to_f
# 4. initialize a variable 'area_meter' to the product of 'length' and 'width'
# 5. initialize a variable 'area_feet' to the product of 'area_meter' and constant 'SQFT'
# 6. Use string interpolation and print out statement

# def area_room
#   SQFT = 10.7639
#   length = gets.chomp.to_f
#   width = gets.chomp.to_f
  
#   area_meter = length * width
#   area_feet = area_meter * SQFT

#   puts "The area of the room is #{area_meter} meters, or #{area_feet} feet."
# end