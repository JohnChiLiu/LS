Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Question:
Write a method that prints out fizz, buzz, fizzbuzz, or number depending on number.

Input vs Output:
Input: 2 integers
Output: integer and string 

Explicit vs Implicit Rules:
Explicit:
1) if divisible by 3 and 5 print fizzbuzz
2) if divisible only by 3 print fizz 
3) if divisible only by 5, print buzz

Algorithm:
def fizzbuzz(num1, num2)
  [num1..num2].each do |num|
    if num % 3 == 0 && num % 5 == 0
      puts 'fizzbuzz'
    elsif num % 3 == 0 && num % 5 != 0
      puts 'fizz'
    elsif num % 5 == 0 && num % 3 != 0
      puts 'buzz'
    else
      puts num
    end
  end
end