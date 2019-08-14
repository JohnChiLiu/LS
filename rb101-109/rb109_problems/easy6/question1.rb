# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that 
# represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') 
# to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Examples:

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

# DEGREE = "\xC2\xB0"

# Question:
# Write a method that takes a floating point number and returns a string that represents the angle in degrees, minutes, and seconds.

# Input vs Output:
# Input: floating number
# Output: string

# Explicit vs Implicit Rules:
# Explicit:
# 1) We are taking a number that is in degrees form and rewriting it in the answer format of 00degrees00minutes00seconds.
# Implicit:
# 1) there are 60 minutes in a degree, 60 seconds in a minute, so 3600 seconds in a degree.

# Algorithm:
# dms method

# 1) Create constant 'MINUTES_DEGREE'= 60
# 2) create constant 'SECONDS_MINUTE' = 60
# 3) create constant 'SECONDS_DEGREE' =  'MINUTES_DEGREE' * 'SECONDS_MINUTE'
# 4) create constant 'DEGREE = "\xC2\xB0"'
# 4) set variable 'total_seconds' = (input * SECONDS_DEGREE).round
# 5) set degree, remaining_seconds = total_seconds.divmod(SECONDS_DEGREE)
# 6) set minutes, seconds = remaining_seconds.divmod(SECONDS_MINUTE)
# 7) format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)

def dms(time)
  DEGREE = "\xC2\xB0"
  MINUTES_DEGREE = 60
  SECONDS_MINUTE = 60
  SECONDS_DEGREE = MINUTES_DEGREE * SECONDS_MINUTE

  total_seconds = (time * SECONDS_DEGREE).round
  degree, remaining_seconds = total_seconds.divmod(SECONDS_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_MINUTE)
  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

