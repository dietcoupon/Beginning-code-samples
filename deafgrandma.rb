puts"WHAT IS IT, SONNY?"
talk = gets.chomp


while talk != "BYE"
  if talk == talk.upcase
    year = rand(20) + 1930
   puts "NO, NOT SINCE " + year.to_s
    talk = gets.chomp
  else
    puts "HUH?! SPEAK UP, SONNY!"
    talk = gets.chomp
  end
  if talk == "BYE"
    puts "WHAT'S THAT?"
    talk = gets.chomp
    if talk == "BYE"
      puts "NO I DON'T THINK I HEARD YOU"
      talk = gets.chomp
      if talk == "BYE"
        puts "OKAY"
      end
    end
  end
end
