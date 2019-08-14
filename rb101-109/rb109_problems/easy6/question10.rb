# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

# triangle(5)

#     *
#    **
#   ***
#  ****
# *****
# triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# Question:
# Write a method that takes an integer input and returns a triangle.

# Input vs Output:
# Input: integer
# Output: string interpolation

# Explicit vs Implicit Rules:
# Explicit:
# 1) the top of the triangle starts with 1 star and ends with 'x' amount of stars starting from the right side.
# Implicit:
# 1) there will be spaces left of the *'s'

# Algorithm:
# triangle method

# 1) initialize a variable 'space' with 'integer' - 1
# 2) initialize a variable 'star' with integer value 1
# 3) invoke times method on integer
# 4) within do..end block with |ele|,
#   a) puts "#{ref * ' '}#{ele * "*"}"
#   b) ref -= 1

def triangle(integer)
  space = integer - 1
  star = 1

  integer.times do |ele|
    puts (' ' * space) + ('*' * star)
    space -= 1
    star += 1
  end
end