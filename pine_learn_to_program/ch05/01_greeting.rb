# Full name greeting: ask for first name, middle, name and last name. Greet the user using their full name.

puts "first name"
first_name = gets.chomp
puts "middle name"
middle_name = gets.chomp
puts "last name"
last_name = gets.chomp

greeting = "Hello, #{first_name} #{middle_name} #{last_name}!"

puts greeting
