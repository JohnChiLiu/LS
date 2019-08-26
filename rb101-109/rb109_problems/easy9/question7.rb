Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string 
that contains the last name, a comma, a space, and the first name.

Examples

swap_name('Joe Roberts') == 'Roberts, Joe'

Question:
Write a method that takes a string argument and returns a string switching the two words.

Input vs Output:
Input:string
Output: string (new?)

Explicit vs Implicit Rules:
Explicit:
1) last name will be switched the front with a comma
Implicit:
N/A

Algorithm:
swap_name method

1) invoke split method on argument string and set to 'result'
2) return (result[1].to_s + ', ' + result[0].to_s)

def swap_name(string)
  result = string.split(' ')
  return (result[1].to_s + ', ' + result[0].to_s)
end

solution #2

def swap_name(string)
  string.split(' ').reverse.join(', ')
end