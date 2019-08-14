SUITS = %w(h d s c)
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

PLAYER_LIMIT = 21
COMPUTER_LIMIT = 17

WINNING_SCORE = 3

def prompt(msg)
  puts "=> #{msg}"
end

def clear_system
  system('clear')
end

def display_rules
  prompt 'Game Rules'
  prompt '-------------'
  prompt "The goal of Twenty-One is to try to get as close to 21 as possible, without going over. If you go over 21, it's a 'bust' and you lose."
  prompt 'The numbers 2 through 10 are worth their face value. The jack, queen, and king are each worth 10, and the ace can be worth 1 or 11.'
  prompt 'The ace could be worth 1 or 11, depending on your current total.'
  prompt "The first player to reach #{WINNING_SCORE} points is the winner."
end

def initialize_deck
  new_deck = []
  total_data = VALUES.product(SUITS).shuffle
  total_data.each do |card|
    new_deck << card.join
  end
  new_deck
end

def hit?(word = 'h', cards)
  if word == 'h'
    cards << initialize_deck.pop
      prompt "You chose to hit!"
      prompt "Your cards are now: #{cards}"
      prompt "Your total is now: #{total(cards)}"
  end
end

def deal_hands(player_cards, dealer_cards, deck)
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end
end

def total(cards)
  values = cards.map { |card| card[0..1] }
    sum = 0
    values.each do |value|
    sum = if value[0] == 'A'
            sum += 11
          elsif value[0].to_i == 0 # J, Q, K
            sum += 10
          else
            sum += value.to_i
          end
  end

  # correct for Aces
  values.select { |value| value[0] == 'A' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def initial_hand(dealer_cards, player_cards)
  prompt "Dealer has #{dealer_cards[0]} and another card."
  prompt "Player has #{player_cards[0]} and #{player_cards[1]} for a total of #{total(player_cards)}."
end

def display_hands(player_cards, dealer_cards)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "=============="
end

def busted?(cards)
  total(cards) > PLAYER_LIMIT
end

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
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  response = nil
  puts "-------------"
  prompt "Do you want to play again? (y or n)"
  loop do 
    response = gets.chomp.downcase
    break if valid_play_again_answer?(response)
    prompt 'Please choose a correct value. (y or n)'
  end
  if valid_play_again_answer?(response)
    true
  else
    false
  end
end

def valid_play_again_answer?(word) 
  ['y', 'n'].include?(word)
end

def match_ended?(score) 
  if score[:Player] >= 3 || score[:Dealer] >= 3
    true
  else
    false
  end
end

score = {'Player': 0, 'Dealer': 0}
prompt 'Welcome to Twenty-One!'
display_rules

loop do
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  sleep(1.9)
  clear_system
  deal_hands(player_cards, dealer_cards, deck)

  initial_hand(dealer_cards, player_cards)

  if total(player_cards) == 21 
    prompt "You've won!"
    score[:Player] += 1
    prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
    break if match_ended?(score)
    play_again? ? next : break
  end

  loop do
    player_turn = nil
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    hit?(player_turn, player_cards)

    break if player_turn == 's' || busted?(player_cards) || total(player_cards) == 21
  end

  if total(player_cards) == 21
    prompt "You've won!"
    score[:Player] += 1
    prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
    break if match_ended?(score)
    play_again? ? next : break
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    display_hands(player_cards, dealer_cards)
    score[:Dealer] += 1
    prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
    break if match_ended?(score)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer's turn
  prompt "Here's the Dealer turn:"

  loop do
    break if total(dealer_cards) >= COMPUTER_LIMIT
    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_cards)
    display_result(dealer_cards, player_cards)
    display_hands(player_cards, dealer_cards)
    score[:Player] += 1
    prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
    break if match_ended?(score)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  # both player and dealer stays - compare cards!
  display_hands(player_cards, dealer_cards)

  display_result(dealer_cards, player_cards)
  if total(player_cards) > total(dealer_cards)
    score[:Player] += 1
  elsif total(dealer_cards) > total(player_cards)
    score[:Dealer] += 1
  else
  end

  prompt "Player: #{score[:Player]} | Dealer: #{score[:Dealer]}"
  break if match_ended?(score)
  break unless play_again?
end

prompt "Thank you for playing Twenty-One! Good bye!"