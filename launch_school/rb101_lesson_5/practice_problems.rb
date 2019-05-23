#practice problem 1
arr = ['10', '11', '9', '7', '8']
arr2 =  arr.map do |num|
          num = num.to_i
        end
arr2.sort do |a,b|
  b <=> a
end

or

arr.sort do |a,b|
  b.to_i <=> a.to_i
end

#practice problem 2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort_by {|hash| hash[:published]}

#practice problem 3
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[1][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0)

#practice problem 4
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a'][:a][2] = 4

#practice problem 5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters_age = 0

munsters.each do |k,v|
  munsters_age += v["age"] if v["gender"] == "male"
  puts munsters_age
end

munsters_age

#practice problem 6
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k,v|
  puts "#{k} is a #{v["age"].to_i} year old #{v["gender"]}."
end

#practice problem 7
a = 2
b = [5, 8]
arr = [a, b]  #[2,[5,8]]

arr[0] += 2 #[4,[5,8]]
arr[1][0] -= a #[4,[1,8]]

a is 4
b is [1,8]

#practice problem 8
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = "aeiou"
hsh_output = []
hsh.each do |k,v|
  v.each do |ele|
    ele.each_char do |letter|
        if vowels.include?(letter)
          hsh_output << letter
        end
    end
  end
end

hsh_output

#practice problem 9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |subarray| #USE MAP TO TRANSFORM INTO NEW ARRAY
  subarray.sort do |a,b|
    b <=> a
  end
end

#practice problem 10
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
  new_hash = {}
  hsh.each do |k,v|
    new_hash[k] = v + 1
  end
  arr << new_hash
end

#practice problem 11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.each_with_object([]) do |subarray, array|
  array << subarray.select {|num| num % 3 == 0}
end

#practice problem 12
new_hash = {}
arr.each do |subarray|
  new_hash[subarray[0]] = subarray[1]
end
new_hash

#practice problem 13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
arr.sort_by do |subarray|
  subarray.select {|num| num.odd?}
end

#practice problem 14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |k,v| #map creates a new array
  if v[:type] == "fruit"
    v[:colors].map do |color|
      color.capitalize
    end
  elsif v[:type] == "vegetable"
    v[:size].upcase
  end
end

#practice problem 15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

arr.select do |hash|
  hash.all? do |k,v|
    v.all? do |num|
      num % 2 == 0
    end
  end
end

#practice problem 16
def uuid
  characters = []
  (0..9).each {|digit| characters << digit.to_s}
  ("a".."f").each {|letter| characters << letter}

  uuid = ""
  sections = [8,4,4,4,12]
  sections.each_with_index do |section, index|
    section.times {uuid += characters.sample}
    uuid += "-" unless index >= sections.size - 1
  end
  uuid
end

uuid
