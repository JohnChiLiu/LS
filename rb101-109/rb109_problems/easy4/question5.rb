# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# Question:
# Write a method that searches for all multiples of 3 to 5 that lie between 1 and the given input. Return the sum of all those multiples.

# Input vs. Output:
# Input: integer
# Output: integer

# Explicit vs Implicit Rules 
# Explicit:
# 1. multiples are inclusive of the number provided from 1 to input
# Implicit:
# N/A 

# Algorithm:
# multisum method

# 1. initialize a varaible 'sum' and set to integer 0
# 2. (1..input) and invoke each on the array. 
# 3. add to sum with reassignment += method if multiple of 3 or 5
# 4. return sum as last line of code

def multisum(number)
  sum = 0
  (1..number).each do |num|
    sum += num if (num % 3 == 0 || num % 5 == 0)
  end
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
