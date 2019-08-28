Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

Question:
Write a method that takesa sentence string as input, and returns the same string with sequence of words converted to a string of digits.

Input vs Output:
Input: string
Output: string

Explicit vs Implicit Rules:
Explicit:
1) numbers within string will be replaced with numerical numbers
Implicit:
N/A 

Data Structures:
1) we first need a hash of numbers in word format as keys and integers as values

Algorithm:
word_to_digit method

1) create array with all numbers in word and string format
2) iterate through the array of numbers
3) each iteration, use gsub method to replace number in word format with the index of the number in word format within array and convert to string
4) return string

def word_to_digit(string)
  array = ['zero', 'one', 'two', 'three', 'four', 'five',
            'six', 'seven', 'eight', 'nine']
  array.each do |num|
    string.gsub!(num,array.index(num).to_s)
  end
  string
end
