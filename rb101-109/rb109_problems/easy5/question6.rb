# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of
#  different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}

# Question:
# Write a method that takes a string with one or more space separated words and returns a hash containing size of word as keys and
# occurences within string as values.

# Input vs Output:
# Input: string
# Output: Hash

# Explicit vs Implicit Rules:
# Explicit:
# 1) the keys of the hash are the different sizes of various words within the string
# 2) the words between spaces are used to determine sizes
# Implicit:
# 1) punctuation marks count as characters

# Algorithm:
# word_sizes(phrase) method

# 1. initialize variable 'result' with empty hash
# 2. invoke split method on string input 'phrase' and set to variable 'array'
# 3. transform 'array' using map and turn strings into their sizes 
# 4. transform  'array' using each method. 
#   a. each iteration, set keys of hash to result[element] and set value to array.count(element)
# 5. return 'result'

def word_sizes(phrase)
  result = {}
  array = phrase.split(' ').map(&:size)
    array.each do |word|
    result[word] = array.count(word)
  end
  result
end
