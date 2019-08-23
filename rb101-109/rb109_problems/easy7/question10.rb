Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples:

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

Question:
Write a method that returns the next to last word in the string passed to it as an argument.
    
Input vs Output:
Input: string
Output: new string

Explicit vs Implicit Rules:
Explicit:
1) Returning the second to last word of the string
Implicit:
N/A

Algorithm:
penultimate method with 'string' input

1) initialize variable 'result' with empty array
2) invoke split(' ') method on 'string' and assign to variable 'array'
3) append array[-2] to 'result'
4) return result[0]

def penultimate(string)
    array = string.split(' ')
    array[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'