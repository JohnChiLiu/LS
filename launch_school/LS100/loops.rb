# What does the each method in the following program return
# after it is finished executing?

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

# puts x
#shows the array "x"

# Write a while loop that takes input from the user, performs an action,
# and only stops when the user types "STOP". Each loop can get info from the user.

# i = ""
# while i != "STOP" do
#   puts "WHat would you like to eat?"
#   word = gets.chomp
#   puts "We don't serve that here. Type STOP if you'd like for me to walk away"
#   i = gets.chomp.upcase
# end

# Use the each_with_index method to iterate through an
# array of your creation that prints each index and value of the array.

# sample_array = [1, 2, 3, 4, 5]
# sample_array.each_with_index do |k,v|
#   puts "Index #{v}. Number #{k}"
# end

# Write a method that counts down to zero using recursion.

# def recursed(num)
#   if num <= 0
#     puts num
#   else
#     puts num
#     recursed(num-1)
#   end
# end

# puts recursed(-1)
# puts recursed(10)
