sorted = []
not_sorted = []

def sortlists(list1, list2)
  while not list1.empty?
    smallest = list1[0]
    position = 0
    list1.each_with_index do |element, index|
      smallest.downcase <=> element.downcase
      if smallest.downcase > element.downcase
        smallest = element
        position = index
      end
    end
    list2.push smallest
    list1.delete_at(position.to_i)
  end
end

puts 'Please enter each word you would like alphabetized.'
puts 'Hitting \'Enter\' on an empty line will return the final list.'
new_word = gets.chomp
while new_word != ''
  not_sorted.push new_word
  new_word = gets.chomp
end
sortlists(not_sorted, sorted)
puts sorted
