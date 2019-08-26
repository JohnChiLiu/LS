Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with 
that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

Question:
Write a method that determines the average of the 3 scores passed to it, and prints letter value associated with that grade.

Input vs Output:
Input: array of numbers
Output: letter

Explicit vs Implicit Rules:
N/A

Algorithm:
get_grade method

1) average the 3 numbers and set to 'average'
2) case when

def get_grade(num1,num2,num3)
  average = (num1 + num2 + num3) / 3
  case average
  when 90..100 
    return "A"
  when 80..89
    return "B"
  when 70..79
    return "C"
  when 60..69
    return "D"
  else
    return "F"
  end
end
