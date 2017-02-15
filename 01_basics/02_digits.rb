number = 4631
first_digit = 4631 / 1000
second_digit = (4631 % 1000) / 100
third_digit = ((4631 % 1000) % 100) / 10
fourth_digit = 4631 % 2

puts "number: " + number.to_s
puts first_digit
puts second_digit
puts third_digit
puts fourth_digit
