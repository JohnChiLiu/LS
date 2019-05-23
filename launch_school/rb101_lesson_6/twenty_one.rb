require 'pry'

SUITS = %w(H D S C)
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

PLAYER_LIMIT = 21
COMPUTER_LIMIT = 17

WINNING_SCORE = 3

player_cards = []
dealer_cards = []

def prompt(message)
  puts "=> #{message}"
end

def clear_system
  system('clear')
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] } #returns array of only #s

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > PLAYER_LIMIT
  end

  sum
end

def show_hands(player_cards, dealer_cards)
  prompt 'Here are the hands:'
  prompt "Player: #{player_cards} for a total of #{total(player_cards)}"
  prompt "Dealer: #{dealer_cards} for a total of #{total(dealer_cards)}"
end

def hit(player_cards, dealer_cards, player = 'Player')
  prompt "Here is the #{player}'s new hand:"
  if player == 'Player'
    prompt "Player: #{player_cards} for a total of #{total(player_cards)}"
  elsif player == 'Dealer'
    prompt "Dealer: #{dealer_cards} for a total of #{total(dealer_cards)}"
  end
end

def play_again?
  prompt 'Would you like to play again? Type "y" for yes and "n" for no.'
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    true
  elsif answer.downcase.start_with?('n')
    false
  end
end

def busted?(cards)
  total(cards) > PLAYER_LIMIT
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > PLAYER_LIMIT
    :player_busted
  elsif dealer_total > PLAYER_LIMIT
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  case result
  when :player_busted
    prompt 'You busted! Dealer wins!'
  when :dealer_busted
    prompt 'Dealer busted! You win!'
  when :player
    prompt 'You win!'
  when :dealer
    prompt 'Dealer wins!'
  when :tie
    prompt "It's a tie!"
  end
end

def final_results(dealer_cards, player_cards)
  prompt '-----------------------------------'
  prompt 'Final Score is.........'
  prompt "Player: #{total(player_cards)}."
  prompt "Dealer: #{total(dealer_cards)}."
end

score = {'Player': 0, 'Dealer': 0}

loop do
  initialize_deck
  prompt 'Welcome to the game: Twenty One!'
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << initialize_deck.pop
    dealer_cards << initialize_deck.pop
  end

  show_hands(player_cards, dealer_cards)

  loop do
    player_turn = nil
    loop do
      prompt "Would you like to hit or stay? Type 'h' or 's'"
      player_turn = gets.chomp
      break if player_turn == 'h' || player_turn == 's'
      prompt "Please enter 'h' or 's'"
    end

    if player_turn == 'h'
      player_cards << initialize_deck.pop
      hit(player_cards, dealer_cards, 'Player')
    end

    break if busted?(player_cards) || player_turn == 's'
  end

    if busted?(player_cards)
      display_result(dealer_cards, player_cards)
      score[:Dealer] += 1
      prompt 'The score is:'
      prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
      break if score[:Player] == 5 || score[:Computer] == 5
      play_again? ? next : break
    else
      prompt "You've decided to stay at #{total(player_cards)}"
    end

    loop do
      break if total(dealer_cards) >= COMPUTER_LIMIT

      dealer_cards << initialize_deck.pop
      hit(dealer_cards, player_cards, 'Dealer')
    end

    if busted?(dealer_cards)
      display_result(dealer_cards, player_cards)
      score[:Player] += 1
      prompt 'The score is:'
      prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
      break if score[:Player] == 5 || score[:Computer] == 5
      play_again? ? next : break
    else
      prompt "Dealer decided to stay at #{total(dealer_cards)}"
    end

    if busted?(dealer_cards) || total(player_cards) > total(dealer_cards)
      score[:Player] += 1
    elsif busted?(dealer_cards) || total(dealer_cards) > total(player_cards)
      score[:Dealer] += 1
    else
    end

    final_results(dealer_cards, player_cards)
    display_result(dealer_cards, player_cards)

    prompt 'The score is:'
    prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
    
    break if score[:Player] == 5 || score[:Computer] == 5

    break unless play_again?
end

prompt 'Thanks for playing Twenty-One!'