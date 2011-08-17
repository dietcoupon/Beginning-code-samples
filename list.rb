def parse(string)
  beginning = string.index("(")+1
  ending = string.index(")")-1
  working_string = string[beginning..ending]
  working_string.split(/,\s*/)
end