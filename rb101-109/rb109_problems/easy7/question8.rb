Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array 
that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments
contain the same number of elements.

Examples:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

Question:
Write a method that takes two array arguments containing two lists of numbers and returns a new array that contains the product
of each pair of numbers that have the same index.

Input vs Output:
Input: 2 arrays
Output: new array

Explicit vs Implicit Rules:
Explicit:
1) We are returning a new array
2) We are multiplying pairs of numbers within the two input arrays
Implicit:
1) arguments contain the same number of elements

Algorithm:
multiply_lists method with inputs arr1 and arr2

1) initialize variable 'result' and set it to empty array
2) set variable 'idx1' to integer value 0
3) set variable 'idx2' to integer value 0
4) loop do
  a. product = arr1[idx1] * arr2[idx2]
  b. result << product
  c. idx1 += 1
  d. idx2 += 1
  e. break idx1 == (arr1.size - 1) || idx == (arr2.size - 1)
   end
5) return result

def multiply_lists(arr1, arr2)
  result = []
  idx1 = 0
  idx2 = 0
  
  loop do
    product = arr1[idx1] * arr2[idx2]
    result << product
    idx1 += 1
    idx2 += 1
    break if idx1 == (arr1.size) || idx2 == (arr2.size)
  end
  result
end

faster method:
def multiply_list(arr1, arr2)
  products = []
  arr1.size.times do |index|
    products << (arr1[index] * arr2[index])
  end
  products
end  

fastest method:
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |x, y| x * y }
end 