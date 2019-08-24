Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

Question:
Take a string input and return its middle character. if odd, return exact middle, if even, return two characters.

Input vs Output:
Input: string
Output: string

Explicit vs Implicit Rules:
Explicit:
1) return middle character, if odd  return one character, if even return two
Implicit:
N/A 

Algorithm:
center_of method
1) str[(str.size -1)/2..(str.size)/2]

def center_of(string)
  str[(str.size-1)/2..(str.size)/2]
end