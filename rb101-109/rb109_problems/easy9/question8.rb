Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a 
sequence that your method will create. The method should return an Array that contains the same number of elements as the count 
argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. 
If the count is 0, an empty list should be returned.

Examples:

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

Question:
Write a method that takes two integers as arguments and returns an array that contains multiples of the second number. The first integer
determines how many multiples of the second number is present in array.

Input vs Output:
Input: integers
Output: array

Explicit vs Implicit Rules:
Explicit:
1) There are x numbers of elements in the array that's determined by first integer input
Implicit:
N/A

Algorithm:
sequence method with x and y inputs

1) initialize empty array 'result'
2) invoke times method on 'x' with input 'num', within the do..end block, do result << y * (num + 1)
3) return result

def sequence(x, y)
  result = []
  x.times do |num|
    result << (y * (num + 1))
  end
  result
end