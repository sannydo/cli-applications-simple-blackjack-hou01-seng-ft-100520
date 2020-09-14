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
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   sum = deal_card + deal_card
   display_card_total(sum)
   sum
end



def hit? (current_card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if get_user_input == 's' 
    current_card_total
  elsif get_user_input == 'h' current_card_total
    deal_card + current_card_total
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
sleep 0.75
card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end

runner 
    