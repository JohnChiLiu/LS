A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

Examples:

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

Question:
Write a method that classifies the triangle given the 3 integer inputs as side lengths.

Input vs Output:
Input: 3 integer inputs
Output: symbol

Explicit vs Implicit Rules:
Explicit:
1) integers have to be greater than 0
2) sum of smaller two sides have to be greater than the third
3) an isoseles triangle is two sides are equal, the third not
4) an equilateral triangle is if all the sides of the triangle are the smaller
5) a scalene triangle is one where all the sides of the triangle are different
Implicit:
1) assume all sides are greater than or equal to 0

Data structure:
1) array

Algorithm:
triangle method

1) set 'sides' to an array with the 3 inputs sorted
2) - if 'sides' include? zero, return :invalid
   - else, create another if..else branch
    - if the sum first two elements of the array is greater than the value of the third, create another if..else statement
      - if the element at index 0 is same as element at index 1
        - return :isosceles
      - elsif if uniq invoked on 'sides' is the same as 'sides'
        - return :scalene
      - elsif if element at index 0 is same as element at index 1 and element at index 1 is the same as element in index 2
        - return :equilateral
      end if..else statement
    - else return :invalid

def triangle(side1,side2,side3)
  sides = [side1,side2,side3].sort

  if sides.include?(0)
    return :invalid
  else
    if sides[0] + sides[1] > 3
      if sides.uniq.size == 2
        return :isosceles
      elsif sides.uniq == sides
        return :scalene
      elsif sides[0] + sides[1] + sides[3] = sides[0] / 3
        return :equilateral
      end 
    else
      return :invalid
    end
  end
end