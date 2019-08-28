Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

Algorithm:
rotate_rightmost_digits method
1) rotate_array is the method that will rotate
2) we want to target the right most side of the array
3) integer.to_s.chars will be the array we are rotating set to 'array'
4) array[-n..-1] = rotate_array(array[-n..-1])
5) array.join('').to_i

def rotate_rightmost_digits(integer,num)
  array = integer.to_s.chars
  array[-num..-1] = rotate_array(array[-num..-1])
  array.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end