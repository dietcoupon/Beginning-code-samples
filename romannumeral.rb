def roman number
  m = number/1000
  print "M"*m
  remainder = number%1000
  d = remainder/500
  print "D"*d
  remainder = remainder%500
  if remainder >= 400
    print "CD"
    remainder = remainder-400
  end
  c = remainder/100
  print "C"*c
  remainder = remainder%100
  if remainder >= 90
    print "XC"
    remainder = remainder-90
  end
  l = remainder/50
  print "L"*l
  remainder = remainder%50
  if remainder >= 40
    print "XL"
    remainder = remainder-40
  end
  x = remainder/10
  print "X"*x
  remainder = remainder%10
  if remainder >= 9
    print "IX"
    remainder = remainder-9
  end
  v = remainder/5
  print "V"*v
  remainder = remainder%5
  if remainder == 4
    print "IV"
    remainder = remainder-4
  end
  print "I"*remainder
  puts
end

puts "Enter the number to be transformed into a Roman numeral:"
number = gets.chomp.to_i
puts "The numeral is:"
roman(number)