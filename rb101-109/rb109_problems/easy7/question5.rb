Write a method that takes a String as an argument, and returns a new String that contains the 
original value using a staggered capitalization scheme in which every other character is 
capitalized, and the remaining characters are lowercase. Characters that are not letters should 
not be changed, but count as characters when switching between upper and lowercase.

Example:

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

Question:
Write a method that takes a string and returns a new string that contains the original value
using a staggered capitalization scheme where every other character is capitalized and remaining
characters are lowercase. 

Clarification:
1) spaces count as characters in the staggering scheme

Input vs Output:
Input: string
Output: new string

Explicit vs Implicit Rules:
Explicit:
1) letters should be uppercase / lowercase (alternates)
2) Spaces and non characters count as upper case and lower case counter
Implicit:
N/A

Algorithm:
staggered_case method

1) initialize variable 'result' with empty array
2) invoke split('') method on string input, which would create an array of characters and non-characters
3) in the same line of code, invoke each_with_index
4) if index.even? or index % 2 == 0
   a. result << char.upcase
   else
   b. result << char.downcase
5) result.join('')

def staggered_case(string)
  result = []
  string.split('').each_with_index do |letter, idx|
    if idx % 2 == 0
      result << letter.upcase
    else
      result << letter.downcase
    end
  end
  result.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'