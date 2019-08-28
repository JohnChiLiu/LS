1.
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

Question:
Write a method that rotates an array by moving the first element to the end of the array without changing the array.

Input vs Output:
Input: array
Output: new array

Explicit vs Implicit Rules:
Explicit:
1) Don't modify array.
Implicit:
N/A

Algorithm:
rotate_array method

1) we need two parts, the first element and last x elements.
2) we need to concatenate 
a) array[1..-1] and array[0]
3) array[1..-1] is an array while array[0] is an integer
4) array[1..-1] + [array[0]]

def rotate_array
  array[1..-1] + [array[0]]
end

It's [array[0]] because array[0] is an integer, not an array (we are adding to arrays)