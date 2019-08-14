# Write a program called name.rb that asks the user to type
# in their name and then prints out a greeting message with their name included.

puts "Please write your name!"
name = gets.chomp
puts "Hello #{name}, nice to meet you!"

# Write a program called age.rb that asks a user
# how old they are and then tells them how old they
# will be in 10, 20, 30 and 40 years. Below is the
# output for someone 20 years old.

puts "how old are you?"
age = gets.chomp
puts "in 10 years you will be"
puts age.to_i + 10
puts "in 20 years you will be"
puts age.to_i + 20
puts "in 30 years you will be"
puts age.to_i + 30
puts "in 40 years you will be"
puts age.to_i + 40

# Add another section onto name.rb that prints the name of the user 10 times.
# You must do this without explicitly writing the puts method 10 times in a row.

name = "john"
10.times {|n| puts name}

# Modify name.rb again so that it first asks the user for their
# first name, saves it into a variable, and then does the same for
# the last name. Then outputs their full name all at once.

puts "whats yourfirst name"
first_name = gets.chomp
puts "what's your last name"
last_name = gets.chomp
full_name = first_name + " " + last_name
puts full_name

#What does x print to the screen in each case? Do they
# both give errors? Are the errors different? Why?

#Answer => the first one shows the number "1" three times. The second
# one gives an error because the x was not assigned a value and it was
# created within the method
