# ask for two numbers
# ask for an operation
# perform the operation on the two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f != 0
end

prompt(MESSAGES['es']['welcome'])

name = nil
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")

loop do
  number1 = nil
  loop do
    prompt("What is your first number?")
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Please provide a valid number")
    end
  end

  number2 = nil
  loop do
    prompt("What is your second number?")
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Please provide a non-zero valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG

  prompt(operator_prompt)

operator = nil
loop do
  operator = Kernel.gets.chomp

  if %w(1 2 3 4).include?(operator)
    break
  else
    prompt("Must choose 1, 2, 3 or 4.")
  end
end

def operator_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("#{operator_to_message(operator)} your two numbers...")

  result = case operator
           when '1'
            number1.to_f + number2.to_f
           when '2'
            number1.to_f - number2.to_f
           when '3'
            number1.to_f * number2.to_f
           when '4'
            number1.to_f / number2.to_f
          end

  prompt("Your answer is: #{result}.")

  repeat = nil
  loop do
    prompt("Do you want to perform another calculation? (Y/N)")
      repeat = Kernel.gets.chomp.downcase
      if repeat == "y"
        break
      elsif repeat == "n"
        break
      else
        prompt("Please select 'Y' or 'N'")
      end
  end
  if repeat == "n"
    break
  end
end

prompt("Thanks for using my calculator! Goodbye!")
