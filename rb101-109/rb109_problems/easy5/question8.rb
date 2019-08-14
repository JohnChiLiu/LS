# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# Question:
# Write a method that takes an array of integers between 0 and 19, and returns an array of those integers sorted based on
# the english words (sorting alphabetically)

# Input vs Output:
# Input: array
# Output: array

# Clarification: 
# 1) Are we returning the same array?

# Explicit vs Implicit Rules:
# Explicit:
# 1) We choose two numbers
# Implicit:
# 1) We are sorting alphabetically

# Algorithm:
# alphbetic_number_sort method

# 1. Create an array of 0 to 19 and their english word equivalents called 'number_words'
# 2. Then, invoke sort_by (since we only have one criteria)
# 3. within do..end block, we do number_words[argument]

def alphabetic_number_sort(numbers)
  number_words = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)
  numbers. sort by do |number|
    number_words[number]
  end
end