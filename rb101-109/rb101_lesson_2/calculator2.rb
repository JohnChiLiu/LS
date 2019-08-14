require 'yaml'
MESSAGES = YAML.load_file("calculator_messages.yml")
LANGUAGE = 'en'

def messages(message, lang)
  MESSAGES[lang][message]
end

def number?(input)
  integer?(input) || float?(input)
end

def float?(input)
  input.to_f.to_s == input
end

def integer?(input)
  input.to_i.to_s == input
end

puts(messages('welcome', LANGUAGE))

name = gets.chomp

puts("Please pick two numbers: ")
puts("Please choose your first number.")

first_number = ""
second_number = ""
operator = ""
result = ""

loop do
  first_number = gets.chomp

  if (first_number.to_f > 0 && number?(first_number))
    break
  else
    puts("Please enter a non zero and non negative number")
  end
end

puts("Please choose a second number.")

loop do
  second_number = gets.chomp

  if (second_number.to_f > 0 && number?(second_number))
    break
  else
    puts("Please enter a non zero and non negative number")
  end
end

puts("Please choose an operation: 1) Add 2) Subtract 3)Multiply 4)Divide")
operator = gets.chomp.downcase

case operator
  when "add"
    result = first_number.to_f + second_number.to_f
  when "subtract"
    result = first_number.to_f - second_number.to_f
  when "multiply"
    result = first_number.to_f * second_number.to_f
  when "divide"
    result = first_number.to_f / second_number.to_f
end

puts("The result is #{result}.")

puts("#{name}, thanks for using my calculator!.")
