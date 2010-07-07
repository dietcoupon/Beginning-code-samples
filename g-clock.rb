def grandfather_clock(ringer,&chime)
  current_hour = Time.new.hour
  if current_hour == 0
    current_hour = 12
  elsif current_hour > 12
    current_hour = current_hour - 12
  end
  while current_hour.to_i > 0
    chime.call
    current_hour = current_hour.to_i - 1
  end
end

grandfather_clock 'dong' do
  puts 'DONG'
end