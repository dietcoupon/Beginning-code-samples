def randomize(array)
  output = []
  count = array.length
  while count > 0
    current = rand(count)
    output.push(array[current])
    array.delete(array[current])
    count -= 1
  end
  output
end