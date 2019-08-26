Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you 
have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

Examples

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

Question:
Write a method that takes a string and returns an array that contains every word from the string with a space and letter count

Input vs Output:
Input: string
Output: array of string elements

Explicit vs Implicit Rules:
Explicit:
1) There are x number of elements in the return array depending on x words in the given string
Implicit:
N/A

Algorithm:
word_lengths method

1) set 'result' to string.split(" ")
2) invoke map method on 'result'
3) within block, return (word + " " + word.size.to_s)

def word_lengths(string)
  result = string.split(' ').map do |word|
    (word + " " + word.size.to_s)
  end
end