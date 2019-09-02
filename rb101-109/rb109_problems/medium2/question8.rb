A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. Issue an error message if there is no next featured number.

Examples:

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

Question:
Write a method that takes a number input and returns the next subsequent featured number relative to the number input.

Input vs Output:
Input: number
Output: number

Explicit vs Implicit Rules:
Explicit:
1) a featured number is one that is a multiple of seven and whose digits don't repeat
Implicit:
1) we need 2 methods, one to determine if its a featured number, and one that returns the next featured number

Data structure:
1) featured? method => returns boolean
2) featured => returns next featured number

Algorithm:
featured? method
1) if the integer is odd, a mulitple of 7, and integer's digit size is different that an integer's unique digit size
2) otherwise false

feature method
1) we need a number that always returns the next featured number, which is integer / 7 + 1
2) then that num * 7 should go through the featured? test, if it doesn't pass, return next multiple of seven(num + 1 ) * 7


def featured?(integer)
  integer.digits.uniq.size == integer.digits.size && integer.odd? && integer % 7 == 0
end

def featured(integer)
  num = (integer / 7) + 1
  next_num = num * 7
  loop do
    if featured?(next_num)
      return next_num
    else
      next_num += 7
    end
  end
end