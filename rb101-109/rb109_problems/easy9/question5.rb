Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

Examples:

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

Question:
Write a method that takes in a string and returns boolean if every one of its characters are uppercase.

Input vs Output:
Input: string
Output: boolean

Explicit vs Implicit Rules:
Explicit:
1) return false if one character is lowercase
Implicit:
N/A 

Algorithm:
uppercase method

1) strip out all non-alphabetical numbers using gsub
2) invoke each_chars on revised string
3) if char == char.downcase, return false
4) last line should return true

def uppercase?(string)
  string = string.gsub(/[^a-zA-Z]/i,'')
  string.each_char do |char|
    if char == char.downcase
      return false
    end
  end
  return true
end