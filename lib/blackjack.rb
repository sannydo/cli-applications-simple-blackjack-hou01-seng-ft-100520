def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   card_one = deal_card
   card_two = deal_card
   card_total = card_one + card_two
   display_card_total(card_total)
   return card_total
end



def hit? (card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    card_total += deal_card
  elsif user_input == 's'
    card_total
  else
    invalid_command
  end
end




def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end


#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
welcome
card_total = initial_round
  until hand > 21
    display_card_total(hand)
    hand += hit?(deal_card)
    end
    display_card_total(hand)
    end_game(hand)
end
runner
    