# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# Question:
# Write a method that determines if the input year is a leap year under the Gregorian and Julian calendar.

# Input vs Output:
# Input: integer
# output: boolean

# Explicit vs Implicit Rules
# Explicit:
# 1. Before 1752, any year that is divisible by 4 is a leap year.
# 2. After 1752, a leap year is one that is divisble by 4 but not 100. and divisible by both 100 and 400.
# Implicit:
# N/A 

# Algorithm:
# leap_year? method

# 1. Create an if else statement that is divided in 2 branches depending on input year
#   a. if input is less than 1752, any integer divisible by 4 is a leap year
#   b if input is greater than or equal to 1752, a leap year is one that is divisble by 4 but not 100. and divisible by both 100 and 400.

# def leap_year?(year)
#   if year < 1752 && year % 4 == 0
#     true
#   elsif year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   elsif year % 4 == 0
#     true #=> mistake because youre always returning true
#   end
# end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end