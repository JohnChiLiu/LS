Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

Question:
Write a method that takes a string and returns a new string in which consonant characters are doubled. everything else is not doubled.

Input vs Output:
Input: string
Output: new string

Explicit vs Implicit Rules:
Explicit:
1) consonants will have letters doubled
Implicit:
N/a

Algorithm:
double_consonants method

1) set constant 'CONSONANTS' containing all consonants OUTSIDE FUNCTION. initialize variable 'result' as empty variable
2) invoke chars on string, then invoke each
3) within block, if CONSONANTS.include(letter.dowcase)
4) 'result' << letter << letter
5) else 'result' << letter
6) 'result'.join


CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
def double_consonants(string)
  result = []
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      result << char << char
    else
      result << char
    end
  end
  result.join("")
end