Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

Question: 
Given two inputs, a hash and an array, return a message that includes all elements in the array and all values in the hash.

Input vs Output:
Input: array and hash
Output: string interpolation

Explicit vs Implicit Rules:
Explicit: 
1) We will use all elements of array and all values of hash
Implicit:
N/A

Algorithm:
greetings method array, hash

1) set variable 'full_name' to array.join(' ')
2) set variable 'description' to hash.values.join(' ')
3) use string interpolation to push message

def greetings(array,hash)
  full_name = array.join(' ')
  description = hash.values.join(' ')
  puts "Hello #{full_name}! Nice to have a #{description} around."
end