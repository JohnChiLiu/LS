#Question 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |key, hash|
  hash[key] = flintstones.index(key)
end

#Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
age_sum = 0

ages.each do |k,v|
  age_sum += v.to_i
end

p age_sum

#Question 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! {|k,v| v < 100}
p ages

#Question 4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sorted_ages = ages.sort_by{|k,v| v}
sorted_ages[0][1]

#Question 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
index = []

flintstones.each_with_index do |name, idx|
  if name[0,2] == "Be"
    index << idx
  end
end

index

#Question 6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0,3]
end

p flintstones

#Question 7
#string to hash
statement = "The Flintstones Rock"
array = statement.split("")
result = Hash.new(0)

array.each do |letter|
  result[letter] += 1
end

p result

#Question 8
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
#prints out 1 and 3, shift(1) means first element is taken out
#it will take out 1 and 2, leaving 3 and 4 as return value
#shift(n) gives first n elements
#pop(n) gives last n elements

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

#prints out 1 and 2, 3 and 4 are taken out, returns 1 and 2

#Question 9
words = "the flintstones rock"

words_array = words.split(" ")
words_array.each do |word|
  word.capitalize!
end
words_array.join(" ")
p words_array
#refactored version:
p words.split.map {|word| word.capitalize}.join(" ")

#Question 10
#adding a key value pair. criteria of "age" between certain #s
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k,v|
  case v["age"]
  when 0...18
    v["age group"] = "child"
  when 18...65
    v["age group"] = "adult"
  else
    v["age group"] = "elder"
end
