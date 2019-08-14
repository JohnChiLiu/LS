Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output

Teddy is 69 years old!

Question:
Write a method that randomly generates an integer and prints the integer within a string interpolation. The integer should be between 20 and 200.

Input vs Output:
Input: none
output: string interpolation with an integer

Explicit vs Implicit Rules
Explicit
1. integer must be between 20 to 200
Implicit
1. use rand method
2. use string interpolation

Algorithm:

random_age method

1. set a variable age to rand method with inputs of 20 and 200
2. use string interpolation to print out age alongside a message

def rand
  age = rand(20,200)
  puts "Teddy is #{age} years old!"
end