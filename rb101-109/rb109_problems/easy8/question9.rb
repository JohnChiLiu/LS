Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

def reversed_number(integer)
  integer.to_s.reverse.to_i
end