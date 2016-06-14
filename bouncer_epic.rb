# bouncer_epic.rb
#
# - ask for the user's country (US or UK)
# - ask for the user's age
#   - write a method "check_age" that runs every time the script is run
# - tell the user what it can do based on age:
#   - in the US:
#     - if the user is under 18, the user can do nothing
#     - if the user is over 18, the user can vote
#     - if the user is over 18, the user can smoke
#     - if the user is over 21, the user can drink
#     - if the user is over 25, the user can rent a car
#   - in the UK:
#     - if the user is under 16, the user can do nothing
#     - if the user is 16 or 17, ask the user if their parents are there
#       - if the answer is yes, the user can drink
#       - if the answer is no, the user can do nothing
#     - if the user is over 18, the user can drink
#     - if the user is over 18, the user can vote
#     - if the user is over 18, the user can smoke
#     - if the user is over 25, the user can rent a car

puts "What country are you from?"
print "<Please enter a country: US or UK:> "

puts "How old are you?"
print "<Please enter your age:> "
user_age = gets.chomp.to_i

# if user_age < 18
#   puts "Sorry! You're too young to do adult things."
# elsif user_age < 21
#   puts "Congratulations! You're old enough to vote and smoke!"
# elsif user_age < 25
#   puts "Congratulations! You're old enough to vote, smoke, and drink!"
# else
#   puts "Congratulations! You're old enough to vote, smoke, drink, and rent a car."
# end
#   # creates spacing before restarting the loop
#   puts
# end
