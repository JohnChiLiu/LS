Note: constants have to be OUTSIDE of the method definition
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in 
the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters 
that are neither.

Examples

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

Question:
Write a method that takes in a string and returns a hash containing their categories and # of occurences. 

Input vs Output:
Input: string
Output: hash

Explicit vs Implicit Rules:
Explicit:
1) we should have three keys in the return value, lowercase,uppercase, and neither
2) spaces count as neither
Implicit:
N/A

Algorithm:
letter_case_count method

1) initialize hash 'result' with key value pairs: lowercase => 0, uppercase => 0, neither => 0
2) create constant LOWERCASE and set to ('a'..'z').to_a
3) create constant UPPERCASE and set to ('A'..'Z').to_a
4) invoke chars method on the input string and iterate through with each method
  a. UPPERCASE.include?(char)
    1. result[uppercase] += 1
  b. LOWERCASE.include?(char)
    2. result[lowercase] += 1
  c. else
    1. result[neither] += 1
5) return result

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_case_count(string)
  result = { uppercase: 0,
              lowercase: 0,
              neither: 0}

  string.chars.each do |char|
    if UPPERCASE.include?(char)
      result[:uppercase] += 1
    elsif LOWERCASE.include?(char)
      result[:lowercase] += 1
    else
      result[:neither] += 1
    end
  end

  result
end
    
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

second method
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
