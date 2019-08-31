In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

Question:
Write a method that takes a string and returns its percentage in the given string in a key value pair format.

Input vs Output:
Input: string
Output: hash

Explicit vs Implicit Rules:
Explicit:
1) keys are split into three ategories: lowercase, uppercase, and neither
Implicit:
N/A 

Data Structure:
1) create a hash, then manipulate contents within hash

Algorithm:
1) intialize an empty hash called 'total'
2) count how many lowercase letters there are in 'string' and set it to total[:lowercase]
3) count how many uppercase letters there are in 'string' and set it to total[:uppercase]
4) count how many non lowercase / uppercase letters there are in 'string' and set it to total[:neither]
5) iterate through 'total', value should be v = ((v / string.size.to_f) * 100)

def letter_percentages(string)
  total = {}

  total[:lowercase] = string.count('a-z')
  total[:uppercase] = string.count('A-Z')
  total[:neither] = string.count('^A-Za-z')

  total.each do |k,v|
    total[k] = (v / string.size.to_f) * 100
  end
  total
end