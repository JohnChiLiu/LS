Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of 
each fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

Question:
Write a method that takes in a list (array) of fruits with quantities and converts it into an array of correct # of each fruit.

Input vs Output:
Input: Array
Output: Array

Explicit vs Implicit Rules:
Explicit:
1) array will have nested arrays with 2 elements each
Implicit:
N/A

Algorithm:
buy_fruit method with array input

1) initialize variable 'result' as empty array
2) invoke each on array
3) within do end, invoke times method on element[1]
4) within times method's do..end block, append element[0] to 'result'
5) return result

def buy_fruit(array)
  result = []
  array.each do |array|
    array[1].times {|num| result << array[0]}
  end
  result
end