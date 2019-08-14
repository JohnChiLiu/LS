# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# Question: 
# Write a method that prints all odd numbers from 1 to 99 inclusive.

# Explicit vs Implicit: 
# Explicit:
# 1. all numbers should be printed on separate lines which means we need to use puts method
# Implicit:
# N/All

# Algorithm:
# print_odd method

# 1. use each method on (1..99) which is essentially an array
# 2. we could use odd? method or we could use modulo operator to filter odd numbers

def print_odd
  (1..99).each do |num|
    if num.odd?
      puts num
    end
  end
end

print_odd