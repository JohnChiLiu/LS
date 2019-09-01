Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

Question:
Write a method that takes a string argument and returns true if all parentheses in the string are balanced. 

Input vs Output:
Input: string
Output: boolean

Explicit vs Implicit Rules:
Explicit:
1) to be properly balanced, parentheses must occur in matching '(' and ')' pairs
2) the matching parentheses pairs have to be equal in number
Implicit
1) the '(' must come before the ')'

Data structure:
1) none, iteration through characters of string

Algorithm:
balanced? method
1) initialize variable 'sum' with integer value of 0
2) invoke each_char method on 'string' to iterate through characters of the string input
3) if character is a left parentheses, add 1 to sum. otherwise, subtract 1
4) break out of the iteration if sum becomes -1 (this means a ')' parenthesis is before the '(' parenthesis)
5) since balanced means there is an equal amount of '(' and ')', create a ternary operation that determines boolean based on if sum is equal to 0

def balanced?(string)
  sum = 0
  string.each_char do |letter|
    if letter == '('
      sum += 1
    elsif letter == ')'
      sum -= 1
    else
      sum += 0
    end
    break if sum < 0
  end

  sum.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false