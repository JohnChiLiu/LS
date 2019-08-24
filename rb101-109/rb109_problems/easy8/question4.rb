Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the 
substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at 
position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned 
in order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous exercise:

Examples:

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

Question:
Write a method that returns a list of all substrings of a string.

Input vs Output:
Input: string
Output: array of substrings

Explicit vs Implicit Rules:
Explicit:
1) return an array of all substrings of original string input
Implicit:
n/a

Algorithm:
substrings method with string input

1) initialize variable 'result' with empty array
2) until string.size == 0
3) within loop, 
   result << substrings_at_start(string)
   string.slice!(0)
   end
   result.flatten

def substrings_at_start(string)
  string.chars.map.with_index do |char, idx|
    string[0..idx]
  end
end

def substrings(string)
  result = []
  until string.size == 0
    result << substrings_at_start(string)
    string.slice!(0)
  end
  result.flatten
end