# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. 
# Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Examples:

# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# Question:
# Write a method that takes an array and returns a new array with elements of the list in reverse order. dont modify original list

# Input vs Output:
# Input: array
# Output: array reversed (new array)

# Explicit vs Implicit Rules:
# Explicit:
# 1) Do not modify original array
# Implicit:
# N/A

# Algorithm:
# reverse method

# 1) initialize empty array called 'result'
# 2) iterate through 'array' by calling each method
# 3) within do..end, invoke prepend method on 'result'
# 4) return 'result'

def reverse(array)
  result = []
  array.each do |item|
    result.prepend(item)
  end
  result
end
