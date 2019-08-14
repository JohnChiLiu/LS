Use irb to run the following code:

a = [5, 9, 3, 11]
puts a.min
Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

Answer:
https://apidock.com/ruby/Enumerable/min

=> a.min(2) {|a, b| a.length <=> b.length } 