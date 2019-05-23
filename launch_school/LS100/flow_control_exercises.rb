# Write down whether the following expressions return true or false. Then type
# the expressions into irb to see the results.
#1. true, 2. false 3. false 4. true 5. true

# #Write a method that takes a string as argument. The method should
# return a new, all-caps version of the string,
# only if the string is longer than 10 characters.

def capitalized_string(word)
  if word.length > 10
    word.to_s.upcase
  else
    word.to_s
  end
end

puts capitalized_string("this is a test string")
puts capitalized_string("teststring")

# Write a program that takes a number from the user between 0 and 100 and
# reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "pick a number from 0 to 100"
number = gets.chomp.to_i
case number
  when (0..50)
    puts "your number is between 0 and 50"
  when (51..100)
    puts "your number is between 51 and 100"
  when number > 100
    puts "your number is over 100!"
  end

#4 => 1. "FALSE" 2. "Did you get it right" 3. "Alright now"

#5 => see #3

#6 => def end, if end
