Question:
With a given string, return all substrings that are palindromes.

Input vs Output:
Input: string
Output: array

Explicit vs Implicit Rules:
Explicit:
1) substrings have to be palindromes
Implicit:
N/A

Algorithm:
palindromes method

1) initialize variable 'result' as empty array
2) all_substrings = substrings(string)
3) invoke each method on all_substrings
4) append to 'result' if substring == substring.reverse && substring.size > 1
5) return 'result'

def substrings_at_start(string)
  string.chars.map.with_index do |char, idx|
    string[0..idx]
  end
end

def substrings(string)
  result = []
  until string.size == 0
    result << substrings_at_start(string)
    string.slice!(0)
  end
  result.flatten
end

def palindromes(string)
  result = []
  all_substrings = substrings(string)
  all_substrings.each do |substring|
    if substring == substring.reverse && substring.size > 1
      result << substring
    end
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]