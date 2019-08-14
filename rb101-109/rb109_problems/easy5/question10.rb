# Write a method that will take a short line of text, and print it within a box.

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# Question:
# Write a method that will take a line of text and print it within a box

# Input vs Output:
# Input: string
# Output: string (through string interpolation)

# Algorithm:
# print_in_box method

# 1. Create structure of box with no input. 
# 2. We will create a space of size of string input and add it to the middle

def print_in_box(str)
  puts "+#{(str.length + 2) * '-'}+"
  puts "|#{(str.length + 2) * ' '}|"
  puts "| #{str} |"
  puts "|#{(str.length + 2) * ' '}|"
  puts "+#{(str.length + 2) * '-'}+"
end

print_in_box('To boldly go where no one has gone before.')