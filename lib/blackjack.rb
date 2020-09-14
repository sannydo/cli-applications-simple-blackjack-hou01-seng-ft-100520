def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(sum)
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
   sum = deal_card + deal_card
   display_card_total(sum)
   sum
end




def hit?(x)
prompt_user
choice = get_user_input
if choice == "h"
  x += deal_card
elsif choice == "s"
  return x
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
  hand = hit?(initial_round)
  until hand > 21
    display_card_total(hand)
    hand += hit?(deal_card)
    end
    display_card_total(hand)
    end_game(hand)
end
    