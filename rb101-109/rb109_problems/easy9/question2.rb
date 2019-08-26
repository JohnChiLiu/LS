A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

Examples:

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.

Question:
Write a method that takes an integer input and doubles it if it's not a double number and returns the double number if it's a double number.

Input vs Output:
Input: integer
Output: integer

Explicit vs Implicit Rules:
Explicit:
1) A double number is a even digit number where the first half of the number is the same as the second half
Implicit:
1) we need a method that determines if the number in question is a double number

Algorithm:
double_number? method with 'num' input

1) convert number to string
2) determine midpoint of string as 'midpoint' by string.size / 2
3) does string[0...midpoint] == string[midpoint..-1]
4) if true, return true
5) if not, return false

twice method with 'num' input

1) if 'num' == double_number? (meaning if it's true)
  return double number
else 
  return 'num' * 2
end

# algorithm
def double_number?(num)
  str = num.to_s
  midpoint = str.size / 2
  if str[0...midpoint] == str[midpoint..-1]
    return true
  else
    return false
  end
end

def twice(num)
  if double_number?(num)
    return num
  else
    return (num * 2)
  end
end