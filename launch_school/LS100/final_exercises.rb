# array = [1,2,3,4,5,6,7,8,9,10]
# array.each {|n| puts n}

# greater_than_five = array.each do |n|
#   if n > 5
#     puts n
#   end
# end

# greater_than_five.select {|n| n % 2 != 0}

#array.unshift(0)
#array << 11

#array.pop
#array << 3

#array.uniq

#array is a data structure that lists values with a given order while
#hash is a data structure that assigns key-value pairs

#hash = {key: value}
#hash = {:key => value}

#h = {a:1, b:2, c:3, d:4}
#to get b, h[1][0]
#h[e] = 5
#h.select {|k,v| v > 3.5}
#to delete, h.delete_if {|k,v| v < 3.5 }

#yes
#hash = {name: [john,james]}
#array = [{name: john},{fruit: apple}]

#11 favorite api

#contacts["Joe Smith"] = contact_data[0]
#contacts["Sally Johnson"] = contact_data[1]

#joe email = contacts[0][1]
#sally phone number = contacts[1][2]

#field = [:name,:number,:address]
# contacts.each do |name,hash|
#   fields.each do |field|
#     hash(field) = contacts_data.shift
#   end
# end
#if there are two keys in array, use each_with_index

#arr.delete_if {|word| word.start_with?("s")}

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']
# a = a.map {|phrase| phrase.split(" ")}
# a = a.flatten
# puts a

#these hashes are the same because order doesn't matter
