# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Examples

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# Question: convert string to integer without to_i.

# Input vs Output
# Input: string
# Output: integer

# Explicit vs Implicit
# 1) We cannot use to_i
# Implicit
# N/A 

# Algorithm:
# string_to_integer method

# 1. create a hash table with every single digit in string form as keys and corresponding digit as integer form as values
# 2. invoke chars method on string and set result to 'characters' variable
# 3. invoke map method on characters and set it to 'result'
# 4. within the do..end block of the map method above, invoke select method on hash, and have a condition if character from 'characters' is a key, return the values
# 5. Use join method on result

def string_to_integer(string)
  hash = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9
  }

  characters = string.chars
  result = characters.map do |char|
    hash[char]
  end
  result.inject {|a,i| a*10 + i}
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
