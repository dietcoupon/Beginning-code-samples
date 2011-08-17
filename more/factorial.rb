def factorial(number)
  if number <= 0
    return "ZOMG"
  elsif number == 1
    return 1
  else
    number * factorial(number-1)
  end
end