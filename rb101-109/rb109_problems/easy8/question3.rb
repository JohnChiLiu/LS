Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
The return value should be arranged in order from shortest to longest substring.

Examples:

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Question:
Write a method that returns a list of substrings of a string that start at the beginning of the original string.

Input vs Output: 
Input: string
Output: array

Explicit vs Implicit Rules:
Explicit:
1) we start with a string input
2) we return an array of substrings
Implicit:
N/A

Algorithm:
substrings_at_start method

1) invoke chars method on 'string' input argument so we get all the individual characters.
2) then, invoke each_with_index.map |char, idx|
3) within block, return value is array[0..idx]

def substrings_at_start(string)
  string.chars.map.with_index do |char, idx|
    string[0..idx]
  end
end
