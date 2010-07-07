def get_year
  currently = Time.now
  now_year = currently.year
  puts "In which year was the subject born?"
  year = gets.chomp.to_i
  if year < 1970
    puts "This program can only handle years from 1970 and onwards. Sorry!"
    year = get_year
  elsif year > now_year
    puts "Make sure the subject wasn't born in the future."
    year = get_year
  elsif year = now_year
    puts "They couldn't possibly have had a birthday yet...no spanking for them."
    exit
  end
  year
end

def is_leap_year(year)
  if year%100 == 0
    if year%400 == 0
      leap_year = true
    else
      leap_year = false
    end
  elsif year%4 == 0
    leap_year = true
  else
    leap_year = false
  end
  leap_year
end

def get_month
  puts "What is their birth month (Jan = 1; Dec = 12)?"
  month = gets.chomp.to_i
  if month < 1 || month > 12 || month == false
    puts "It needs to be a number between 1 and 12!"
    month = get_month
  end
  month
end

def month_eval(month, leap_year)
  big_months = [1, 3, 5, 7, 8, 10, 12]
  small_months = [4, 6, 9, 11]
  big = big_months.include?(month)
  small = small_months.include?(month)
  if big == true
    date = get_day_big
  elsif small == true
    date = get_day_small
  else
    date = get_day_feb(leap_year)
  end
end

def get_day_big
  puts "What is the birth date?"
  date = gets.chomp.to_i
  if date < 1 || date > 31 || date == false
    puts "It needs to be a number between 1 and 31."
    date = get_day_big
  end
  date
end

def get_day_small
  puts "What is the birth date?"
  date = gets.chomp.to_i
  if date < 1 || date > 30 || date == false
    puts "It needs to be a number between 1 and 30."
    date = get_day_small
  end
  date
end

def get_day_feb(leap_year)
  puts "What is the birth date?"
  date = gets.chomp.to_i
  if leap_year == true and (date > 1 || date < 30)
    date
  elsif leap_year == true and (date < 1 || date > 29)
    puts "It needs to be a number between 1 and 29."
    date = get_day_feb(leap_year)
  elsif date < 1 || date > 28 || date == false
    puts "It needs to be a number between 1 and 28."
    date = get_day_feb(leap_year)
  end
  date
end

year = get_year.to_i
leap_year = is_leap_year(year)
month = get_month.to_i
date = month_eval(month, leap_year).to_i
current = Time.now
birthdate = Time.mktime(year, month, date)
age = current - birthdate
years = age/31536000
puts years.to_i.to_s + " spanks for them!"