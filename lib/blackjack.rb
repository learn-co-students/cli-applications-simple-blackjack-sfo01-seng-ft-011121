def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  action = get_user_input
  while true
    if action == "s"
      return total
    elsif action == "h"
      return total + deal_card
    else
      invalid_command
      prompt_user
      action = get_user_input
    end
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
  num = initial_round
  unless num > 21
    num = hit?(num)
    display_card_total(num)
  end
  end_game(num)
end
    
