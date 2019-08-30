A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

Question:
Write a method that returns true if the word passed in as an argument can be spelled from a block of letters.

Input vs Output:
Input: string
Output: boolean

Explicit vs Implicit Rules:
Explicit:
1) the pair of letters cannot be used together from the word
Implicit:
N/A 

Data structure:
1) hash to store the pairs
2) array to iterate through elements

Algorithm:
block_word? method

1) initialize an array called 'PAIRS' with nested pairs. all pairs are uppercase
2) reassign input 'word' to 'word'.upcase
3) invoke all? method on 'pairs', and within do..end block, word.count(element) < 2
# this means that if the word contains both letters of the element, it will return false right away hence count should be less than 2. if not all iterations return true (meaning letters pairs aren't used up), then method will return false

PAIRS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
def block_word?(word)
  word = word.upcase
  PAIRS.each do |pair|
    if word.count(pair) >= 2
      return false
    end
  end
end

alternate solution:
PAIRS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
def block_word?(word)
  word = word.upcase
  PAIRS.all? do |pair|
    word.count(pair) < 2
  end
end

note:
1) method ends when it returns true. so if we are using each instead of all?, we want to iterate through all elements and not end prematurely. 