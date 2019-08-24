Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Question:
Write a method that takes a string input and outputs a new string that's modified with all words capitalized.

Input vs Output:
Input: string
Output: new string

Explicit vs Implicit Rules:
Explicit:
1) All words within the string should be capitalized
Implicit:
1) N/A

Algorithm:
word_cap method

1) invoke split and map method on string and set result to 'result'
2) within do..end, capitalize the word being iterated
3) invoke join method on 'result'

def word_cap(str)
  result = str.split(' ').map do |word|
    word.capitalize
  end
  result.join(' ')
end 