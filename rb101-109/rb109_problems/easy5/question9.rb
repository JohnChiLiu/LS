# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# Examples:

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

# Question:
# Write a method that takes a string argument and returns a new string that contains all consecutive duplicate characters collasped into a single character.

# Input vs Output:
# Input: string
# Output: new string

# Explicit vs Implicit Rules:
# Explicit:
# 1) We are returning a new string
# 2) consecutive charaters cannot be the same
# Implicit:
# N/A 

# Algorithm:
# crunch method

# 1) Initialize variable with empty array called 'result'
# 2) invoke chars method on string input, invoke each method on result, and within do..end block, add element
# to 'result' if last item in 'result' is equal to that element
# 3) invoke join method on 'result'

def crunch(str)
  result = []
  str.chars.each do |char|
    result << char if result.last != char
  end
  result.join('')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''