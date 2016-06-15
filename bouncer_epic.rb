def us_age_check(age)
  if age < 18
    puts "Sorry! You're too young to do adult things!"
  elsif age < 21
    puts "Congratulations! You're old enough to vote and smoke!"
  elsif age < 25
    puts "Congratulations! You're old enough to vote, smoke, and drink!"
  else
    puts "Congratulations! You're old enough to vote, smoke, drink, and rent a car!"
  end
end

def uk_age_check(age)
  if age < 16
    puts "Sorry! You're too young to do adult things!"
  elsif age < 18
    puts "Are you with your parents?"
    print "<Please enter (Y)es or (N)o:> "
    with_parents = gets.chomp.upcase

    if with_parents == 'Y'
      puts "Congratulations! You're old enough to drink!"
    elsif with_parents == 'N'
      puts "Sorry! You're too young to do adult things!"
    else unknown_input
    end

  elsif age < 25
    puts "Congratulations! You're old enough to vote, smoke, and drink!"
  else
    puts "Congratulations! You're old enough to vote, smoke, drink and rent a car!"
  end
end

def unknown_input
  puts "Sorry? I didn't catch that."
end

loop do
  puts "Are you in the US or the UK?"
  print "<Please enter (US) or (UK), or (Q) to quit:> "
  user_country = gets.chomp.upcase
  if user_country == 'Q'
    break
  elsif user_country != 'US' && user_country != 'UK'
    unknown_input
  else

    puts "How old are you?"
    print "<Please enter your age, or (Q) to quit:> "
    user_age = gets.chomp

    if user_age == 'q'
      break
    end

    user_age = user_age.to_i
    if user_age == 0
      unknown_input
    else
      case user_country
      when 'US' then us_age_check(user_age)
      when 'UK' then uk_age_check(user_age)
      else
        unknown_input
      end
      puts
    end
  end
end
