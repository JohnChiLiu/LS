A triangle is classified as follows:

right One angle of the triangle is a right angle (90 degrees)
acute All 3 angles of the triangle are less than 90 degrees
obtuse One angle is greater than 90 degrees.
To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

Examples:

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

Question, Input vs Output, Explicit and Implicit Rules, Data Structure, Algorithm
Question:
Write a method that determines class(obtuse,acute,right) of angle from 3 integer inputs

Input vs Output:
Input: 3 integer inputs
Output: symbol

Explicit vs Implicit Rules:
Explicit:
1) right angle has a single 90 degree side
2) acute angle has all three under 90 degrees
3) obtuse angle has one side over 90 degrees
4) all angles have to add up to 180 degrees
Implicit:
N/A

Data structure:
1) order integer inputs into an array

Algorithm:
triangle method

1) initialize a variable that contains the three inputs named 'angles' and sort it
2) create an if..else statement that categorizes type of angle
3) first if..else statement
  a) if the sum of angles within the array using inject method is 180 && exclude? 0
    1) if angles.count(90) == 1
      a) return :right
    2) if angles.all? {|num| num < 90}
      a) return :acute
    3) if angles[0] + angles[1] < angles[2]
      a) return :obtuse
    a) end
  a) end
  b) else return :invalid

def triangle(angle1,angle2,angle3)
  angles = [angle1,angle2,angle3].sort

  if angles.inject(:+) == 180 && angles.all? {|num| num != 0}
    if angles.count(90) == 1
      return :right
    elsif angles.all? {|num| num < 90}
      return :acute
    elsif angles[0] + angles[1] < angles[2]
      return :obtuse
    end
  else
    return :invalid
  end
end