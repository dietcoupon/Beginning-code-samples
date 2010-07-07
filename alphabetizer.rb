words = []

puts 'Please enter each word you would like alphabetized.'
puts 'Hitting \'Enter\' on an empty line will return the final list.'
new_word = gets.chomp
while new_word != ''
  words.push new_word
  new_word = gets.chomp
end
puts words.sort_by { |x| x.downcase }