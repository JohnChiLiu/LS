Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

Question:
Write a method that takes a string as an argument and output a new string where words are swapcased
without using swapcase method

Input vs Output:
Input: string
Output: new string

Explicit vs Implicit Rules:
Explicit:
1) Cases will be swapped
2) new string will be the output
Implicit:
N/A

Algorithm:
swapcase method

1) invoke chars and map methods on string input and set result to 'result'
2) do an if else statement
  a. if char == char.upcase
       char.downcase
  b. elsif char == char.downcase
       char.upcase
  c. else
       char
  end

def swapcase(str)
  result = str.chars.map do |char|
    if char == char.upcase
char.downcase
    elsif char == char.downcase
char.upcase
    else
char
    end
  end
  result.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv' 