# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# Question:
# Write a method that prompts the user for an input and tip rate, both integers. The method outputs the tip amount and then the total amount.

# Input vs Output:
# Input: two integers
# output: string interpolation

# Explicit vs Implicit:
# Explicit:
# 1. the inputs are integers
# 2. the output is a string interpolation
# Implicit:
# 1. you obtain the tip by multiplying the amount with tip rate and dividing by 100

# Algorithm:
# tip method

# 1. intialize variable 'bill' and set it to user input and convert to float using to_f method
# 2. initialize variable 'tip_rate' and set it to user input and convert to float using to_f
# 3. initialize variable 'tip' and set it to 'bill' * 'tip_rate' / 100
# 4. initialize variable 'total' and set it to 'tip'.to_f + 'bill'
# 5. Output message that uses string interpolation which shows tip amount and total amount

def tip
  puts "What's the bill?"
  bill = gets.chomp.to_f
  puts "What's the tip rate?"
  tip_rate = gets.chomp.to_f

  tip = bill * tip_rate / 100
  total = tip.to_f + bill

  puts "The tip is $#{tip}."
  puts "The total is $#{total}."
end

tip