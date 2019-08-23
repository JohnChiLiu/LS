# Question:
# Write 2 methods that take an input of time of day and outputs the number of minutes it is before or after midnight.

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# Input vs Output:
# Input: Time in string format (hh:mm)
# Output: Minutes (integer)

# Explicit vs Implicit Rules:
# Explicit:
# 1) We are calculating the time before midnight and time after midnight.
# Implicit:
# N/A

# Algorithm:
# after_midnight method

# 1. split up the string formatting to two numbers using split method and set to hours, minutes: hours and minutes
# 2. multiply hours by 60 (which we can set to a constant MINUTES_PER_HOUR) then add minutes. modulo result by minutes per day 
# (1440 which we can set to constant MINUTES_IN_DAY) so anything over 24 hours is reset

# before_midnight method

# 1. since minutes before midnight and minutes after midnight add to 1440, we can initialize variable 'bmidnight_minutes' and set to
# 1440 - after_midnight method
# 2. Looking at the last example, we see 24 hours means a 0 return value. So set 'bmidnight_minutes' to 0 if 'bmidnight_minutes' is 
# equal to 1440
# 3. return 'bmidnight_minutes'

# Algorithm:

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  (hours * 60 + minutes) % 1440
end

def before_midnight(time)
  bmidnight_minutes = 1440 - after_midnight(time)
  bmidnight_minutes = 0 if bmidnight_minutes == 1440
  bmidnight_minutes
end
