If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, 
and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 
3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 
digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) 
use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
    
Question:
Write a method that rotates the number until it can rotate no more.

Input vs Output:
Input: Integer
Output: Integer

Explicit vs Implicit Rules:
Explicit:
1) we are using previous 2 methods
Implicit:
N/A

Algorithm:
1) have a counter that counts size of integer
2) every time it rotates, subtract size of integer until counter == 1

def max_rotation(integer)
  counter = integer.digits.size
  until counter == 1
    integer = rotate_rightmost_digits(integer, counter)
    counter -= 1
  end
  integer
end

def rotate_rightmost_digits(integer,num)
  array = integer.to_s.chars
  array[-num..-1] = rotate_array(array[-num..-1])
  array.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end
