def shuffle
  shuffled = []
  not_shuffled = []
  count = 0
  
  puts 'Please enter each word you would like to shuffle into a new arrangement.'
  puts 'Hitting \'Enter\' on an empty line will return the final list.'
  
  new_word = gets.chomp
  while new_word != ''
    not_shuffled.push new_word
    count = count + 1
    new_word = gets.chomp
  end
  while not not_shuffled.empty?
    lucky = rand(count.to_i)
    current = not_shuffled[lucky.to_i]
    shuffled.push current
    not_shuffled.delete_at(lucky.to_i)
    not_shuffled.compact!
    count = count - 1
  end
  puts shuffled
end

output = shuffle