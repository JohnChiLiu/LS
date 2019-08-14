# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# Question:
# Write a method that takes any year greater than 0 as input, and returns true if the year is a leap or false if it isn't.

# Input vs. output:
# Input: integer greater than 0
# Output: Boolean

# Explicit vs Implicit Rules:
# Explicit: 
# 1. a leap year is divisible by 4 unless it's also divisible by 100
# 2. if the year is evenly divisible by 100, it also is divisible unless divisible by 400
# Implicit:
# N/A

# Algorithm:
# leap_year method

# 1. create an if..else statement structure
#   a. if year is divisible by 4 AND not divisible by 100, return true
#   b. elsif year is divisible by 100 AND divisible by 400, return true
# 2. end method

def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 100 == 0 && year % 400 == 0
    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true