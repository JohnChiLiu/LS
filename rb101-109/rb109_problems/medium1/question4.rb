You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle 
switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after 
n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

Question:
Write a method that returns lights that are on.

Input vs Output:
Input: integer
Output: array

Explicit vs Implicit Rules:
Explicit:
1) every iteration starts at the next number
Implicit:
N/A

Algorithm:
lights_on method

1) create a hash using Hash.new and set to 'result'
2) for x amount of lights, do (1..num).each {|n| result[n] = "off"}
3) initialize variable 'counter' as 1
4) create a loop that breaks only when counter > num
5) within loop, 
result.map do |k,v|
 if k % counter == 0
   if result[k] == "off"
     result[k] == "on"
   elsif result[k] == "on"
     result[k] == "off"
            end
          end
        end
        counter += 1
break if counter > num
      end

6) now that you will have a hash of "off" and "on"
7) invoke select method on 'result' k if v == 'on' which would return the key value pairs where the value is “on”
8) now that we have the remaining hash, invoke keys then invoke to_a

def lights_on(num)
  result = Hash.new(0)
  (1..num).each {|n| result[n] = "off"}
  counter = 1
  loop do
    result.map do |k,v|
      if k % counter == 0
        if result[k] == "off"
          result[k] = "on"
        elsif result[k] == "on"
          result[k] = "off"
        end
      end
    end
    counter += 1
    break if counter > num
  end
  result.select {|k,v| k if v == "on"}.keys.to_a
end