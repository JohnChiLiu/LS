# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# Question:
# Write a method that takes a time using the minute-based format and return the time of day in 24 hour format.

# Input vs. Output:
# Input: Integer
# Output: String (hour:minutes format)

# Explicit vs Implicit Rules:
# Explicit:
# 1) Cannot use Date and Time
# Implicit:
# 1) We need to use string interpolation to get result
# 2) There are 60 minutes in an hour. when there are negative numbers, it reduces from 24:00

# Algorithm:
# time_of_day method

# 1) set variable 'hour' to input.divmod(60).first % 24 so that we get the hour. it is 00 by default, and when it gets past 23.99 hours,
# it resets to 00
# 2) set variable 'minutes' to input.dovmod(60).last so that we get the minutes. it is 00 by default and when it gets past 59,
# it resets to 00
# 3) use string interpolation to display result. Use format method to display %02d, which gives 2 0s as default
#   a. puts "#{format('%02d',hours)}:#{format('%02d',minutes)}"

def time_of_day(min)
  hour = min.divmod(60).first % 24
  minutes = min.divmod(60).last

  puts "#{format('%02d',hour)}:#{format('%02d',minutes)}"
end