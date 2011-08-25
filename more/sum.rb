def find_sum(value)
  array = [1,2,3,4,5]
  refactored = array.combination(2).to_a
  x = 0
  refactored.length.times do
    current = refactored[x]
    if current[0] + current[1] == value
      puts "Match found: ", current
      break
    else
      x += 1
    end
  end
end

puts "And the sum will be?"
value = gets.chomp.to_i
find_sum(value)