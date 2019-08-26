Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

Question:
Write a method that takes an integer argument and returns array of all integers in sequence between 1 and argument

Input vs Output:
Input: integer
Output: array

Explicit vs Implicit Rules:
Explicit:
1) return an array with sequence 1 to number
Implicit:
N/A 

Algorithm:
sequence method

1) initialize 'result' with empty array
2) invoke times method on input argument
3) append 1 + num to 'result'
4) return 'result'

def sequence(integer)
  result = []
  integer.times {|num| result << (num +1)}
  result
end

def sequence(integer)
  (1..integer).to_a
end

