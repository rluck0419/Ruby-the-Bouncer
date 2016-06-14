# bouncer.rb
#
# - write a method "check_age" that runs every time the script is run
# - ask for the user's age
# - tell the user what it can do based on age:
#   - if the user is under 18, the user can do nothing
#   - if the user is over 18, the user can vote
#   - if the user is over 18, the user can smoke
#   - if the user is over 21, the user can drink
#   - if the user is over 25, the user can rent a car

puts "How old are you?"
print "<Please enter your age:> "
user_age = gets.chomp.to_i

if user_age < 18
  puts "Sorry! You're too young to do anything."
elsif user_age < 21
  puts "Congradulations! You're old enough to vote and smoke!"
elsif user_age < 25
  puts "Congradulations! You're old enough to vote, smoke, and drink!"
else
  puts "Congradulations! You're old enough to vote, smoke, drink, and rent a car."
end
