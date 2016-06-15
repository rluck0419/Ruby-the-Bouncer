# possible outcomes and counters for player 1's W-L-T
choices = ["ROCK", "PAPER", "SCISSORS"]
wins = 0
losses = 0
ties = 0

# play the game 1000 times & record wins-losses-ties
1000.times do
  computer_choice1 = choices.sample
  computer_choice2 = choices.sample

  if computer_choice1 == "ROCK"
    if computer_choice2 == "ROCK"
      ties += 1
    elsif computer_choice2 == "PAPER"
      losses += 1
    else # player 2 chooses "SCISSORS"
      wins += 1
    end
  elsif computer_choice1 == "PAPER"
    if computer_choice2 == "PAPER"
      ties += 1
    elsif computer_choice2 == "SCISSORS"
      losses += 1
    else # player 2 chooses "ROCK"
      wins += 1
    end
  else # player 1 chooses "SCISSORS"
    if computer_choice2 == "SCISSORS"
      ties += 1
    elsif computer_choice2 == "ROCK"
      losses += 1
    else # player 2 chooses "PAPER"
      wins += 1
    end
  end
end

# calculate player 2's W-L-T
wins2 = 1000 - wins - ties
losses2 = 1000 - losses - ties
ties2 = 1000 - wins - losses

# show user the results
puts "1000 matches played! W-L-T"
puts
puts "Computer 1: #{wins}-#{losses}-#{ties}"
puts "Computer 2: #{wins2}-#{losses2}-#{ties2}"
puts
puts "Computer 1 wins!" if wins > wins2
puts "Computer 2 wins!" if wins < wins2
puts "Wow! 1000 games later and it's a tie!" if wins == wins2
