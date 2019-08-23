Multiply All Pairs
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains 
the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by 
increasing value.

You may assume that neither argument is an empty Array.

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

Question:
Write a method that takes in two array arguments, multiples all possible pairs between the two ararys, and returns a new sorted array.

Input vs Output:
Input: two array arguments
Output: new array

Explicit vs Implicit Rules:
Explicit: 
1) Results should be sorted by value
2) we are getting product of all pairs between two arrays
Implicit:
N/A

Algorithm:
multiply_all_pairs method with inputs arr1 and arr2

1) initialize variable 'result' with empty array
2) invoke each method on arr1
3) within each method, invoke each method on arr 2
4) append (ele1 * ele2) into result
5) last line of code return result.sort

def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |num1|
    arr2. each do |num2|
      result << (num1 * num2)
    end
  end
  result.sort
end

faster method:
def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map do {|num1, num2| num1 * num2}.sort
end