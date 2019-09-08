Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

Examples

diamond(1)

*
diamond(3)

 *
***
 *
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

Question:
Write a method that takes an integer and creates a diamond made of *s

Input vs Output:
Input: integer
Output: string interpolation

Explicit vs Implicit Rules:
Explicit:
1) only odd numbers are allowed as inputs
2) they form a diamond with *s 
Implicit:
N/A 

Data Structure:
1) None => string interpolation

Algorithm:
diamond method

1) initialize variable 'space' as num / 2
2) initialize variable 'stars' as 1
3) to get the first half of the prinout, do a loop
  a) while 'space' is greater than 0
    puts (space * ' ') + stars * '*' + (space * ' ')
    space -= 1
    stars += 2
end
b) while stars is greater than 0
    puts (space * ' ') + stars * '*' + (space * ' ')
    space += 1
    stars -= 2
end

def diamond(num)
  space = num / 2
  stars = 1

  while space > 0
    puts (space * ' ') + stars * '*' 
    space -= 1
    stars += 2
  end

  while stars > 0
    puts (space * ' ') + stars * '*'
    space += 1
    stars -= 2
  end
end