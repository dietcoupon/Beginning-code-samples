def string_to_number(string)
  output = 0
  string.each_char do |current|
    value = current.ord
    if value < 48 || value > 57
      return false
    else
      output *= 10
      output += value-48
    end
  end
  output
end