Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

Examples:

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
    
Question:
Write a method that takes an Array of numbers and returns sum of the sums of each leading sub-sequence for that Array. 

Input vs Output:
Input: Array
Output: String interpolation

Explicit vs Implicit Rules:
Explicit:
1) Takes array of numbers
2) get sum of all numbers for each leading sub-sequence
Implicit:
N/A

Algorithm:
sum_of_sums method with argument 'numbers'

1) initialize variable 'sum' with integer value 0. this will store running total
2) until 'numbers' is empty, sum up all numbers in the array and add to 'sum' while each iteration removing an element using pop (removes
last number since we are adding leftside elements every time and removing far right element
3) once 'numbers' is empty, return 'sum'

def sum_of_sums(numbers)
  sum = 0
  until numbers.size == 0
    sum += numbers.inject(:+)
    numbers.pop
  end
  sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
