Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the 
result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. 
Assume the array is non-empty.

Examples:

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667

Question:
Write a method that takes an array of elements (numbers), multiplies all numbers, gets average, and displays 
result to 3 decimal places.

Input vs Output:
Input: array
Output: string (string interpolation)

Explicit vs Implicit Rules:
Explicit:
1) numbers within array are whole numbers
2) numbers aren't zero or negative
3) numbers should have 3 decimal places
Implicit:
N/A

Algorithm:
show_multiplicative_average method

1) set variable 'product' to array.inject(:*)
2) set variable 'result' to product / array.size.to_f
3) write message "The result is '%0.3f' % result"

def show_multiplicative_average(array)
  product = array.inject(:*)
  result = product / array.size.to_f
  puts "The result is #{'%0.3f' % result}"
end
