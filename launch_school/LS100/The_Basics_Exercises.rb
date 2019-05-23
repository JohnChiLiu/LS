#Add two strings together that, when concatenated, return your first and last name as your full name in one string.
full_name = "John " + "Liu"
puts full_name

#Use the modulo operator, division,
# or a combination of both to take a 4 digit
# number and find the digit in the:
# 1) thousands place 2) hundreds place
# 3) tens place 4) ones place
number = 1234
puts number / 1000 #thousands place
puts number % 1000 / 100 #hundreds place
puts number % 1000 % 100 / 10  #tens place
puts number % 1000 % 100 % 10 #ones place

# Write a program that uses a hash
# to store a list of movie titles with
# the year they came out. Then use the
# puts command to make your program
# print out the year of each movie to the screen. The output for your program
# should look something like this.
new_hash = {
  lion_king: 1975,
  aliens: 2004,
  love_movie: 2013,
  christmas: 2001,
  die_hard: 1981
}

new_hash.each {|k,v| puts v}

# Use the dates from the previous example and
# store them in an array. Then make your program
# output the same thing as exercise 3.
puts "------------"
new_array = []
new_hash.each do |k,v|
  new_array << v
end

puts new_array

# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
def factorial(num)
  (1..num).reduce(:*)
end

puts factorial(8)
puts factorial(7)
puts factorial(6)
puts factorial(5)

# Write a program that calculates the squares of 3 float numbers
# of your choosing and outputs the result to the screen.

puts 1.02 * 1.3 * 1.98

# What does the following error message tell you?
#it is a probably a hash but the user used parenthese, which indicate
# usage of an array

