# Write a method that takes an Array as an argument, and reverses its elements in place; that is, 
# mutate the Array passed into this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

# Question:
# Write a method that takes an array and returns the same array with its elements reversed.

# Input vs Output:
# Input: array
# Output: same array

# Explicit and Implicit Rules:
# Explicit:
# 1) the resulting array is the same object as the original array

# Algorithm:
# reverse! method

# 1) initialize variable 'left_index' with integer 0 to represent element at index 0 
# 2) initalize variable 'right_index' with integer -1 to represent element at index -1
# 3) we will create loop that breaks when left_index increments by 1 and reaches the before or at the middle
# 4) each time we exchange the positions of the two elements at positions 'left_index' and 'right_index, add 1 to 'left_index' 
# and subtract 1 from 'right_index' for the next iteration.
# 5) return the final array 'array'

def reverse!(array)
  left_index = 0
  right_index = -1

  until left_index > (array.size / 2)
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end
