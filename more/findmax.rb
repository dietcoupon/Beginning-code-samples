def find_max(x, y, z)
  x > y ? biggest = x : biggest = y
  biggest > z ? biggest : biggest = z
  puts "The largest value is " + biggest.to_s
end

puts "Please enter three integers:"
one = gets.chomp.to_i
two = gets.chomp.to_i
three = gets.chomp.to_i
find_max(one, two, three)