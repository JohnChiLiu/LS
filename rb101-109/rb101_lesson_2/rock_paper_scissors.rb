require 'yaml'
LANGUAGE = 'en'
MESSAGES = YAML.load_file('rps_messages.yml') #load all messages from yml file

VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"] #provides an array of choices
USER_VALID_CHOICES = ["r", "p", "sc", "l", "sp"] #things user can type in
WINNING_CONDITIONS = { "scissors" => ["paper", "lizard"], #a hash showing what winning values are versus corresponding key
                       "paper" => ["rock", "spock"],
                       "rock" => ["lizard", "scissors"],
                       "lizard" => ["spock", "paper"],
                       "spock" => ["scissors", "rock"] }

def message(key) #displays the language within yaml file in the langauge given
  MESSAGES[LANGUAGE][key]
end

def prompt(message) #displays message using "message" method
  puts("=> #{message}")
end

def receive_user_input
  user_input = ""
  loop do
    prompt(message('get_user_input')) #displays message from YML file
    user_input = gets.chomp.downcase #receives user input

    if USER_VALID_CHOICES.include?(user_input) #checks if the user input is within the array of acceptable inputs
      break
    else
      prompt(message('valid_choice')) #if user picks non-valid choice, it will display this message from YML file
    end
  end
  user_input #returns user input if user input breaks out of loop
end

def convert_user_input(input) #converts user input partial word to full word
  case input
  when "r" then "rock"
  when "p" then "paper"
  when "sc" then "scissors"
  when "l" then "lizard"
  when "sp" then "spock"
  end
end

def result(player, computer)
  if WINNING_CONDITIONS[player].include?(computer) #if the value is found in the corresponding key, means you've won
    message('user_won')
  elsif WINNING_CONDITIONS[computer].include?(player)# if the value is found in the corresponding key, means you've lost
    message('computer_won')
  else
    message('tie')
  end
end

def clear_terminal #clears system
  system('clear') || system('cls')
end

prompt(message('welcome'))
prompt(message('rules'))

loop do # main loop
  prompt(message('start_game'))# retrieves 'start game' message from yml file

  user_score = 0 #reference point
  computer_score = 0 #reference point

  while user_score < 5 && computer_score < 5 #while neither has won
    simplified_input = receive_user_input #assign user input to variable
    choice = convert_user_input(simplified_input) #converts shorthand answer to full answer
    computer_choice = VALID_CHOICES.sample #randomizes computer choice
    display_result = result(choice, computer_choice) #assigns outcome to variable

    prompt("#{message('you_chose')} #{choice};
    #{message('computer_chose')} #{computer_choice}") #retrieves messages from yml file
    prompt(display_result.to_s) #prints result as a string for the next step (which needs a string)

    if display_result == "You won!" #see line 73
      user_score += 1
    elsif display_result == "Computer won!" #see line 73
      computer_score += 1
    end

    prompt("#{message('your_current_score')} #{user_score};
    #{message('computer_current_score')} #{computer_score}")

  end # this is the game that will keep looking until someone reaches 5 points

  if user_score > computer_score
    prompt(message('user_grand_winner'))
  elsif computer_score > user_score
    prompt(message('computer_grand_winner'))
  end

  prompt(message('continue'))
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")# if user doesn't enter 'y', then the game will end

clear_terminal #clears everythibg

end # main loop end

prompt(message('goodbye'))
