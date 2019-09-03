Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Examples:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Question:
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squres of the first n positive integers.

Input vs Output:
Input: integer
Output: integer

Explicit vs Implicit Rules:
Explicit:
1) square of sum of first n positive integers subtract sum of squares of first n positive integers
Implicit:
N/A 

Data structure:
None

Algorithm:
sum_square_difference method

1) initialize variable 'sum' as integer value 0
2) initialize variable 'squares' as integer value 0
3) we want to have two numbers to compare at the end, 'sum' and 'squares'
4) invoke times method on input integer
  a) add (ele + 1)**2 to 'squares'
  b) end method
5) invoke times method on input integer
  a) add (ele + 1) to 'sum'
  b) end method
6) sum = sum**2
7) return ('sum' - 'squares')

def sum_square_difference(integer)
  sum = 0
  squares = 0

  integer.times do |num|
    squares += (num + 1)**2
    sum += (num + 1)
  end

  sum = sum**2
  return (sum - squares)
end