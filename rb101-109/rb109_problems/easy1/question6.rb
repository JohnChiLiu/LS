# Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# Examples:

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Question:
# Write a method where you take a string input containing one or more words and output a string with all five or more letter words reversed.

# Clarification:
# 1. What would happen if we input an empty string?
# 2. Are we returning a new string object or the original object?

# Input vs. Output
# Input: string
# output: NEW string

# Explicit vs Implicit Rules
# Explicit
# 1. Reverse words that are longer than 5 characters
# 2. Order of the words returned counts
# 3. All the words are case sensitive
# Implicit
# 1. Return brand new string

# Algorithm
# reverse_words method

# 1. create a method definition 'reverse_words' that takes in one argument
# 2. invoke split method on string and assign to new variable 'new_array', just in case the string contains more than one word
# 3. now that we have our words, we want to reverse them. invoke map method on 'new_array' received from split method.
# 4. within the do..end block within the map invocation, create an if..else statement. if word size is greater than or equal to 5, we reverse the word using reverse! method. If not, we return word
# 5. return new_array at the last line of code of method and call join method on new_array.

def reverse_words(str)
  new_array = str.split(' ').map do |word|
    if word.size >= 5
      word.reverse!
    else
      word
    end
  end
  new_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS