# write a while loop that keeps requesting input from the user until the user types "STOP"

puts "Tell me something ..."

while gets.chomp != "STOP"
  puts "Tell me more"
end
