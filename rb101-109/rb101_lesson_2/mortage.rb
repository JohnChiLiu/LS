# SET loan_amount
# SET monthly_interest_rate
# SET loan_duration

# monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

def calculation(duration, loan, apr)
  loan * (apr / (1 - (1 + apr)**(-duration)))
end

puts 'Welcome to my mortgage calculator.'
loop do

  loan_amount = nil
  loop do
    puts 'What is your current loan amount?'
    loan_amount = gets.chomp.to_i
    if loan_amount > 0
      break
    else
      puts 'Please put a non-zero amount'
    end
  end

  monthly_interest_rate = nil
  loop do
    puts 'What is your yearly interest rate? I.E. 4% = '4''
    monthly_interest_rate = gets.chomp.to_f / 12 / 100

    if monthly_interest_rate > 0
      break
    else
      puts 'Please use a non zero number'
    end
  end

  duration = nil
  loop do
    puts 'what is your loan duration in months? I.E. 2 years = 24 months'
    duration = gets.chomp.to_i

    if duration <= 0
      puts 'Please put a non-zero number'
    else
      break
    end
  end

  puts 'Here is your monthly payment: $#{calculation(duration, loan_amount, monthly_interest_rate).round(2)}'
  puts 'Would you like to use this again? (Y or N)'

  answer = nil
  loop do
    answer = gets.chomp.downcase
    if answer == 'y'
    elsif answer == 'n'
      break
    else
      puts 'Please give a valid response.'
    end
  end
  if answer == 'n'
    break
  end
end

puts 'Thanks for using my mortgage calculator!'

