#Practice Problem 1
[1, 2, 3].select do |num|
  num > 5
  "hi"
end
#expected return: [1,2,3] since "hi" is truthy

#Practice Problem 2
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
#expected return: 2

#Practice Problem 3
[1, 2, 3].reject do |num|
  puts num
end
#expected return: reject returns new array where blocks return value is"falsey"
#since puts num is nil, reject returns original array

#Practice Problem 4
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
#expected return: {a: "ant", b: "bear", c: "cat"}

#Practice Problem 5
hash = { a: 'ant', b: 'bear' }
hash.shift
#expected return: {b: 'bear'}

#Practice Problem 6
['ant', 'bear', 'caterpillar'].pop.size
#expected return: 11

#Practice Problem 7
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
#expected return:first answer: true, false, true. ACTUALLY returns first number in the array
#since 1 is odd, it will true and stop iterating

#Practice Problem 8
arr = [1, 2, 3, 4, 5]
arr.take(2)
#expected return: take method takes "x" first elements of the array

#Practice Problem 9
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
#expected return: will return nil and "bear". map is destructive to
#original hash or array. map always returns array. returns nil
#because ant is false, therefore return value is nil

#Practice Problem 10
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
#expected return: [1,nil,nil], 1 is num meaning it has a value
#2 and 3 are puts num and puts num is always nil return value


