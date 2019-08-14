# Write a method that counts the number of occurrences of each element in a given array.

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Question:
# Write a method that takes in an array of string values and outputs key value pairs with keys being unique strings and values being frequency of the occurrency of those unique strings.

# Input vs. Output:
# Input: String
# Output: hash

# Questions:
# 1. Are all items in the given array strings?
# 2. What if there is an empty array? What would the resulting hash be?

# Explicit vs Implicit Rules:
# Explicit:
# 1. Words in array are case sensitive. In the output hash, a key like 'car' and a key like 'CAR' would be separate keys.
# Implicit:
# Values are integers

# Algorithm:
# array_to_hash

# 1. Create empty hash using Hash.new(0)
# 2. iterate through array, assigning elements as keys and use count method to arrive at the values associated with said keys.
# 3. final line of code should iterate through hash and output key value pair on the screen.

# rough draft:

def array_to_hash(array)
  hash = Hash.new(0)

  array.each do |element|
    hash[element] = array.count(element)
  end

  hash.each do |k,v|
    puts "#{k} => #{v}"
  end
end

array_to_hash(['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck'])