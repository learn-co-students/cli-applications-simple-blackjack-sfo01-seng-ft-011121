def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  deal_card = rand(1..11)
  return deal_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return card_total
  elsif user_input == "h"
    card_total += deal_card
    return card_total
  else
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
