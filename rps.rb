# ask player 1 for their choice of "rock", "paper", or "scissors"
# randomly select the computer's choice
# Output of results: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
#
# outcomes
#   rock beats scissors
#   paper beats rock
#   scissors beats paper

choices = ["ROCK", "PAPER", "SCISSORS"]
wins = 0
losses = 0
ties = 0

1000.times do
  computer_choice1 = choices.sample
  computer_choice2 = choices.sample

  if computer_choice1 == "ROCK"
    # tie
    if computer_choice2 == "ROCK"
      ties += 1
    #lose
    elsif computer_choice2 == "PAPER"
      losses += 1
    #win
    else
      wins += 1
    end
  elsif computer_choice1 == "PAPER"
    #tie
    if computer_choice2 == "PAPER"
      ties += 1
    #lose
    elsif computer_choice2 == "SCISSORS"
      losses += 1
    #win
    else
      wins += 1
    end
  else #player choice is "SCISSORS"
    #tie
    if computer_choice2 == "SCISSORS"
      ties += 1
    #lose
    elsif computer_choice2 == "ROCK"
      losses += 1
    #win
    else
      wins += 1
    end
  end
end

wins2 = 1000 - wins - ties
losses2 = 1000 - losses - ties
ties2 = 1000 - wins - losses

puts "1000 matches played! W-L-T"
puts "Computer 1: #{wins}-#{losses}-#{ties}"
puts "Computer 2: #{wins2}-#{losses2}-#{ties2}"
