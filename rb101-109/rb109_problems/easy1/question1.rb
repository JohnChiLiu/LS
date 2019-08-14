# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)
# Output:

# Hello
# Hello
# Hello

# Answer:
# Question: Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Examples:
# 1. repeat('Hello',3) =>
# Hello
# Hello
# Hello
# 2. repeat('',3) => What if there was no string entered?
# ''
# ''
# ''
# 3. repeat('tree',2) =>
# tree
# tree

# Input vs. Output:
# Input: String & Integer
# Output: prints String to the screen

# Explicit Rules:
# 1st parameter has to be a string
# 2nd parameter has to be a positive integer
# Implicit Rules:
# Return value of method would be nil since puts method is last line to be Output
# Need a way to output the string x amount of times

# Algorithm:
# repeat method

# 1. create a variable with a value of 1, this will be the index of which we're increasing any time we output the string value
# 2. create a loop method alongside a block
# 3. call puts method on string
# 4. increase variable by 1
# 5. break when variable is equal to integer we're passing through

def result(string,integer)
  i = 1
  loop do
    puts string
    i += 1
    break if i == integer
  end
end

p result('Hello',3)