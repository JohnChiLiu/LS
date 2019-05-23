#practice problem 1
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers # 1,2,2,3

#practice problem 2
what is != and where should you use it?
#not equal
put ! before something, like !user_name
#opposite of boolean equivalent
put ! after something, like words.uniq!
#part of the name
put ? before something
#ternary operator condition?block1(true):block2(false)
put ? after something
#part of the name
put !! before something, like !!user_name
#double !, no effect

#practice problem 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important","urgent")

#practice problem 4
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) #deletes 2
numbers.delete(1) #delete 1

#practice problem 5
Programmatically determine if 42 lies between 10 and 100.
(10..100).include?(42)

#practice problem 6
famous_words = "seven years ago..."
famous_words.prepend("Four score ")
"Four Score " + famous_words

#practice problem 7
42

#practice problem 8
array.flatten

#practice problem 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.select do |k,v|
  k == "Barney"
end
