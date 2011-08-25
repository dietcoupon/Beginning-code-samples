require 'rational'
require 'mathn'

def exponent(base, power)
  if power == 0
    puts "1"
  else
    result = base
    if power < 0
      power = power.abs
      negative = true
    else
      negative = false
    end
    power -= 1
    power.times do
      result *= base
    end
    if negative == false
      puts "Final result: " + result.to_s
    else
      result = 1/result
      puts "Final result: " + result.to_s
    end
  end
end

puts "What is your starting value?"
base = gets.chomp.to_i
puts "To which power would you like to raise it?"
power = gets.chomp.to_i
exponent(base, power)