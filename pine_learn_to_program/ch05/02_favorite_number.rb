# ask for the user's favorite number, then present him with a bigger number

puts "What is your favorite number?"
number = gets.chomp.to_i
better_number = number + 1
puts "Why not prefer #{better_number}? It's bigger!"
