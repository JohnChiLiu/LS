Modify the method from the previous exercise so it ignores non-alphabetic characters when determining 
whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be 
included in the return value; they just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

Question:
Modify prior method to only alternate between cases ignoring non-alphabetical letters.

Explicit vs Implicit Rules:
Explicit:
1) when determining case, ignore non-alphabetic characters
Implicit:
N/A

Algorithm:
staggered_case method

1) initialize variable 'result' with empty string
2) set variable 'ticker' to true
3) invoke chars method on input string and iterate using each method
4) if char matches (=~) /[a-zA-Z]/i (meaning if it's alphabetic)
   if ticker (true)
     result += char.upcase
   else (false)
     result += char.downcase
   end
   ticker = !ticker (to reverse it to false so next alphabetic character will be switched)
   else (if non-alphabetic)
   result += char
5) return result

def staggered_case(string)
  result = ''
  ticker = true
  string.chars.each do |char|
    if char =~ /[a-zA-Z]/i
      if ticker
result += char.upcase
      else
result += char.downcase
      end
      ticker = !ticker
    else
      result += char
    end
  end
  result
end
end