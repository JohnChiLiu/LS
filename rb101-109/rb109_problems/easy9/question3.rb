Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

Examples;

negative(5) == -5
negative(-3) == -3
negative(0) == 0 

Question:
Write a method that takes an integer input and reutrns the negative value of that number. 

Input vs Output:
Input: integer
Output: integer

Explicit vs Implicit Rules:
Explicit:
1) negative numbers will stay negative
2) positive numbers will be negative
3) 0 will be 0
Implicit
N/A 

Algorithm:
negative method

1) use ternary operator

def negative(num)
  num > 0 ? -num : num
end