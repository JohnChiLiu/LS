Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

Question:
Write a method that takes a string and return a new string in which every character is doubled.

Input vs Output:
Input: string
Output: new string

Explicit vs Implicit Rules:
Explcit:
1) Return a string that has every character doubled
Implicit:
N/A

Algorithm:
repeater method

1) intialize variable 'result' with empty array
2) invoke chars method on string to get an array
3) invoke each method on array
4) within block, use times method
5) within times method, append word to 'result' twice 
6) last line, invoke join method on 'result'

def repeater(string)
  result = []
  string.chars.each do |char|
    2.times do |letter|
      result << char
    end
  end
  result.join('')
end