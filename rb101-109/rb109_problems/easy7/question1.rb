Write a method that combines two Arrays passed in as arguments, and returns a new Array that 
contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of
elements.

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Question:
Write a method that combines two arrays passed in as arguments, and returns a brand new array that
contains all elements from both array arguments with elements taken in alternation.

Input vs Output:
Input: array with 2 array arguments
Output: single array

Explicit vs Implicit:
Explicit:
1) New array contains all elements from input array in alternation
2) input array are non-empty
3) both input arrays have equal number of elements
Implicit:
1) we can use interleave function, but try to solve the logic

Algorithm:
interleave method with inputs arr1 and arr2

1) initialize variable 'counter' with integer value 0
2) initialize variable 'result' with empty array
3) initialize a loop with do..end block alongside
a. push array[counter] into 'result'
b. push array[counter] into 'result'
c. invoke += 1 to counter
e. break if counter is equal to the size of arr1 or counter is equal to size of arr2
4) return 'result'

def interleave(arr1, arr2)
  counter
  result = []

  loop do
    result << arr1[counter]
    result << arr2[counter]
    counter += 1
    break if counter == arr1.size || counter == aarr2.size
  end

  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']