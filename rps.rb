# ask player 1 for their choice of "rock", "paper", or "scissors"
# randomly select the computer's choice
# Output of results: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
#
# outcomes
#   rock beats scissors
#   paper beats rock
#   scissors beats paper

loop do
  puts "Rock, Paper, Scissors, Shoot!"
  print "<Enter (r)ock, (p)aper, or (s)cissors:> "
  $player_choice = gets.chomp
  if $player_choice == "r"
    $player_choice = "ROCK"
    break
  elsif $player_choice == "p"
    $player_choice = "PAPER"
    break
  elsif $player_choice == "s"
    $player_choice = "SCISSORS"
    break
  else
    puts "Sorry? Let's try that again..."
    puts
  end
end

computer_choice = rand(1..100)
if computer_choice < 34
  computer_choice = "ROCK"
elsif computer_choice < 67
  computer_choice = "PAPER"
else
  computer_choice = "SCISSORS"
end

if $player_choice == "ROCK"
  # tie
  if computer_choice == "ROCK"
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- TIE"
  #lose
  elsif computer_choice == "PAPER"
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- COMPUTER WINS"
  #win
  else
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- PLAYER WINS"
  end
elsif $player_choice == "PAPER"
  #tie
  if computer_choice == "PAPER"
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- TIE"
  #lose
  elsif computer_choice == "SCISSORS"
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- COMPUTER WINS"
  #win
  else
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- PLAYER WINS"
  end
else #player choice is "SCISSORS"
  #tie
  if computer_choice == "SCISSORS"
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- TIE"
  #lose
  elsif computer_choice == "ROCK"
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- COMPUTER WINS"
  #win
  else
    puts "player: #{$player_choice} vs. computer: #{computer_choice} ----- PLAYER WINS"
  end
end
