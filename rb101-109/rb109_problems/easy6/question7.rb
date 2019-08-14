# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Examples:

# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]

# Question:
# Write a method that takes an array of integers and splits into a nested array with half of the elements in the first subarray and the second half of the elments in the second subarray.

# Input vs Output:
# Input: array
# Output: 2 subarrays

# Explicit vs Implicit Rules:
# Explicit:
# 1) first array contains first half of elements in the array. if the number of elements in array is odd,
# first array contains first half of elements plus next element
# Implicit:
# 1) We are always returning a nested array of two subarrays

# Algorithm:
# halvsies method
# 1) to find out where the middle point is, we look at size of 'array' that we pass in.
# 2) half , remainder = arry.size.divmod(2)
# 3) half will be a full number, remainder might or might not be 1
# 4) 'first_array' will be 'array'[0..(half + remainder)]
# 5) 'second_array' will be 'array'[(half + remainder)..-1]
# 6) return 'first_array', 'second_array'

def halvsies(array)
  half, remainder = array.size.divmod(2)
  midpoint = half + remainder
  first_array = array[0...midpoint]
  second_array = array[midpoint..-1]
  return [first_array, second_array]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]