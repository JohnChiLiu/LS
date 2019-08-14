# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# century(2000) #== '20th'
# century(2001) #== '21st'
# century(1965) #== '20th'
# century(256) #== '3rd'
# century(5) #== '1st'
# century(10103) #== '102nd'
# century(1052) #== '11th'
# century(1127) #== '12th'
# century(11201) #== '113th'

# Question:
# Write a method that takes a integer as an input and returns the century. The return value should be a string that begins with the century number and ends with st, nd, rd or th as approrpriate.

# Clarification:
# 1) input is positive?

# Input vs Output:
# Input: integer
# output: string

# Explicit vs Implicit Rules:
# Explicit:
# 1) last two characters of string output depends on ones digit
# Implicit:
# N/A 

# Algorithm:
# century method

# 1. take the argument 'year' and subtract 1 then divide result by 100 then add 1
# 2. set this to 'result'
# 3. use a case..when for 'result'[-1] => this is to determine what to output depending on ones digit of 'result'
#  a. when 1, return 'result'.to_s + 'st'
#  b. when 2, return 'result'.to_s + 'nd'
#  c. when 3, return 'result'.to_s + 'rd'
# else, return 'result'.to_s + 'th'
# 4. end the method

def century(year)
  result = (year - 1)/100 + 1
  
  last_digit = result.to_s.chars.last
  return result.to_s + 'th' if [11,12,13].include?(result % 100)
  case last_digit
  when '1'
    result.to_s + 'st'
  when '2'
    result.to_s + 'nd'
  when '3'
    result.to_s + 'rd'
  else
    result.to_s + 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

