INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3],
                   [4, 5, 6],
                   [7, 8, 9],
                   [1, 4, 7],
                   [2, 5, 8],
                   [3, 6, 9],
                   [1, 5, 9],
                   [3, 5, 7]]
WINNING_SCORE = 5
CHOOSE = ['Player', 'Computer', 'Choose']

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  puts "----------------------------------------------------------------------------"
  puts "You are #{PLAYER_MARKER} and Computer is #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |     '
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts '     |     |     '
  puts '-----+-----+-----'
  puts '     |     |     '
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts '     |     |     '
  puts '-----+-----+-----'
  puts '     |     |     '
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts '     |     |     '
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def display_rules
  puts 'Please enter your name!'
  name = gets.chomp
  puts "Hello #{name}, let's play Tic Tac Toe."
  puts 'Here are the rules of the game:'
  puts 'You and the computer will take turns marking "X" and "O" on the grid'
  puts 'The first person to get 3 marks in a row wins.'
  puts "Let's begin!"
end

def initialize_board
  new_hash = {}
  (1..9).each { |num| new_hash[num] = INITIAL_MARKER }
  new_hash
end

def joinor(array, delimiter=", ",word= "or")
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join("#{delimiter}")
  end
end

def player_marks_square(board)
  square = ''
  loop do
    prompt "#Please choose a position to place a square: #{joinor(empty_squares(board))}"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt 'That is not a valid number. Please try again.'
  end
  board[square] = PLAYER_MARKER
end

def empty_squares(board)
  board.keys.select { |k| board[k] == ' ' }
end

def computer_marks_square(board)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, board, COMPUTER_MARKER)
  end
  
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, board, PLAYER_MARKER)
        break if square
    end
  end

  if !square && board[5] == INITIAL_MARKER
    square = 5
  end
  
  if !square
    square = empty_squares(board).sample
  end

  board[square] = COMPUTER_MARKER
end

def board_full?(board)
  empty_squares(board).empty?
end

def someone_won?(board)
  detect_winner(board)
end

def detect_winner(board)
  WINNING_LINES.each do |line|
    if board[line[0]] == PLAYER_MARKER &&
       board[line[1]] == PLAYER_MARKER &&
       board[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif board[line[0]] == COMPUTER_MARKER &&
          board[line[1]] == COMPUTER_MARKER &&
          board[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{ |k,v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def player_chooses_order
  answer = ''
  loop do
    prompt 'Who would you like to go first? Type "p" for player and "c" for computer'
    answer = gets.chomp.downcase
    break if answer != 'c' || answer != 'p'
    prompt 'Please choose "p" for player or "c" for computer'
  end
  if answer == 'p'
    return 'Player'
  else
    return 'Computer'
  end
end

def first_player
  case CHOOSE.sample
  when "Choose" then player_chooses_order
  when "Player" then "Player"
  when "Computer" then "Computer"
  end
end

def place_piece!(board, current_player)
  case current_player
  when "Player" then player_marks_square(board)
  when "Computer" then computer_marks_square(board)
  end
end

def alternate_player(current_player)
  return "Computer" if current_player == "Player"
  "Player"
end

# Main game loop
score = {"Player": 0, "Computer": 0}
answer = ''
system('clear')
display_rules

loop do
  board = initialize_board
  current_player = first_player

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  if someone_won?(board)
    prompt "#{detect_winner(board)} won the game!"
  else
    prompt "It's a tie!"
  end

  prompt 'Here is the current score:'

  if detect_winner(board) == "Player"
    score[:Player] += 1
  elsif detect_winner(board) == "Computer"
    score[:Computer] += 1
  end

  prompt "Player: #{score[:Player]}. Computer: #{score[:Computer]}."

  break if score[:Player] == 5 || score[:Computer] == 5

  prompt 'Would you like to play again? (y or n)'
  answer = gets.chomp
  if answer.downcase == 'n'
    break
  end
  system('clear')
end

prompt 'Thanks for playing Tic Tac Toe.'
