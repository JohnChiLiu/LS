# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# The tests above should print true.

# Question:
# Write a method that takes a string as an argument and outputs a new string with the words in reverse

# Clarification:
# 1) What would happen when the argument is one word?
# 2) What would happen when the argument is a space?

# Input vs Output:
# Input: string
# output: NEW string

# Explicit vs Implicit Rules:
# Explicit:
# 1. words should be reversed in order
# 2. We should return a new string
# Implicit:
# 1. N/a

# Algorithm:
# reverse_sentence method

# 1. Create an empty array and set it to the variable 'result'
# 2. Invoke split method on the string and set it to variable 'array'. This would cause the string to be split into words within an array
# 3. Iterate through 'array' using each method
# 4. set variable 'i' to 0
# 5. create a loop. Within loop, break out of loop if i is equal to array size. Then append last item of array to 'result' using array.pop
# 6. invoke += method on i and add 1. 
# 5. invoke join method on 'result' and set it to variable 'answer'
# 6. set 'answer' as last line of code to return reversed string

def reverse_sentence(string)
  result = []

  array = string.split(' ')
  
  i = 0
  loop do
    break if i == array.size
    result << array.pop
  end

  answer = result.join(' ')
  answer
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# faster method (above solution shows the thought process)

# def reverse_sentence(str)
#   str.split.reverse.join(' ')
# end